package com.example.cdshop.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/checkout")
public class CheckoutServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Lấy cart từ session
        HttpSession session = request.getSession();
        Object cart = session.getAttribute("cart");

        // Gửi cart sang checkout.jsp
        request.setAttribute("cart", cart);

        // Forward sang trang checkout
        RequestDispatcher dispatcher = request.getRequestDispatcher("checkout.jsp");
        dispatcher.forward(request, response);
    }

    // ✅ Nếu người dùng gọi GET trực tiếp -> chuyển sang doPost
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}
