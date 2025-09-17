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
            if (c != null && !c.isEmpty()) { 
                hasItems = true; 
                break; 
            }
        }
    %>

    <% if (hasItems) { %>
        <table>
            <tr>
                <th>Serial Number</th>
                <th>Product ID</th>
                <th>Action</th>
            </tr>
            <%
                int i = 1;
                for (String c : cart) {
                    if (c != null && !c.isEmpty()) {
            %>
                <tr>
                    <td><%= i++ %></td>
                    <td><%= c %></td>
                    <td>
                        <a class="remove-btn" href="cart?action=remove&id=<%= c %>">Remove</a>
                    </td>
                </tr>
            <% } } %>
        </table>

        <br>
        <a class="btn clear-btn" href="cart?action=clear">Clear Cart</a>
    <% } else { %>
        <p class="empty">Your cart is empty!</p>
    <% } %>

    <br><br>
    <a class="btn continue-btn" href="products">Continue Shopping</a>
</body>
</html>
