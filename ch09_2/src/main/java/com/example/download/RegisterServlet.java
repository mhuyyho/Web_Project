package com.example.download;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Lấy dữ liệu từ form
        String firstName = request.getParameter("firstName");
        String lastName  = request.getParameter("lastName");
        String email     = request.getParameter("email");
        String[] books   = request.getParameterValues("book");

        // Lưu cookie firstName (sống 30 ngày)
        if (firstName != null && !firstName.isEmpty()) {
            Cookie cookie = new Cookie("firstName", java.net.URLEncoder.encode(firstName, "UTF-8"));
            cookie.setMaxAge(60 * 60 * 24 * 30); // 30 ngày
            response.addCookie(cookie);
        }

        // Gửi dữ liệu sang thanks.jsp
        request.setAttribute("firstName", firstName);
        request.setAttribute("lastName", lastName);
        request.setAttribute("email", email);
        request.setAttribute("books", books);

        // Forward sang thanks.jsp
        request.getRequestDispatcher("thanks.jsp").forward(request, response);
    }
}
