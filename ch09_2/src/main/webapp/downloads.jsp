<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ taglib uri="jakarta.tags.functions" prefix="fn" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Downloads</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 30px; }
        h2 { color: teal; }
        table { border-collapse: collapse; width: 50%; margin-top: 10px; }
        th, td { border: 1px solid #ccc; padding: 8px; text-align: left; }
        th { background-color: #f2f2f2; }
        a { color: #2c3e50; text-decoration: none; }
        a:hover { text-decoration: underline; }
    </style>
</head>
<body>
    <h2>Downloads</h2>

    <h3>${product.description}</h3>
    <table>
        <tr>
            <th>Song title</th>
            <th>Audio Format</th>
        </tr>
        <c:forEach var="song" items="${product.songs}">
            <tr>
                <td>${song.title}</td>
                <!-- Giả lập download -->
                <td><a href="download?action=fakeDownload&song=${song.title}">MP3</a></td>
            </tr>
        </c:forEach>
    </table>

    <p><a href="download?action=viewAlbums">View list of albums</a></p>
    <p><a href="download?action=viewCookies">View all cookies</a></p>
</body>
</html>
