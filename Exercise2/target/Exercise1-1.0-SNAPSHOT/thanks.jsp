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
    <link rel="stylesheet" href="main.css" type="text/css"/>
</head>
<body>
    <img src="image/Murach_image.jpg" alt="Murach Logo" width="100px">
        <h1>Thank you for filling out the survey!</h1>
        
        <h2>Your Information:</h2>
        <label>First Name:</label>
        <span><%= request.getParameter("firstName") %></span><br>
        <label>Last Name:</label>
        <span><%= request.getParameter("lastName") %></span><br>
        <label>Email:</label>
        <span><%= request.getParameter("email") %></span><br>
        <label>Gender:</label>
        <span><%= request.getParameter("gender") %></span><br>
        <label>Date of Birth:</label>
        <span><%= request.getParameter("dateOfBirth") %></span><br>
        
        <h2>How did you hear about us?</h2>
        <span><%= request.getParameter("heardFrom") %></span>
        
        <h2>Announcements:</h2>
        <span><%= request.getParameter("wantsUpdates") != null ? "Yes, I'd like that." : "No, I'd not like that." %></span><br>
        <span><%= request.getParameter("emailOK") != null ? "Yes, please send me email announcements." : "No, please don't send me email announcements." %></span><br>
        
        <h2>Preferred contact method:</h2>
        <span><%= request.getParameter("contactVia") %></span>
<!--    <form action="" method="get">
        <input type="hidden" name="action" value="join">
        <input type="submit" value="Return">
    </form>-->
</body>
</html>
