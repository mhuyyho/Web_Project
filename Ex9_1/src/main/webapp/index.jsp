<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>

<h1>List of albums</h1>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<c:if test="${cookie.firstNameCookie.value != null}">
    <p>Welcome back, <c:out value='${cookie.firstNameCookie.value}'/></p>
</c:if>

<p>
<a href="download?action=checkUser&amp;productCode=theluong">
    Thê Lương - Phúc Chinh 
</a><br>

<a href="download?action=checkUser&amp;productCode=lunglo">
    Lửng Lơ - MASEW x BRAY ft. RedT x Ý Tiên
</a><br>

<a href="download?action=checkUser&amp;productCode=othuoc">
    Ô Thước - CẦN VINH x LEE KEN
</a><br>

<a href="download?action=checkUser&amp;productCode=leconhan">
    Lệ Cố Nhân -  CẦN VINH x LEE KEN x BẢO JEN
</a>
</p>

</body>
</html>