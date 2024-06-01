/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.staff;

import dao.UserDAOImpl;
import entity.valuation.Valuation;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
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
@WebServlet(name = "InsertJewelryController", urlPatterns = {"/InsertJewelryController"})
public class InsertJewelryController extends HttpServlet {

    private static final String ERROR_PAGE = "/WEB-INF/jsp/index.jsp";
    private static final String STAFF_PAGE = "/staff/staff.jsp";

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
            String category = request.getParameter("category");
            String jewelryName = request.getParameter("jewelryName");
            String artist = request.getParameter("artist");
            String circa = request.getParameter("circa");
            String material = request.getParameter("material");
            String dial = request.getParameter("dial");
            String braceletMaterial = request.getParameter("braceletMaterial");
            String caseDimensions = request.getParameter("caseDimensions");
            String braceletSize = request.getParameter("braceletSize");
            String serialNumber = request.getParameter("serialNumber");
            String referenceNumber = request.getParameter("referenceNumber");
            String caliber = request.getParameter("caliber");
            String movement = request.getParameter("movement");
            String condition = request.getParameter("condition");
            String metal = request.getParameter("metal");
            String gemstones = request.getParameter("gemstones");
            String measurements = request.getParameter("measurements");
            String weight = request.getParameter("weight");
            String stamped = request.getParameter("stamped");
            String ringSize = request.getParameter("ringSize");
            String minPrice = request.getParameter("minPrice");
            String maxPrice = request.getParameter("maxPrice");
            String valuationID = request.getParameter("valuationID");
            UserDAOImpl dao = new UserDAOImpl();
            try {
                boolean result = dao.insertJewelry(category, jewelryName, artist, circa, material, dial, braceletMaterial, caseDimensions, braceletSize, serialNumber, referenceNumber, caliber, movement, condition, metal, gemstones, measurements, weight, stamped, ringSize, minPrice, maxPrice, valuationID);
                if (result) {
                    url = STAFF_PAGE;
                }
            } catch (Exception ex) {
                ex.printStackTrace(); // Print the stack trace for debugging
                // Handle the exception appropriately, such as logging it
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
