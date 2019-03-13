<%-- 
    Document   : index
    Created on : 13-Oct-2018, 3:05:25 PM
    Author     : Mariel Martinez (marmarie)
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"
    import="prog24178.labs.objects.CookieInventoryItem, prog24178.labs.objects.Cookies"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mariel's Munch Squad</title>
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <link rel="stylesheet" type="text/css" href="css/forms.css">
    </head>
    <body>
        <header>
            <h1>Mariel's Munch Squad</h1>
            <h2>Cookies</h2>
        </header>
        <main class="container">
            <h2>Cookies Order Form</h2>
            <form method="GET" action="OrderCookies">
                <label for="cookieType">Select a Cookie: </label>
                <select name="cookieType">
                    <c:forEach var="item" items="${Cookies.values()}">
                        <option value="${item.id}">${item.name}</option>
                    </c:forEach>
                </select>
                <label for="quantity">Quantity: </label>
                <input type="text" name="quantity">
                <input type="submit" value="Submit">
                <input type="reset" value="Reset">
            </form>
        </main>
        <footer>
            2018 &copy; Mariel Martinez
        </footer>
    </body>
</html>
