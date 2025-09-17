<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/includes/header.jsp" />

<h2>CD list</h2>

<table>
    <tr>
        <th>Description</th>
        <th>Price</th>
        <th></th>
    </tr>
    <c:forEach var="cd" items="${cds}">
    <tr>
        <td>${cd.description}</td>
        <td>$${cd.price}</td>
        <td>
            <form action="cart" method="post">
                <input type="hidden" name="action" value="add">
                <input type="hidden" name="productCode" value="${cd.code}">
                <input type="submit" value="Add To Cart">
            </form>
        </td>
    </tr>
    </c:forEach>
</table>

<c:if test="${cart != null && cart.count > 0}">
    <p><a href="cart">View Cart (${cart.count} items)</a></p>
</c:if>

<c:import url="/includes/footer.jsp" />