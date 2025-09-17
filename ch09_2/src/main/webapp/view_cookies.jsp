<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ taglib uri="jakarta.tags.functions" prefix="fn" %>

<%@ page import="jakarta.servlet.http.Cookie" %>
<%@ page import="java.net.URLDecoder, java.nio.charset.StandardCharsets" %>

<%
    Cookie[] cookies = request.getCookies();
    if (cookies != null) {
        for (Cookie c : cookies) {
            if ("firstName".equals(c.getName()) || "books".equals(c.getName())) {
                String decoded = URLDecoder.decode(c.getValue(), StandardCharsets.UTF_8);
                request.setAttribute(c.getName(), decoded);
            }
        }
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Cookies</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <h1>My Email List Application</h1>
    <h2>Cookies Information</h2>

    <div class="container">
        <c:if test="${not empty firstName}">
            <table>
                <tr>
                    <th>First Name (from cookie)</th>
                    <td>${firstName}</td>
                </tr>
            </table>
        </c:if>

        <c:if test="${not empty books}">
            <h3>Books from Cookie:</h3>
            <table>
                <tr><th>Book Title</th></tr>
                <c:forEach var="b" items="${fn:split(books, ';')}">
                    <tr>
                        <td><c:out value="${b}"/></td>
                    </tr>
                </c:forEach>
            </table>
        </c:if>

        <p>
            <a href="index.jsp" class="btn">Back to Home</a>
        </p>
    </div>

    <div class="footer">© My Email List Application</div>
</body>
</html>
