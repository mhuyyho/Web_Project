<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page import="murach.data.ProductDB" %>
<%@ page import="java.util.*" %>
<%@ page import="murach.business.Product" %>
<%
    List<Product> products = ProductDB.findAll();
    request.setAttribute("products", products);
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>CD list</title>
    <style>
        h2 {color: teal;}
        table { border-collapse: collapse; width: 760px;}
        th, td { border:1px solid #aaa; padding:8px;}
        th { background:#f2f2f2; }
        form { margin:0; }
        .price { text-align:right; width:120px; }
    </style>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>
<h2>CD list</h2>
<table>
    <tr>
        <th>Description</th>
        <th class="price">Price</th>
        <th></th>
    </tr>
    <c:forEach var="p" items="${products}">
        <tr>
            <td>${p.desc}</td>
            <td class="price">$${p.price}</td>
            <td>
                <form action="${pageContext.request.contextPath}/cart" method="post">
                    <input type="hidden" name="action" value="add"/>
                    <input type="hidden" name="code" value="${p.code}"/>
                    <input type="hidden" name="qty" value="1"/>
                    <button type="submit">Add To Cart</button>
                </form>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>