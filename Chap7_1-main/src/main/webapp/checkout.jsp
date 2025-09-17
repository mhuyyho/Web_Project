<%@page contentType="text/html" pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/includes/header.jsp" />

<h2>Checkout</h2>

<p>
  This is the checkout page. In a real application, this is where you would
  collect payment information.
</p>

<c:if test="${cart != null && cart.count > 0}">
  <h3>Order Summary</h3>
  <table>
    <tr>
      <th>Quantity</th>
      <th>Description</th>
      <th>Price</th>
      <th>Amount</th>
    </tr>
    <c:forEach var="item" items="${cart.items}">
      <tr>
        <td>${item.quantity}</td>
        <td>${item.product.description}</td>
        <td>$${item.product.price}</td>
        <td>$${item.total}</td>
      </tr>
    </c:forEach>
  </table>
</c:if>

<div class="button-container">
  <form action="catalog" method="get">
    <input type="submit" value="Continue Shopping" />
  </form>
</div>

<c:import url="/includes/footer.jsp" />
