package com.example.web;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;

@WebServlet("/survey")
public class SurveyServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        // Nếu người dùng vào trực tiếp /survey bằng GET
        // thì redirect về form index.html
        resp.sendRedirect(req.getContextPath() + "/index.html");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        // Lấy dữ liệu từ form
        String email = req.getParameter("email");
        String firstName = req.getParameter("firstName");
        String lastName = req.getParameter("lastName");
        String heardFrom = req.getParameter("heardFrom");
        String updates = req.getParameter("updates");
        String contactVia = req.getParameter("contactVia");

        // Tạo User object
        User user = new User();
        user.setEmail(email);
        user.setFirstName(firstName);
        user.setLastName(lastName);
        user.setHeardFrom(heardFrom);
        user.setUpdates(updates);
        user.setContactVia(contactVia);

        // Gửi user object sang JSP
        req.setAttribute("user", user);

        // Forward đến survey.jsp
        req.getRequestDispatcher("/survey.jsp").forward(req, resp);
    }
}
