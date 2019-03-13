/*
 * Course: PROG 32758
 * Instructor: Wendi Jollymore
 * Date Created: 13-Oct-2018
 * Author: Mariel Martinez
 */

package ca.sheridancollege.marmarie.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import prog24178.labs.objects.CookieInventoryItem;

/**
 *
 * @author Mariel Martinez (marmarie)
 */
public class OrderCookies extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
        String errors = ""; // Describes errors
        
        // Get the ID and quantity
        String txtId = request.getParameter("cookieType");
        String txtQuantity = request.getParameter("quantity");
        
        if (txtId == null || txtId.trim().isEmpty()) {
            throw new IllegalArgumentException("Cookie field must have a value.");
        }
        if (txtQuantity == null || txtQuantity.trim().isEmpty()) {
            throw new IllegalArgumentException("Quantity field must have a value.");
        }
        
        // Parse fields for numbers
        int id = Integer.parseInt(txtId);
        int quantity = Integer.parseInt(txtQuantity);
        
        // Construct a CookieInventoryItem
        CookieInventoryItem inventory = new CookieInventoryItem(id, quantity);
        
        // Save inventory in request scope and forward
        request.setAttribute("inventory", inventory);
        request.getRequestDispatcher("confirmOrder.jsp")
                .forward(request, response);
        
    } 

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }

    /** 
     * Handles the HTTP <code>GET</code> method.
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

}
