/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.user;

import dao.UserDAO;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author User
 */
@WebServlet(name = "ValuationRequestServlet", urlPatterns = {"/ValuationRequestServlet"})
public class ValuationRequestServlet extends HttpServlet {

    private static final String ERROR_PAGE = "/WEB-INF/jsp/index.jsp";
    private static final String HOME_PAGE = "home.jsp";

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            String url = ERROR_PAGE; 
            boolean isMultipart = ServletFileUpload.isMultipartContent(request);
            try {
                if (!isMultipart) {
                } else {
                    FileItemFactory factory = new DiskFileItemFactory();
                    ServletFileUpload upload = new ServletFileUpload(factory);
                    List items = null;
                    try {
                        items = upload.parseRequest(request);
                    } catch (FileUploadException e) {
                        e.printStackTrace();
                    }
                    Iterator iter = items.iterator();
                    Hashtable params = new Hashtable();
                    String fileName = null;
                    while (iter.hasNext()) {
                        FileItem item = (FileItem) iter.next();
                        if (item.isFormField()) {
                            params.put(item.getFieldName(), item.getString());
                        } else {
                            try {
                                String itemName = item.getName();
                                fileName = itemName.substring(itemName.lastIndexOf("\\") + 1);

                                // Tạo thư mục images nếu chưa tồn tại
                                File imageDir = new File(getServletContext().getRealPath("/") + "images");
                                if (!imageDir.exists()) {
                                    imageDir.mkdirs();
                                }

                                String RealPath = getServletContext().getRealPath("/") + "images\\" + fileName;
                                File savedFile = new File(RealPath);
                                item.write(savedFile);
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        }
                    }//end while
                    //get Parameter
                    
                    String name = (String) params.get("name");
                    String email = (String) params.get("email");
                    String phone = (String) params.get("phone");
                    String communication = (String) params.get("communication");
                    String photos = "images/" + fileName;
                    String description = (String) params.get("description");
                    try {
                        UserDAO dao = new UserDAO();
                        boolean result = dao.sendValuationRequest(name, email, phone, communication, photos, "U0");
                        if (result) {
                            url = HOME_PAGE;
                        }
                    } catch (Exception ex) {
                        ex.getMessage();
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                RequestDispatcher dist = request.getRequestDispatcher(url);
                dist.forward(request, response);
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
