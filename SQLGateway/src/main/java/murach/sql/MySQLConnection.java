package murach.sql;

import jakarta.servlet.ServletContext;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySQLConnection {
    public static Connection getConnection(ServletContext ctx) throws SQLException {
        String url = ctx.getInitParameter("db.url");
        String user = ctx.getInitParameter("db.user");
        String pass = ctx.getInitParameter("db.pass");

        // Đăng ký driver MySQL (nếu cần)
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            throw new SQLException("MySQL Driver not found", e);
        }

        return DriverManager.getConnection(url, user, pass);
    }
}
