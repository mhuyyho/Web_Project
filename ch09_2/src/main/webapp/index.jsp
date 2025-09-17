<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.net.URLDecoder, jakarta.servlet.http.Cookie" %>

<%
    String firstName = "";
    Cookie[] cookies = request.getCookies();
    if (cookies != null) {
        for (Cookie c : cookies) {
            if ("firstName".equals(c.getName())) {
                firstName = URLDecoder.decode(c.getValue(), "UTF-8");
            }
        }
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>My Email List Application</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            text-align: center;
        }
        .container {
            width: 60%;
            margin: 30px auto;
            padding: 20px;
            background: #fff;
            border-radius: 8px;
            box-shadow: 0px 2px 8px rgba(0,0,0,0.1);
        }
        h1 {
            color: teal;
            margin-bottom: 10px;
        }
        p {
            font-size: 1.1em;
            margin: 10px 0;
        }
        a.btn {
            display: inline-block;
            background-color: teal;
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
            text-decoration: none;
            margin-top: 15px;
        }
        a.btn:hover {
            background-color: darkslategray;
        }
        footer {
            margin-top: 25px;
            font-size: 0.9em;
            color: gray;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Welcome to My Email List Application</h1>

    <% if (firstName != null && !firstName.isEmpty()) { %>
        <p>Welcome back, <%= firstName %>!</p>
    <% } else { %>
        <p>Join our email list to stay updated!</p>
    <% } %>

    <a href="register.jsp" class="btn">Join Now</a>
</div>

<footer>
    © My Email List Application
</footer>
</body>
</html>
