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
        <link rel="shortcut icon" type="image/x-icon" href="Imagem/icone.ico">
        <% 
            String total = session.getAttribute("Total").toString();
            String Consumos = session.getAttribute("Consumos").toString();
            String Qtdes = session.getAttribute("Qtdes").toString();
            String Precos = session.getAttribute("Precos").toString();
            session.setAttribute("Consumos", Consumos);
            session.setAttribute("Qtdes", Qtdes);
            session.setAttribute("Precos", Precos);
            session.setAttribute("Total", total);
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
                if (form.numPessoa.value <= 0 || form.numPessoa.value ==""){
                    alert ("numero de pessoas invalido!");
                    form.numPessoa.focus();
                    return false;
                }
                return true;
            }
        </script>    
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
                                <table cellpadding="20" cellspacing="0" align="center">
                                    <form action="page3.jsp" onsubmit="return verifica(this);">
                                        <tr>
                                        <%DecimalFormat formato = new DecimalFormat("##.##");
                                        double total2 = Double.parseDouble(total);%>
                                            <td><h4>Valor Total:</h4></td> 
                                            <td>R$<%=formato.format(total2)%></td>
                                        </tr>
                                        <tr>
                                            <td><h4>Quantas Pessoas?</h4></td> 
                                            <td><input type="text" name="numPessoa" size="3" maxlength="3" onKeyUp="somente_numero(this)" autofocus required/></td>
                                        </tr>
                                        <tr>	
                                            <td><h4>Tem 10% do Garçom?</h4></td>
                                            <td>
                                                <input type="radio" name="garcom" value="Sim" checked>Sim 
                                                <input type="radio" name="garcom" value="Nao">Não 
                                            </td>
                                        </tr>
                                        <tr>
                                        <td><input type="button" value="Voltar" onclick="window.history.back()"></td>
                                        <td><input type="submit" value="Calcular"></td>
                                        </tr>
                                 </form>
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
