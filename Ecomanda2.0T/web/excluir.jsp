<%-- 
    Document   : excluir
    Created on : 29/09/2012, 21:59:26
    Author     : Gustavo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            List<String> Consumos = (ArrayList<String>) session.getAttribute("Consumos");
            List<String> Qtdes = (ArrayList<String>) session.getAttribute("Qtdes");
            List<String> Precos = (ArrayList<String>) session.getAttribute("Precos");

            if (Consumos.size() > 0) {
                Consumos.remove(Integer.parseInt((request.getParameter("indice").toString())));
                Qtdes.remove(Integer.parseInt((request.getParameter("indice").toString())));
                Precos.remove(Integer.parseInt((request.getParameter("indice").toString())));
            }
            session.setAttribute("Consumos", Consumos);
            session.setAttribute("Qtdes", Qtdes);
            session.setAttribute("Precos", Precos);
            response.sendRedirect("page1.jsp");

        %>
    </body>
</html>
