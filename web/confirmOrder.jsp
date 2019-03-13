<%-- 
    Document   : confirmOrder
    Created on : 13-Oct-2018, 3:26:37 PM
    Author     : Mariel Martinez (marmarie)
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cookie Order</title>
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <link rel="stylesheet" type="text/css" href="css/tables.css">
    </head>
    <body>
        <header>
            <h1>Mariel's Munch Squad</h1>
            <h2>Cookies</h2>
        </header>
        <main class="container">
            <h2>Your Cookie Order</h2>
            <p>Thank you for your order. Here are your order details:</p>
            <table>
                <tr>
                    <th>Cookie</th>
                    <th>Quantity</th>
                    <th>Price</th>
                    <th>Total</th>
                </tr>
                <tr>
                    <td>${requestScope.inventory.cookie.name}</td>
                    <td>${requestScope.inventory.quantity}</td>
                    <td><fmt:formatNumber 
                            value="${requestScope.inventory.cookie.price}" 
                            type="currency" /></td>
                    <td><fmt:formatNumber 
                            value="${requestScope.inventory.cookie.price
                                * requestScope.inventory.quantity}" 
                            type="currency" /></td>
                </tr>
            </table>
        </main>
        <footer>
            2018 &copy; Mariel Martinez
        </footer>
    </body>
</html>
