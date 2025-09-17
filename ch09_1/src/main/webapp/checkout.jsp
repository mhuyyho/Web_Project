<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html>
<head>
    <title>Checkout</title>
    <link rel="stylesheet" type="text/css" href="styles/main.css">
    <style>
        body { font-family: Arial, sans-serif; }
        h1 { text-align: center; color: teal; }
        table { width: 100%; border-collapse: collapse; margin-top: 20px; }
        th, td { padding: 10px; border: 1px solid #ccc; text-align: center; }
        th { background-color: #e0f0f0; }
        .footer { text-align: center; margin-top: 20px; font-size: 12px; color: gray; }
    </style>
</head>
<body>
    <h1>CD Shop</h1>
    <h2>Checkout Complete</h2>

    <h3>Order Summary</h3>
    <table>
        <tr>
            <th>Quantity</th>
            <th>Description</th>
            <th>Price</th>
            <th>Amount</th>
        </tr>
        <c:forEach var="item" items="${sessionScope.cart.items}">
            <tr>
                <td>${item.quantity}</td>
                <td>${item.cd.description}</td>
                <td>$${item.cd.price}</td>
                <td>$${item.total}</td>
            </tr>
        </c:forEach>
        <tr>
            <td colspan="3"><b>Total:</b></td>
            <td>$${sessionScope.cart.total}</td>
        </tr>
    </table>

    <h3>Choose Payment Method</h3>
    <form action="confirm" method="post">
        <select name="paymentMethod">
            <option value="Credit Card">Credit Card</option>
            <option value="PayPal">PayPal</option>
            <option value="Cash on Delivery">Cash on Delivery</option>
        </select>
        <br><br>
        <input type="submit" value="Confirm Payment">
    </form>

    <form action="index.jsp" method="get">
        <input type="submit" value="Back to Shopping">
    </form>

    <div class="footer">© CD Shop</div>
</body>
</html>
