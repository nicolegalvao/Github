<%-- 
    Document   : alterar
    Created on : 12/10/2012, 23:10:46
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
            List<String> Qtdes = (ArrayList<String>) session.getAttribute("Qtdes");
            List<String> Precos = (ArrayList<String>) session.getAttribute("Precos");

            String qtde = request.getParameter("qtde");
            String preco = request.getParameter("preco");

            out.println(session.getAttribute("id"));

            Qtdes.set(Integer.parseInt(session.getAttribute("id").toString()), qtde);
            Precos.set(Integer.parseInt(session.getAttribute("id").toString()), preco);


            session.setAttribute("Qtdes", Qtdes);
            session.setAttribute("Precos", Precos);
            response.sendRedirect("page1.jsp");

        %>
    </body>
</html>