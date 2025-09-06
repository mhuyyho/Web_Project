
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

            <label>First name:</label>
            <input type="text" name="firstName"
                   value="${requestScope.user.firstName}"><br>

            <label>Last name:</label>
            <input type="text" name="lastName"
                   value="${requestScope.user.lastName}"><br>

            <label>Email:</label>
            <input type="email" name="email"
                   value="${requestScope.user.email}"><br>

            <button type="submit">Join Now</button>
        </form>
    
        <%@ include file="/includes/footer.jsp" %>
    </body>
</html>