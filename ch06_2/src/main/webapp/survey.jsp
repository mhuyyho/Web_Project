<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Survey Result</title>
</head>
<body>
<h2>Thanks for taking our survey!</h2>
<p>Here is the information that you entered:</p>

<p><b>Email:</b> ${user.email}</p>
<p><b>First Name:</b> ${user.firstName}</p>
<p><b>Last Name:</b> ${user.lastName}</p>
<p><b>Heard From:</b> ${user.heardFrom}</p>
<p><b>Updates:</b> ${user.updates}</p>

<c:if test="${user.updates eq 'Yes'}">
  <p><b>Contact Via:</b> ${user.contactVia}</p>
</c:if>

</body>
</html>
