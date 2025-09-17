<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fn" uri="jakarta.tags.functions" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/main.css" type="text/css"/>
</head>
<body>

<h1>Download registration</h1>

<p>To register for our downloads, enter your name and email address below.
   Then, click on the Submit button.</p>

<form action="${pageContext.request.contextPath}/download" method="post" novalidate>
    <input type="hidden" name="action" value="registerUser"/>

    <label class="pad_top" for="email">Email:</label>
    <input id="email" type="email" name="email"
           value="${fn:escapeXml(user.email)}"
           autocomplete="email" required /><br/>

    <label class="pad_top" for="firstName">First Name:</label>
    <input id="firstName" type="text" name="firstName"
           value="${fn:escapeXml(user.firstName)}"
           autocomplete="given-name" required /><br/>

    <label class="pad_top" for="lastName">Last Name:</label>
    <input id="lastName" type="text" name="lastName"
           value="${fn:escapeXml(user.lastName)}"
           autocomplete="family-name" required /><br/>

    <label>&nbsp;</label>
    <input type="submit" value="Register" class="margin_left"/>
</form>

</body>
</html>
