package murach.email;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.*;
import murach.business.User;
import java.time.Year;
import java.util.ArrayList;
import java.util.List;


@WebServlet(name="EmailListServlet", urlPatterns={"/emailList"})
public class EmailListServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");
        if (action == null) action = "join";

        String url = "/index.jsp"; // mặc định

        switch (action) {
            case "join":
                url = "/index.jsp";
                break;

            case "add":
                String firstName = request.getParameter("firstName");
                String lastName  = request.getParameter("lastName");
                String email     = request.getParameter("email");

                User user = new User(firstName, lastName, email);
                request.setAttribute("user", user);
                
                                // session scope: danh sach users
                HttpSession session = request.getSession();
                @SuppressWarnings("unchecked")
                List<User> users = (List<User>) session.getAttribute("users");
                if (users == null) users = new ArrayList<>();
                users.add(user);
                session.setAttribute("users", users);
                
                url = "/includes/thanks.jsp";
                break;
        }
        request.setAttribute("currentYear", Year.now().getValue());
        getServletContext().getRequestDispatcher(url).forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}
