<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ page import="murach.business.Cart" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%
    HttpSession s = request.getSession();
    Cart cart = (Cart) s.getAttribute("cart");
    if (cart == null)
    {
        cart = new murach.business.Cart();
        s.setAttribute("cart", cart);
    }
    request.setAttribute("items", cart.getItems());
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Checkout</title>
        
        <pThis is the checkout page. In a real application, this is where you would collect payment information.p>
            
            <h3>Order Summary</h3>
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
        <h2>Check out</h2>
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
                    </tr>
                    
                    <c:forEach var="li" items="${items}">
                        <tr>
                            <td>${li.quantity}</td>
                            <td>${li.product.desc}</td>
                            <td class="num"> $${li.product.price}</td>
                            <td class="num"> $${li.amount}</td>
                        </tr>
                    </c:forEach>
                        <tr>
                            <td colspan="3" class="num"><strong>Total</strong></td>
                            <td claSSSss="num"><strong>${sessionScope.cart.total}</strong></td>
                        </tr>
                </table>
            </c:otherwise>
        </c:choose>
            
        <form action="${pageContext.request.contextPath}/cart" method="post" style="margin-top:12px;">
            <input type="hidden" name="action" value="continue"/>
            <button type="submit">Continue Shopping</button>
        </form>   
    </body>
</html>
