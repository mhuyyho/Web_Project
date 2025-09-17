<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html>
<head>
    <title>CD Shop</title>
    <link rel="stylesheet" type="text/css" href="styles/main.css">
    <style>
        body { font-family: Arial, sans-serif; }
        h1 { text-align: center; color: teal; }
        table { width: 100%; border-collapse: collapse; margin-top: 20px; }
        th, td { padding: 10px; border: 1px solid #ccc; }
        th { background-color: #e0f0f0; text-align: left; }
        .footer { text-align: center; margin-top: 20px; font-size: 12px; color: gray; }
    </style>
</head>
<body>
    <h1>CD Shop</h1>
    <h2>CD list</h2>
    <table>
        <tr>
            <th>Description</th>
            <th>Price</th>
            <th></th>
        </tr>
        <tr>
            <td>86 (the band) - True Life Songs and Pictures</td>
            <td>$14.95</td>
            <td>
                <form action="cart" method="post">
                    <input type="hidden" name="code" value="8601">
                    <input type="number" name="quantity" value="1" min="1">
                    <input type="submit" value="Add To Cart">
                </form>
            </td>
        </tr>
        <tr>
            <td>Paddlefoot - The first CD</td>
            <td>$12.95</td>
            <td>
                <form action="cart" method="post">
                    <input type="hidden" name="code" value="pf01">
                    <input type="number" name="quantity" value="1" min="1">
                    <input type="submit" value="Add To Cart">
                </form>
            </td>
        </tr>
        <tr>
            <td>Paddlefoot - The second CD</td>
            <td>$14.95</td>
            <td>
                <form action="cart" method="post">
                    <input type="hidden" name="code" value="pf02">
                    <input type="number" name="quantity" value="1" min="1">
                    <input type="submit" value="Add To Cart">
                </form>
            </td>
        </tr>
        <tr>
            <td>Joe Rut - Genuine Wood Grained Finish</td>
            <td>$14.95</td>
            <td>
                <form action="cart" method="post">
                    <input type="hidden" name="code" value="jr01">
                    <input type="number" name="quantity" value="1" min="1">
                    <input type="submit" value="Add To Cart">
                </form>
            </td>
        </tr>
    </table>
    <div class="footer">© CD Shop</div>
</body>
</html>
