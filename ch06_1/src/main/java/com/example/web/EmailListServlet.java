package com.example.web;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.time.Year;

@WebServlet("/emailList")
public class EmailListServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private boolean blank(String s) {
        return s == null || s.trim().isEmpty();
    }

    private void putYear(HttpServletRequest req) {
        req.setAttribute("currentYear", Year.now().getValue());
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        putYear(req);
        req.getRequestDispatcher("/index.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        putYear(req);

        String email = req.getParameter("email");
        String first = req.getParameter("firstName");
        String last = req.getParameter("lastName");

        if (blank(email) || blank(first) || blank(last)) {
            req.setAttribute("message", "All three values are required.");
            req.getRequestDispatcher("/index.jsp").forward(req, resp);
        } else {
            req.setAttribute("email", email);
            req.setAttribute("firstName", first);
            req.setAttribute("lastName", last);
            req.getRequestDispatcher("/thanks.jsp").forward(req, resp);
        }
    }
}
