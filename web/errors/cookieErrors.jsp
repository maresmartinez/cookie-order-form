<%-- 
    Document   : exception
    Created on : 28-Sep-2018, 4:56:41 PM
    Author     : Mariel Martinez (marmarie)
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/main.css">
        <title>Error</title>
    </head>
    <body>
        <header>
            <h1>Mariel's Munch Squad</h1>
            <h2>Cookie Ordering Error</h2>
        </header>
        <main class="container">
            <p>A problem occurred with your Cookie order: </p>
            <p><%= exception.getMessage() %></p>
            <p><a href="${pageContext.request.contextPath}/index.jsp">Back to Order Form</a></p>
        </main>
        <footer>
            2018 &copy; Mariel Martinez
        </footer>
    </body>
</html>
