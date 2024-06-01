/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.staff;

import dao.UserDAOImpl;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author User
 */
@WebServlet(name = "RequestShipmentController", urlPatterns = {"/RequestShipmentController"})
public class RequestShipmentController extends HttpServlet {

    private static final String ERROR_PAGE = "/WEB-INF/jsp/index.jsp";
    private static final String STAFF_PAGE = "ProcessValuationRequest";

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
            String valuationID = request.getParameter("valuationID");
            String name = request.getParameter("name");
            String content = "<div class=\"container\">\n"
                    + "<h1>Dear " + name + ",</h1>\n"
                    + "<p>We appreciate your recent purchase of jewelry from our store. To ensure a smooth delivery process, please follow these instructions:</p>\n"
                    + "<ul>\n"
                    + "<li>\n"
                    + "<strong>Ship To:</strong>\n"
                    + "<br>[Your Company Name]\n"
                    + "<br>[Your Address]\n"
                    + "<br>[City, State, ZIP Code]\n"
                    + "</li>\n"
                    + "<li>\n"
                    + "<strong>Shipping Instructions:</strong>\n"
                    + "<br>- Securely package the jewelry in a padded box or envelope.\n"
                    + "<br>- Use bubble wrap or tissue paper for protection.\n"
                    + "<br>- Choose your preferred shipping method.\n"
                    + "<br>- Insure valuable items and obtain a tracking number.\n"
                    + "<br>- Include a copy of your purchase receipt or invoice.\n"
                    + "<br>- Provide your phone number and email address.\n"
                    + "<br>- We'll cover the shipping costs if applicable.\n"
                    + "</li>\n"
                    + "</ul>\n"
                    + "<p>Once packaged, no need to reply to this email. We'll keep you updated on the delivery status. Thank you for choosing our store.</p>\n"
                    + "<p>Best regards,<br>\n"
                    + "[Your Name]<br>\n"
                    + "[Your Title]<br>\n"
                    + "[Your Company Name]<br>\n"
                    + "[Contact Information]</p>\n"
                    + "</div>";

            try {
                UserDAOImpl dao = new UserDAOImpl();
                boolean result = dao.requestShipment(valuationID, content);
                if (result) {
                    url = STAFF_PAGE;
                }
            } catch (Exception ex) {
                ex.getMessage();
            } finally {
                response.sendRedirect(url);
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
