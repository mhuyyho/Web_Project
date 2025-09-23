package murach.sql;

import java.sql.*;

public class SQLUtil {

    // Tao bang HTML tu ResultSet
    public static String getHtmlTable(ResultSet results) throws SQLException {
        if (results == null) return "<p>No result.</p>";

        StringBuilder htmlTable = new StringBuilder(512);
        ResultSetMetaData metaData = results.getMetaData();
        int columnCount = metaData.getColumnCount();

        htmlTable.append("<table border=\"1\" cellspacing=\"0\" cellpadding=\"4\">");

        // Header
        htmlTable.append("<tr>");
        for (int i = 1; i <= columnCount; i++) {
            htmlTable.append("<th>")
                     .append(escape(metaData.getColumnLabel(i)))
                     .append("</th>");
        }
        htmlTable.append("</tr>");

        // Rows
        while (results.next()) {
            htmlTable.append("<tr>");
            for (int i = 1; i <= columnCount; i++) {
                String val = results.getString(i);
                htmlTable.append("<td>")
                         .append(escape(val))
                         .append("</td>");
            }
            htmlTable.append("</tr>");
        }

        htmlTable.append("</table>");
        return htmlTable.toString();
    }

    // Escape HTML de tranh loi chen HTML/XSS nhe
    private static String escape(String s) {
        if (s == null) return "";
        return s.replace("&", "&amp;")
                .replace("<", "&lt;")
                .replace(">", "&gt;")
                .replace("\"", "&quot;")
                .replace("'", "&#x27;");
    }
}
