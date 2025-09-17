<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ taglib uri="jakarta.tags.functions" prefix="fn" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>List of albums</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 30px; }
        h2 { color: teal; }
        a { color: #2c3e50; text-decoration: none; }
        a:hover { text-decoration: underline; }
    </style>
</head>
<body>
    <h2>List of albums</h2>
    <ul>
        <li><a href="download?action=checkUser&productCode=8601">86 (the band) - True Life Songs and Pictures</a></li>
        <li><a href="download?action=checkUser&productCode=pf01">Paddlefoot - The First CD</a></li>
        <li><a href="download?action=checkUser&productCode=pf02">Paddlefoot - The Second CD</a></li>
        <li><a href="download?action=checkUser&productCode=jr01">Joe Rut - Genuine Wood Grained Finish</a></li>
    </ul>
</body>
</html>
