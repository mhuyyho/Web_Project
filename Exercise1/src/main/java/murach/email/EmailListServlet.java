package murach.email;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.*;
import murach.business.User;

@WebServlet(name="EmailListServlet", urlPatterns={"/emailList"})
public class EmailListServlet extends HttpServlet {
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

            case "add":
                String firstName = request.getParameter("firstName");
                String lastName  = request.getParameter("lastName");
                String email     = request.getParameter("email");

                User user = new User(firstName, lastName, email);
                request.setAttribute("user", user);

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
