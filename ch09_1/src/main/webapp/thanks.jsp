<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html>
<head>
    <title>Payment Successful</title>
    <link rel="stylesheet" type="text/css" href="styles/main.css">
    <style>
        body { font-family: Arial, sans-serif; text-align: center; }
        h1 { color: teal; }
        .footer { margin-top: 20px; font-size: 12px; color: gray; }
    </style>
</head>
<body>
    <h1>CD Shop</h1>
    <h2>Payment Successful</h2>
    <p>Thank you for your purchase! Your payment has been confirmed.</p>
    <p><b>Payment Method:</b> ${payment}</p>

    <form action="index.jsp" method="get">
        <input type="submit" value="Back to Shopping">
    </form>

    <div class="footer">© CD Shop</div>
</body>
</html>
