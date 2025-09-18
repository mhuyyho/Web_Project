<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page import="murach.business.Cart" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%
    HttpSession s = request.getSession();
    Cart cart = (Cart) s.getAttribute("cart");
    if (cart == null) {
        cart = new murach.business.Cart();
        s.setAttribute("cart", cart);
    }
    request.setAttribute("items", cart.getItems());
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>Your cart</title>
    <style>
        h2 {color: teal;}
        table { border-collapse: collapse; width: 860px;}
        th, td { border:1px solid #aaa; padding:8px;}
        th { background:#f2f2f2; }
        input[type=number]{ width:60px; }
        .num { text-align:right; width:120px; }
    </style>
</head>
<body>
<h2>Your cart</h2>

<c:choose>
<c:when test="${empty items}">
    <p>Gio hang dang rong.</p>
</c:when>
<c:otherwise>
<table>
    <tr>
        <th>Quantity</th>
        <th>Description</th>
        <th class="num">Price</th>
        <th class="num">Amount</th>
        <th></th>
    </tr>

    <c:forEach var="li" items="${items}">
        <tr>
            <td>
                <form action="${pageContext.request.contextPath}/cart" method="post" style="display:inline-block">
                    <input type="hidden" name="action" value="update"/>
                    <input type="hidden" name="code" value="${li.product.code}"/>
                    <input type="number" name="qty" min="0" value="${li.quantity}"/>
                    <button type="submit">Update</button>
                </form>
            </td>
            <td>${li.product.desc}</td>
            <td class="num">$${li.product.price}</td>
            <td class="num">$${li.amount}</td>
            <td>
                <form action="${pageContext.request.contextPath}/cart" method="post">
                    <input type="hidden" name="action" value="remove"/>
                    <input type="hidden" name="code" value="${li.product.code}"/>
                    <button type="submit">Remove Item</button>
                </form>
            </td>
        </tr>
    </c:forEach>
    <tr>
        <td colspan="3" class="num"><strong>Total</strong></td>
        <td class="num"><strong>$${sessionScope.cart.total}</strong></td>
        <td></td>
    </tr>
</table>
</c:otherwise>
</c:choose>

<form action="${pageContext.request.contextPath}/cart" method="post" style="margin-top:12px;">
    <input type="hidden" name="action" value="continue"/>
    <button type="submit">Continue Shopping</button>
</form>

<form action="${pageContext.request.contextPath}/checkout" method="post" style="margin-top:8px">
    <input type="hidden" name="action" value="checkout"/>
    <button type="submit">Checkout</button>
</form>
</body>
</html>
