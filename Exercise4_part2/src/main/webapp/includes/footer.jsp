<%-- 
    Document   : footer
    Created on : Sep 5, 2025, 9:23:12 AM
    Author     : mhuyy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!-- Footer fragment -->
<footer>
  <p>&copy; <c:if test="${not empty currentYear}">${currentYear} </c:if>Mike Murach &amp; Associates</p>
</footer>

