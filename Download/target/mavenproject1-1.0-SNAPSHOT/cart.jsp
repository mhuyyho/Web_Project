<%
    String[] cart = (String[]) request.getAttribute("cart");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Your Cart</title>
    <link rel="stylesheet" href="css/cart.css">
</head>
<body>
    <h2>Your Shopping Cart</h2>

    <%
        boolean hasItems = false;
        for (String c : cart) {
            if (!c.isEmpty()) { hasItems = true; break; }
        }
    %>

    <% if (hasItems) { %>
        <table>
            <tr>
                <th>#</th>
                <th>Product ID</th>
            </tr>
            <%
                int i = 1;
                for (String c : cart) {
                    if (!c.isEmpty()) {
            %>
                <tr>
                    <td><%= i++ %></td>
                    <td><%= c %></td>
                </tr>
            <% } } %>
        </table>
    <% } else { %>
        <p class="empty">Your cart is empty!</p>
    <% } %>

    <a class="btn" href="products">Continue Shopping</a>
</body>
</html>