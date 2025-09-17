<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html>
<head>
    <title>CD Shop - Cart</title>
    <link rel="stylesheet" type="text/css" href="styles/main.css">
</head>
<body>
    <h1>Your cart</h1>

    <table border="1">
        <tr>
            <th>Quantity</th>
            <th>Description</th>
            <th>Price</th>
            <th>Amount</th>
            <th>Action</th>
        </tr>
        <c:forEach var="item" items="${cart.items}">
            <tr>
                <td>${item.quantity}</td>
                <td>${item.cd.description}</td>
				<td>$${item.cd.price}</td>
                <td>$${item.total}</td>
                <td>
                    <form action="cart" method="post">
                        <input type="hidden" name="code" value="${item.cd.code}">
                        <input type="hidden" name="quantity" value="0">
                        <input type="submit" value="Remove Item">
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>

    <p>Total: $${cart.total}</p>

    <form action="index.jsp" method="get">
        <input type="submit" value="Continue Shopping">
    </form>

    <!-- ✅ Checkout form phải dùng POST -->
    <form action="checkout" method="post">
        <input type="submit" value="Checkout">
    </form>
</body>
</html>