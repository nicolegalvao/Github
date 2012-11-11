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
        <link rel="shortcut icon" type="image/x-icon" href="Imagem/icone.ico">
        <%  
            String total = session.getAttribute("Total").toString();
            int qtde = Integer.parseInt(request.getParameter("numPessoa"));
            String garcom = request.getParameter("garcom");
        %>
        <script type="text/javascript">
            function abrir(){
            window.open("myaccount.jsp","Janela","status=no,width=330,height=480,left=920,top=130,location=no,menubar=no,toolbar=no,resizable=yes,scrollbars=no,titlebar=no" )
            setTimeout("fechar()", 30)
            }
        </script>
        <title>EcoComanda</title>
    </head>
    <body>
        <table border="0" width="100%">
            <tr align="center"> 
                <td colspan="3" height="100">
                    <hr>
                    <H1 align=Center><font face="arial" color="green"><img src="Imagem/logo.jpg">EcoComanda</font></H1>
                    <hr><h5 align="right"><font face="calibri">Bem-vindo!</font> |
                        <a href="#" onclick="abrir()"><font face="calibri">MyEcomanda</font></a> | <a href="logout.jsp"><font face="calibri">Logout</font></a></h5>
                </td> 
            </tr>
            <tr align="center"> 
                <td width="30%">

                </td>
                <td width="40%">
                    <table align="center"  style="border:1px solid green;">
                        <tr align="center">
                            <td>
                                <table cellpadding="40" cellspacing="0" align="center">
                                    <%if (garcom.compareTo("Nao") == 0) {%>
                                    <form action="agradecimentos.jsp" onsubmit="return verifica(this);">
                                        <tr>
                                            <%
                                                double aux = 0, aux1 = 0;
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
                                            aux1 = Double.parseDouble(total) * (1.10);
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
                            </td>
                        </tr>
                    </table>

                </td>
                <td width="30%"> 

                </td> 
            </tr>
            <tr align="right"> 
                <td colspan="3" height="100">
                   
                </td>
            </tr>      
        </table>
    </body>
</html>
