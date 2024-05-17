/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.user;

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
@WebServlet(name = "MainController", urlPatterns = {"/MainController"})
public class MainController extends HttpServlet {

    private static final String LOGINCONTROLLER = "LoginController";
    private static final String LOGOUTCONTROLLER = "logout";
    private static final String SIGNUPCONTROLLER = "signup";
    private static final String USERINFCONTROLLER = "getUserInformation";
    private static final String UPDATEUSERCONTROLLER = "updateUser";
    private static final String ADDRESSCONTROLLER = "getAddresses";
    private static final String CHECKEXISTEDSTORECONTROLLER = "checkExistedStore";
    private static final String ERRORPAGE = "error.html";

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
            String action = request.getParameter("action");
            String url = null;
            switch (action) {
                case "Log in":
                    url = LOGINCONTROLLER;
                    break;
                case "Log out":
                    url = LOGOUTCONTROLLER;
                    break;
                case "Register":
                    url = SIGNUPCONTROLLER;
                    break;
                case "Profile":
                    url = USERINFCONTROLLER;
                    break;
                case "Address":
                    url = ADDRESSCONTROLLER;
                    break;
                case "Update":
                    url = UPDATEUSERCONTROLLER;
                    break;
                case "Seller Center":
                    url = CHECKEXISTEDSTORECONTROLLER;
                    break;
                default:
                    url = ERRORPAGE;
                    break;
            }
            RequestDispatcher dist = request.getRequestDispatcher(url);
            dist.forward(request, response);
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
