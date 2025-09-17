<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Email List</title>
</head>
<body>
<h1>Email List</h1>

<c:if test="${not empty message}">
    <p style="color:red">${message}</p>
</c:if>

<form action="emailList" method="post">
    <p>Email: <input type="text" name="email"></p>
    <p>First name: <input type="text" name="firstName"></p>
    <p>Last name: <input type="text" name="lastName"></p>
    <input type="submit" value="Join Now">
</form>

<jsp:include page="footer.jsp"/>
</body>
</html>
