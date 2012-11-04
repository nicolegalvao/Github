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
            List<String> Consumos = (ArrayList<String>) session.getAttribute("vConsumos");
            List<String> Qtdes = (ArrayList<String>) session.getAttribute("vQtdes");
            List<String> Precos = (ArrayList<String>) session.getAttribute("vPrecos");

            String consumo = request.getParameter("consumo");
            String qtde = request.getParameter("qtde");
            String preco = request.getParameter("preco");

            session.setAttribute("consumo", consumo);
            session.setAttribute("qtde", qtde);
            session.setAttribute("preco", preco);

            if (Consumos.contains(session.getAttribute("consumo")) == false) {

                if (session.getAttribute("consumo") != null) {
                    Consumos.add(session.getAttribute("consumo").toString());
                }

                if (session.getAttribute("qtde") != null) {
                    Qtdes.add(session.getAttribute("qtde").toString());
                }
                if (session.getAttribute("preco") != null) {
                    Precos.add(session.getAttribute("preco").toString());
                }
            }    
            session.setAttribute("vConsumos", Consumos);
            session.setAttribute("vQtdes", Qtdes);
            session.setAttribute("vPrecos", Precos);
        %>
        <jsp:forward page="page1.jsp"></jsp:forward>
    </body>
</html>
