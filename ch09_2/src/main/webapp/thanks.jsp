<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ taglib uri="jakarta.tags.functions" prefix="fn" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Successful</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            text-align: center;
        }
        .container {
            width: 60%;
            margin: 30px auto;
            padding: 20px;
            background: #fff;
            border-radius: 8px;
            box-shadow: 0px 2px 8px rgba(0,0,0,0.1);
        }
        h1 {
            color: teal;
        }
        table {
            margin: 15px auto;
            border-collapse: collapse;
            width: 80%;
        }
        th, td {
            padding: 8px 12px;
            border-bottom: 1px solid #ddd;
            text-align: left;
        }
        th {
            background-color: #f0fafa;
            color: teal;
            width: 150px;
            text-align: right;
        }
        ul {
            list-style-type: square;
            text-align: left;
            margin: 10px auto;
            width: fit-content;
        }
        .btn {
            background-color: teal;
            color: white;
            padding: 8px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 15px;
            text-decoration: none;
            display: inline-block;
        }
        .btn:hover {
            background-color: darkslategray;
        }
        footer {
            margin-top: 25px;
            font-size: 0.9em;
            color: gray;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Thank You for Registering!</h1>

    <table>
        <tr>
            <th>First Name:</th>
            <td>${firstName}</td>
        </tr>
        <tr>
            <th>Last Name:</th>
            <td>${lastName}</td>
        </tr>
        <tr>
            <th>Email:</th>
            <td>${email}</td>
        </tr>
    </table>

    <c:if test="${not empty books}">
        <h3 style="color: teal;">Books you selected:</h3>
        <ul>
            <c:forEach var="b" items="${books}">
                <li>${b}</li>
            </c:forEach>
        </ul>
    </c:if>

    <c:if test="${empty books}">
        <p><i>No books selected.</i></p>
    </c:if>

    <a href="index.jsp" class="btn">Back to Home</a>
</div>

<footer>
    © My Email List Application
</footer>
</body>
</html>
