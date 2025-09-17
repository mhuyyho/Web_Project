<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ taglib uri="jakarta.tags.functions" prefix="fn" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>My Email List Application</title>
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
            margin-bottom: 5px;
        }
        h2 {
            color: #444;
            margin-top: 0;
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
            text-align: right;
            width: 150px;
        }
        .books-table td {
            border: none;
            text-align: left;
        }
        .btn {
            background-color: teal;
            color: white;
            padding: 8px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 15px;
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
    <h1>My Email List Application</h1>
    <h2>Join our email list</h2>

    <form action="register" method="post">
        <table>
            <tr>
                <th>First Name:</th>
                <td><input type="text" name="firstName" required></td>
            </tr>
            <tr>
                <th>Last Name:</th>
                <td><input type="text" name="lastName" required></td>
            </tr>
            <tr>
                <th>Email:</th>
                <td><input type="email" name="email" required></td>
            </tr>
        </table>

        <h3 style="color: teal;">Select Books:</h3>
        <table class="books-table">
            <tr><td><input type="checkbox" name="book" value="Murach's HTML5 and CSS3"></td><td>Murach's HTML5 and CSS3</td></tr>
            <tr><td><input type="checkbox" name="book" value="Murach's JavaScript"></td><td>Murach's JavaScript</td></tr>
            <tr><td><input type="checkbox" name="book" value="Murach's JavaScript and jQuery"></td><td>Murach's JavaScript and jQuery</td></tr>
            <tr><td><input type="checkbox" name="book" value="Murach's jQuery"></td><td>Murach's jQuery</td></tr>
            <tr><td><input type="checkbox" name="book" value="Murach's Java Servlets and JSP"></td><td>Murach's Java Servlets and JSP</td></tr>
        </table>

        <button type="submit" class="btn">Join Now</button>
    </form>
</div>

<footer>
    © My Email List Application
</footer>
</body>
</html>
