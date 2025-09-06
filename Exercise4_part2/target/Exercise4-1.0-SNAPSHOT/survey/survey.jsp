<%-- 
    Document   : survay
    Created on : Sep 5, 2025, 10:46:12 AM
    Author     : mhuyy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Survey Result</title>
        <link rel="stylesheet" href="styles/main.css" type="text/css"/>
    </head>
    <body>
        <h1>Thanks for taking our survey!</h1>
        <p>Here is the information that you entered:</p>

        <div class="row"><span class="label">Email:</span> ${user.email}</div>
        <div class="row"><span class="label">First Name:</span> ${user.firstName}</div>
        <div class="row"><span class="label">Last Name:</span> ${user.lastName}</div>
        <div class="row"><span class="label">Heard From:</span> ${user.heardFrom}</div>
        <div class="row"><span class="label">Updates:</span> ${user.updates}</div>

        <!-- Only show Contact Via if user wants updates -->
        <c:if test="${user.updates == 'Yes'}">
            <div class="row"><span class="label">Contact Via:</span> ${user.contactVia}</div>
        </c:if>
    </body>
</html>
