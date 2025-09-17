<%@ page import="java.util.List, com.shop.model.Product" %>
<%
    List<Product> products = (List<Product>) request.getAttribute("products");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>PRODUCTS LIST</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <h2>Product List</h2>
    <table>
        <tr>
            <th>ID</th>
            <th>Name Product</th>
            <th>Price</th>
            <th>Operation</th>
        </tr>
        <% for(Product p : products){ %>
        <tr>
            <td><%= p.getId() %></td>
            <td><%= p.getName() %></td>
            <td>$<%= p.getPrice() %></td>
            <td><a class="button" href="cart?action=add&id=<%= p.getId() %>">Add to cart</a></td>
        </tr>
        <% } %>
    </table>
    <a class="cart-link" href="cart">Show Cart</a>
</body>
</html>

