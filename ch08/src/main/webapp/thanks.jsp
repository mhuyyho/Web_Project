<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head><title>Thanks</title></head>
<body>
<h1>Thanks for joining our email list</h1>
<p>Email: ${email}</p>
<p>First name: ${firstName}</p>
<p>Last name: ${lastName}</p>

<hr>
<p>Current Date: ${requestScope.currentDate}</p>
<p>First user: ${sessionScope.users[0].firstName} ${sessionScope.users[0].lastName}</p>
<p>Customer Service Email: ${initParam.custServEmail}</p>
<hr>

<form action="emailList" method="get">
    <input type="submit" value="Return">
</form>
</body>
</html>
