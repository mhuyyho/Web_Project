package com.example.cdshop.controller;

import com.example.cdshop.model.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.math.BigDecimal;

@WebServlet("/cart")
public class CartServlet extends HttpServlet {
    private CD findCD(String code) {
        if (code.equals("8601")) {
            return new CD("8601", "86 (the band) - True Life Songs and Pictures", new BigDecimal("14.95"));
        } else if (code.equals("pf01")) {
            return new CD("pf01", "Paddlefoot - The first CD", new BigDecimal("12.95"));
        } else if (code.equals("pf02")) {
            return new CD("pf02", "Paddlefoot - The second CD", new BigDecimal("14.95"));
        } else if (code.equals("jr01")) {
            return new CD("jr01", "Joe Rut - Genuine Wood Grained Finish", new BigDecimal("14.95"));
        }
        return null;
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Redirect GET về index.jsp
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart == null) {
            cart = new Cart();
        }

        String code = request.getParameter("code");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        CD cd = findCD(code);

        if (cd != null && quantity > 0) {
            cart.addItem(new CartItem(cd, quantity));
        }

        session.setAttribute("cart", cart);
        RequestDispatcher dispatcher = request.getRequestDispatcher("cart.jsp");
        dispatcher.forward(request, response);
    }
}
