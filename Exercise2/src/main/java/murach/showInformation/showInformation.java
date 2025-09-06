/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.*;
import java.time.LocalDate;
import murach.business.Information;
import murach.business.User;
/**
 *
 * @author mhuyy
 */

@WebServlet(name="showInformation", urlPatterns={"/showInformation"})
public class showInformation extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");
        if (action == null) action = "join";

        String url = "/index.html"; // mặc định

        switch (action) {
            case "join":
                url = "/index.html";
                break;

            case "submit":
                String firstName = request.getParameter("firstName");
                String lastName  = request.getParameter("lastName");
                String email     = request.getParameter("email");
                LocalDate dob    = LocalDate.parse(request.getParameter("dob"));
                String answer_hear_about_us = request.getParameter("answer_hear_about_us");
                String answer_like_to_receive_anno = request.getParameter("answer_like_to_receive_anno");
                String contact = request.getParameter("contact");

                Information info = new Information(firstName,lastName,email,dob,answer_hear_about_us,answer_like_to_receive_anno,contact);
                request.setAttribute("info", info);

                // Nếu có DB:
                // UserDB.insert(user);

                url = "/thanks.jsp";
                break;

        }

        getServletContext().getRequestDispatcher(url).forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}
