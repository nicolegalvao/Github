<%-- 
    Document   : validaNotas2
    Created on : 29/09/2012, 22:05:54
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
            String consumo = request.getParameter("consumo");
            String qtde = request.getParameter("qtde");
            String preco = request.getParameter("preco");

            session.setAttribute("consumo", consumo);
            session.setAttribute("qtde", qtde);
            session.setAttribute("preco", preco);


            String consumo1 = session.getAttribute("consumo").toString();
            String qtde1 = session.getAttribute("qtde").toString();
            String preco1 = session.getAttribute("preco").toString();
            ArrayList Consumos = (ArrayList) session.getAttribute("Consumos");
            ArrayList Qtdes = (ArrayList) session.getAttribute("Qtdes");
            ArrayList Precos = (ArrayList) session.getAttribute("Precos");
            if (Consumos == null) {
                Consumos = new ArrayList();
            }
            if (Qtdes == null) {
                Qtdes = new ArrayList();
            }
            if (Precos == null) {
                Precos = new ArrayList();
            }
            Consumos.add(consumo1);
            Qtdes.add(qtde1);
            Precos.add(preco1);
            session.setAttribute("Consumos", Consumos);
            session.setAttribute("Qtdes", Qtdes);
            session.setAttribute("Precos", Precos);
            response.sendRedirect("page1.jsp");
        %>
    </body>
</html>
