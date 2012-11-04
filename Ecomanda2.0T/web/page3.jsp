<%-- 
    Document   : page3
    Created on : 24/10/2012, 11:54:08
    Author     : Willian joddy Kaneko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.text.DecimalFormat" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <% String total = session.getAttribute("vTotal").toString();
            int qtde = Integer.parseInt(request.getParameter("numPessoa"));
            String garcom = request.getParameter("garcom");
        %>
        <title>JSP Page</title>
    </head>
    <body>
        <H1 ALIGN=CENTER>EcoComanda</H1> 
        <hr>
        <table cellpadding="40" cellspacing="0" align="center">
            <%if (garcom.compareTo("Nao") == 0) {%>
            <form action="agradecimentos.jsp" onsubmit="return verifica(this);">
                <tr>
                    <%
                        double aux = 0, aux1 =0;
                        aux1 = Double.parseDouble(total);
                        aux = aux1 / qtde;
                        DecimalFormat formato = new DecimalFormat("##.##");
                    %>
                    <td><h4>Valor Total Para Cada Pessoa:</h4></td> 
                    <td> <%=qtde%>x R$ <%=formato.format(aux)%></td>
                </tr>
                <tr>
                    <td><h4>Valor Total:</h4></td>
                    <td><%=formato.format(aux1)%></td>
                </tr>
                <tr>   
                    <td><input type="button" value="Voltar" onclick="window.history.back()"></td>
                    <td><input type="submit" value="Finalizar"></td>
                </tr>
            </form>
            <%} else {%>
            <form action="agradecimentos.jsp" onsubmit="return verifica(this);">
                <%
                        double aux = 0, aux1 = 0;
                        aux1 = Double.parseDouble(total)*(1.10);
                        aux = aux1 / qtde;
                        DecimalFormat formato = new DecimalFormat("##.##");
                    %>
                <tr>
                    <td><h4>Valor Total Para Cada Pessoa:</h4></td> 
                    <td> <%=qtde%>x R$ <%=formato.format(aux)%></td>
                </tr>
                <tr>
                    <td><h4>Valor Total com 10%:</h4></td>
                    <td><%=formato.format(aux1)%></td>
                </tr>
                <tr>   
                    <td><input type="button" value="Voltar" onclick="window.history.back()"></td>
                    <td><input type="submit" value="Finalizar"></td>
                </tr>
            </form>
            <%}%>
        </table>
        <hr>

    </body>
</html>
