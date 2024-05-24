/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.user.authentication;

import dao.UserDAOImpl;
import dto.UserDTO;
import utils.RoleConstants;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/**
 *
 * @author User
 */
@WebServlet(name = "LoginController", urlPatterns = {"/LoginController"})
public class LoginController extends HttpServlet {

    private static final String ADMIN_PAGE = "/admin/admin.jsp";
    private static final String STAFF_PAGE = "/staff/staff.jsp";
    private static final String MANAGER_PAGE = "/manager/manager.jsp";
    private static final String HOME_PAGE = "home.jsp";
    private static final String ERROR_PAGE = "/WEB-INF/jsp/index.jsp";
    private static final String REDIRECT_PAGE = "redirect.jsp";

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
            response.setContentType("text/html;charset=UTF-8");
            String username = request.getParameter("email");
            String password = request.getParameter("password");
            String url = ERROR_PAGE;

            UserDAOImpl dao = new UserDAOImpl();

            try {
                UserDTO user = dao.checkLogin(username, password);
                if (user != null) {
                    url = determinePageByRole(user.getRole());
                    initializeSession(request, user);
                }
            } catch (Exception ex) {
                log("LoginController Exception: " + ex.getMessage(), ex);
            } finally {
                RequestDispatcher dispatcher = request.getRequestDispatcher(REDIRECT_PAGE);
                request.setAttribute("targetUrl", url);
                dispatcher.forward(request, response);
            }
        }
    }

    private String determinePageByRole(String role) {
        switch (role) {
            case RoleConstants.ADMIN:
                return ADMIN_PAGE;
            case RoleConstants.MEMBER:
                return HOME_PAGE;
            case RoleConstants.STAFF:
                return STAFF_PAGE;
            case RoleConstants.MANAGER:
                return MANAGER_PAGE;
            default:
                return ERROR_PAGE;
        }
    }

    private void initializeSession(HttpServletRequest request, UserDTO user) {
        HttpSession session = request.getSession(true);
        session.setAttribute("USERNAME", user.getUsername());
        session.setAttribute("ROLE", user.getRole());
    }

    @Override
    public String getServletInfo() {
        return "LoginController handles user authentication and role-based redirection.";
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
}
