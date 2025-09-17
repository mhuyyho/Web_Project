package com.mycompany.chap7.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mycompany.chap7.model.CD;
import com.mycompany.chap7.model.Cart;
import com.mycompany.chap7.model.LineItem;
import com.mycompany.chap7.util.CDUtil;

@WebServlet(name = "CartServlet", urlPatterns = {"/cart"})
public class CartServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "cart";  // default action
        }

        // perform action and set URL to appropriate page
        String url = "/cart.jsp";
        if (action.equals("shop")) {
            url = "/catalog";  // redirect to the catalog page
        } else if (action.equals("cart")) {
            url = "/cart.jsp";  // show the cart
        } else if (action.equals("checkout")) {
            url = "/checkout.jsp";
        }

        getServletContext().getRequestDispatcher(url).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        
        // Get the cart from session or create a new one if it doesn't exist
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart == null) {
            cart = new Cart();
        }
        
        String action = request.getParameter("action");
        if (action == null) {
            action = "cart";  // default action
        }
        
        if (action.equals("add")) {
            // Get the product and add it to the cart
            String productCode = request.getParameter("productCode");
            if (productCode != null) {
                CD cd = CDUtil.getCD(productCode);
                LineItem lineItem = new LineItem(cd, 1);
                cart.addItem(lineItem);
            }
        } else if (action.equals("update")) {
            // Update the quantity for a specific item
            String productCode = request.getParameter("productCode");
            String quantityString = request.getParameter("quantity");
            
            int quantity = 1;
            try {
                quantity = Integer.parseInt(quantityString);
                if (quantity < 1) {
                    quantity = 1;
                }
            } catch (NumberFormatException e) {
                // ignore
            }
            
            if (productCode != null) {
                cart.updateItem(productCode, quantity);
            }
        } else if (action.equals("remove")) {
            // Remove the specified item from the cart
            String productCode = request.getParameter("productCode");
            if (productCode != null) {
                cart.removeItem(productCode);
            }
        }
        
        // Save the cart back to the session
        session.setAttribute("cart", cart);
        
        String url = "/cart.jsp";
        if (action.equals("checkout")) {
            url = "/checkout.jsp";
        }
        
        getServletContext().getRequestDispatcher(url).forward(request, response);
    }
}