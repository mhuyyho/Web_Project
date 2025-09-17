<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/includes/header.jsp" />

<h2>Your cart</h2>

<c:choose>
    <c:when test="${cart == null || cart.count == 0}">
        <p>Your cart is empty.</p>
    </c:when>
    <c:otherwise>
        <table>
            <tr>
                <th>Quantity</th>
                <th>Description</th>
                <th>Price</th>
                <th>Amount</th>
                <th></th>
            </tr>
            <c:forEach var="item" items="${cart.items}">
                <tr>
                    <td>
                        <form action="cart" method="post">
                            <input type="hidden" name="action" value="update">
                            <input type="hidden" name="productCode" value="${item.product.code}">
                            <input type="text" name="quantity" value="${item.quantity}" class="quantity-input" size="2">
                            <input type="submit" value="Update">
                        </form>
                    </td>
                    <td>${item.product.description}</td>
                    <td>$${item.product.price}</td>
                    <td>$${item.total}</td>
                    <td>
                        <form action="cart" method="post">
                            <input type="hidden" name="action" value="remove">
                            <input type="hidden" name="productCode" value="${item.product.code}">
                            <input type="submit" value="Remove Item">
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <p>To change the quantity, enter the new quantity and click on the Update button.</p>
        <div class="button-container">
            <form action="catalog" method="get" style="display: inline-block; margin-right: 10px;">
                <input type="submit" value="Continue Shopping">
            </form>
            <form action="cart" method="post" style="display: inline-block;">
                <input type="hidden" name="action" value="checkout">
                <input type="submit" value="Checkout">
            </form>
        </div>
    </c:otherwise>
</c:choose>

<c:import url="/includes/footer.jsp" />