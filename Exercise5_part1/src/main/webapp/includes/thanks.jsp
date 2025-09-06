<%-- 
    Document   : thanks
    Created on : Aug 22, 2025, 8:13:47 PM
    Author     : mhuyy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>
    <%@ taglib prefix="c" uri="jakarta.tags.core" %>
    <%@ include file="/includes/header.html" %>
    
    <h1>Thanks for joining our email list</h1>
    <p>Here is the information that you entered:</p>
    
    <label>First Name:</label>
    <span><c:out value="${requestScope.user.firstName}"/></span><br>
    <label>Last Name: </label>
    <span><c:out value="${requestScope.user.lastName}"/></span><br>
    <label>Email:</label>
    <span><em><c:out value="${requestScope.user.email}"/></em></span><br>
    
    <h3>All users:</h3>
    <ul>
        <c:forEach var="u" items="${sessionScope.users}">
            <li>${u.firstName} ${u.lastName} - ${u.email}</li>
        </c:forEach>
    </ul>

    
    <%@ include file="/includes/footer.jsp" %>
</body>
</html>
