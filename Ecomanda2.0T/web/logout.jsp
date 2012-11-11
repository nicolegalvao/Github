<%-- 
    Document   : logout
    Created on : 07/11/2012, 06:55:20
    Author     : Willian joddy Kaneko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%session.invalidate();
        response.sendRedirect("index.jsp");%>
    </body>
</html>
