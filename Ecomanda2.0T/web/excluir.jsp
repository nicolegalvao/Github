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
            List<String> Consumos = (ArrayList<String>) session.getAttribute("vConsumos");
            List<String> Qtdes = (ArrayList<String>) session.getAttribute("vQtdes");
            List<String> Precos = (ArrayList<String>) session.getAttribute("vPrecos");

            if (Consumos.size() > 0) {
                Consumos.remove(Integer.parseInt((request.getParameter("indice").toString())));
                Qtdes.remove(Integer.parseInt((request.getParameter("indice").toString())));
                Precos.remove(Integer.parseInt((request.getParameter("indice").toString())));
            }
            session.setAttribute("vConsumos", Consumos);
            session.setAttribute("vQtdes", Qtdes);
            session.setAttribute("vPrecos", Precos);
        %>
        <jsp:forward page="page1.jsp"></jsp:forward>
    </body>
</html>
