<%-- 
    Document   : index
    Created on : Sep 5, 2025, 9:22:21 AM
    Author     : mhuyy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%@ taglib prefix="c" uri="jakarta.tags.core" %>
        <%@ include file="/includes/header.html" %>
        
        <h1>Join our email list</h1>
        <p>To join our email list, enter your name and email address below.</p>
        <form action="emailList" method="post">
            <input type="hidden" name="action" value="add">
                <label>Email:</label>
            <input type="email" name="email" required><br>
                <label>First Name: </label>
            <input type="text" name="firstName" required><br>
                <label>Last Name: </label>
            <input type="text" name="lastName" required><br>
                <label>&nbsp;</label>
            <input type="submit" value="Join Now" id="submit">
        </form>
    
        <%@ include file="/includes/footer.jsp" %>
    </body>
</html>
