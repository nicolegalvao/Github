<%-- 
    Document   : page2
    Created on : 24/10/2012, 21:06:09
    Author     : Willian Joddy Kaneko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.text.DecimalFormat" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <% String total = session.getAttribute("vTotal").toString();
            session.setAttribute("vTotal", total);

        %>
        <script>    
            function somente_numero(campo){  
                var digits="0123456789"  
                var campo_temp   
                for (var i=0;i<campo.value.length;i++){  
                    campo_temp=campo.value.substring(i,i+1)   
                    if (digits.indexOf(campo_temp)==-1){  
                        campo.value = campo.value.substring(0,i);  
                    }  
                }  
            }  
        </script>
        <script>
            function verifica(form){
                if (form.numPessoa.value <= 0){
                    alert ("numero de pessoas invalido!");
                    form.numPessoa.focus();
                    return false;
                }
                return true;
            }(
        </script>    
        <title>EcoComanda</title>
    </head>
    <body>
        <H1 ALIGN=CENTER>EcoComanda</H1> 
        <hr>
        <table cellpadding="40" cellspacing="0" align="center">
            <form action="page3.jsp" onsubmit="return verifica(this);">
                <tr>
                    <%DecimalFormat formato = new DecimalFormat("##.##");
                    double total2 = Double.parseDouble(total);%>
                    <td><h4>Valor Total:</h4></td> 
                    <td>R$<%=formato.format(total2)%></td>
                </tr>
                <tr>
                    <td><h4>Quantas Pessoas?</h4></td> 
                    <td><input type="text" name="numPessoa" size="3" maxlength="3" onKeyUp="somente_numero(this)" required/></td>
                </tr>
                <tr>	
                    <td><h4>Tem 10% do Garçom?</h4></td>
                    <td><input type="radio" name="garcom" value="Sim" checked> Sim 
                        <input type="radio" name="garcom" value="Nao"> Não 
                    </td>
                </tr>
                <tr>
                    <td><input type="button" value="Voltar" onclick="window.history.back()"></td>
                    <td><input type="submit" value="Calcular"></td>
                </tr>
            </form>
        </table>
        <hr>


    </body>
</html>
