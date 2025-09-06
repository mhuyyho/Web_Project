package murach.survey;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;

import murach.business.User;

@WebServlet(name = "SurveyServlet", urlPatterns = {"/survey"})
public class SurveyServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Lấy tham số từ form
        String email      = request.getParameter("email");
        String firstName  = request.getParameter("firstName");
        String lastName   = request.getParameter("lastName");
        String heardFrom  = request.getParameter("heardFrom");
        String updates    = request.getParameter("updates");      // checkbox: "Yes" nếu chọn
        String contactVia = request.getParameter("contactVia");

        // Nếu checkbox không được chọn, updates sẽ null → set "No"
        if (updates == null) {
            updates = "No";
        }

        // Tạo đối tượng User
        User user = new User(email, firstName, lastName, heardFrom, updates, contactVia);

        // Đặt vào request attribute
        request.setAttribute("user", user);

        // Forward tới survey.jsp
        String url = "/survey/survey.jsp";
        getServletContext()
            .getRequestDispatcher(url)
            .forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Chuyển tất cả request GET sang POST để xử lý chung
        doPost(request, response);
    }
}
