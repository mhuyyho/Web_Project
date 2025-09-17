package com.shop.servlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.net.URLEncoder;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.List;

public class CartServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String action = req.getParameter("action");
        String id = req.getParameter("id");

        // Lấy giỏ hàng từ Cookie
        String cartRaw = null;
        Cookie[] cookies = req.getCookies();
        if (cookies != null) {
            for (Cookie c : cookies) {
                if ("cart".equals(c.getName())) {
                    cartRaw = URLDecoder.decode(c.getValue(), "UTF-8");
                }
            }
        }

        // Tách giỏ hàng thành list
        List<String> cart = new ArrayList<>();
        if (cartRaw != null && !cartRaw.isEmpty()) {
            for (String item : cartRaw.split(",")) {
                if (!item.isEmpty()) {
                    cart.add(item);
                }
            }
        }

        // Xử lý hành động
        if ("add".equals(action) && id != null) {
            cart.add(id);
        } else if ("remove".equals(action) && id != null) {
            cart.remove(id); // xóa theo productId
        } else if ("clear".equals(action)) {
            cart.clear();
        }

        // Lưu lại vào Cookie (dùng String.join để không dư dấu phẩy)
        String newCart = String.join(",", cart);
        Cookie cookie = new Cookie("cart", URLEncoder.encode(newCart, "UTF-8"));
        cookie.setMaxAge(60 * 60); // 1h
        resp.addCookie(cookie);

        // Gửi sang JSP
        req.setAttribute("cart", cart.toArray(new String[0]));
        RequestDispatcher dispatcher = req.getRequestDispatcher("cart.jsp");
        dispatcher.forward(req, resp);
    }
}


