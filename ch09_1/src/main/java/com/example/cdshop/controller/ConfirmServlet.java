package com.example.cdshop.controller;

import com.example.cdshop.model.Cart;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/confirm")
public class ConfirmServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");

        // Lấy phương thức thanh toán
        String paymentMethod = request.getParameter("paymentMethod");

        // Gắn vào request để hiển thị ở thanks.jsp
        request.setAttribute("cart", cart);
        request.setAttribute("paymentMethod", paymentMethod);

        // Sau khi checkout xong thì clear cart
        session.removeAttribute("cart");

        // Chuyển sang trang cảm ơn
        request.getRequestDispatcher("/thanks.jsp").forward(request, response);
    }
}
