<%-- 
    Document   : register
    Created on : Sep 12, 2025, 10:53:39 AM
    Author     : mhuyy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Murach's Java Servlets and JSP</title>
        <link rel="stylesheet" href="styles/main.css" type="text/css">
    </head>
    <body>
        <h1>Download registration</h1>
        
        <p>To register for our downloads, enter your name and email address below. Then, click on the Submit button.</p>
        
        <form action="download" method="post">
            <input type="hidden" name="action" value="register">
            
            <label>First Name:</label>
            <input type="text" name="firstName" required><br>
            <label>Last Name:</label>
            <input type="text" name="lastName" required><br>
            <label>Email:</label>
            <input type="email" name="email" required><br>
            
            <label>&nbsp;</label>
            
            <input type="submit" value="Register" id="register">
        </form>
    </body>
</html>
