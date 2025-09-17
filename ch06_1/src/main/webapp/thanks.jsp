<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <title>Thanks</title>
</head>
<body>
<h1>Thanks for joining our email list</h1>
<p>Email: ${email}</p>
<p>First name: ${firstName}</p>
<p>Last name: ${lastName}</p>

<form action="emailList" method="get">
    <input type="submit" value="Return">
</form>

<jsp:include page="footer.jsp"/>
</body>
</html>
