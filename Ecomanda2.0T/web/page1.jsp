<%-- 
    Document   : page1
    Created on : 24/10/2012, 21:47:44
    Author     : Willian Joddy Kaneko
--%>

<%@page import="javax.xml.bind.ParseConversionEvent"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.text.DecimalFormat" %>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" type="image/x-icon" href="Imagem/icone.ico">
        <script>
            function verifica( form )
            {
                if (form.consumo.value == "")
                {
                    alert ("Item inválido.");
                    form.consumo.focus();
                    return false;
                }

                if (form.qtde.value == "" || form.qtde.value == 0)
                {
                    alert ("Qtde inválida.");
                    form.qtde.focus();
                    return false;
                }
                if (form.preco.value == "" || form.preco.value <= 0)
                {
                    alert ("Preço inválido.");
                    form.preco.focus();
                    return false;
                }
                return true;
            }
        </script>
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
            function somente_numero2(campo){  
                var digits="0123456789."  
                var campo_temp   
                for (var i=0;i<campo.value.length;i++){  
                    campo_temp=campo.value.substring(i,i+1)   
                    if (digits.indexOf(campo_temp)==-1){  
                        campo.value = campo.value.substring(0,i);  
                    }  
                }  
            }  
        </script> 
        <script language="javascript">
            function MascaraMoeda(objTextBox, SeparadorMilesimo, SeparadorDecimal, e){
                var sep = 0;
                var key = '';
                var i = j = 0;
                var len = len2 = 0;
                var strCheck = '0123456789';
                var aux = aux2 = '';
                var whichCode = (window.Event) ? e.which : e.keyCode;
                if (whichCode == 13) return true;
                key = String.fromCharCode(whichCode); // Valor para o código da Chave
                if (strCheck.indexOf(key) == -1) return false; // Chave inválida
                len = objTextBox.value.length;
                for(i = 0; i < len; i++)
                    if ((objTextBox.value.charAt(i) != '0') && (objTextBox.value.charAt(i) != SeparadorDecimal)) break;
                aux = '';
                for(; i < len; i++)
                    if (strCheck.indexOf(objTextBox.value.charAt(i))!=-1) aux += objTextBox.value.charAt(i);
                aux += key;
                len = aux.length;
                if (len == 0) objTextBox.value = '';
                if (len == 1) objTextBox.value = '0'+ SeparadorDecimal + '0' + aux;
                if (len == 2) objTextBox.value = '0'+ SeparadorDecimal + aux;
                if (len > 2) {
                    aux2 = '';
                    for (j = 0, i = len - 3; i >= 0; i--) {
                        if (j == 3) {
                            aux2 += SeparadorMilesimo;
                            j = 0;
                        }
                        aux2 += aux.charAt(i);
                        j++;
                    }
                    objTextBox.value = '';
                    len2 = aux2.length;
                    for (i = len2 - 1; i >= 0; i--)
                        objTextBox.value += aux2.charAt(i);
                    objTextBox.value += SeparadorDecimal + aux.substr(len - 2, len);
                }
                return false;
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

        <%  
            ArrayList<String> Consumos = (ArrayList<String>)session.getAttribute("Consumos");
            ArrayList<String> Qtdes = (ArrayList<String>)session.getAttribute("Qtdes");
            ArrayList<String> Precos = (ArrayList<String>)session.getAttribute("Precos");

            session.setAttribute("Consumos", Consumos);
            session.setAttribute("Qtdes", Qtdes);
            session.setAttribute("Precos", Precos);
            Consumos = (ArrayList<String>) session.getAttribute("Consumos");
            Qtdes = (ArrayList<String>) session.getAttribute("Qtdes");
            Precos = (ArrayList<String>) session.getAttribute("Precos");
        %>
        
        <table border="0" width="100%">
            <tr align="center"> 
                <td height="100">
                    <hr>
                    <H1 align=Center><font face="arial" color="green"><img src="Imagem/logo.jpg">EcoComanda</font></H1> 
                    <hr>
                    <h5 align="right"> <font face="calibri">Bem-vindo!</font> |
                        <a href="#" onclick="abrir()"><font face="calibri">MyEcomanda</font></a> | 
                        <a href="logout.jsp"><font face="calibri">Logout</font></a></h5>
                </td> 
            </tr>
            <tr align="center"> 
                <td>
                    <table style="border:1px solid green;" width="70%" >
                        <tr>
                            <form action="valida2.jsp" onsubmit="return verifica(this);">
                                <td width="25%">
                                    Item?<input type="text" name="consumo" size="15" maxlength="100" autofocus required/><br/>
                                </td>
                                <td width="25%">
                                    Qtde?<input type="text" name="qtde" size="3" maxlength="6" onKeyUp="somente_numero(this)" required/><br/>
                                </td>
                                <td width="25%">
                                    Preço?<input type="text" name="preco" size="3" maxlength="6" onKeyUp="somente_numero2(this)" onKeyPress="return(MascaraMoeda(this,'','.',event))" required/><br/>
                                </td>
                                <td width="25%">
                                    <input type="submit" value="Adicionar"/>
                                </td>
                            </form>
                        </tr>
                    </table>     
                </td>
            </tr>
            <tr align="center">
                <td>
                    <table style="border:0px solid green;" width="70%">
                        <tr>
                            <td id="consumo">Consumo:</td>
                            <td id="qtde">Qtde</td>
                            <td id="preco">Preço:</td>
                            <td id="total">Total:</td>
                        </tr>
                        <%
                        DecimalFormat formato = new DecimalFormat("##.##");
                        double aux =0;
                        if(Consumos!=null){
                        for(int i=0; i<Consumos.size(); i++){%>
                            <tr>
                                <td headers="consumo"><li><%=Consumos.get(i)%></li></td>
                                <td headers="qtde"><%=Qtdes.get(i).toString()%></td>
                                <td headers="preco"><%=Precos.get(i).toString()%></td>
                                <td headers="total"><%Double total = (Double.parseDouble(Qtdes.get(i)) * Double.parseDouble(Precos.get(i)));%><%=formato.format(total)%></td>
                                <td><a href="altera.jsp?indice=<%=i%>"+">Alterar</a><br/></td>
                                <td><a href="excluir.jsp?indice=<%=i%>"+">Excluir</a><br/></td>
                                <%
                                    session.setAttribute("Consumos", Consumos);
                                    session.setAttribute("Qtdes", Qtdes);
                                    session.setAttribute("Precos", Precos);           
                                    aux = aux + total;
                        }
                                %>
                            </tr>
                            <%                          
                                session.setAttribute("Consumos", Consumos);
                                session.setAttribute("Qtdes", Qtdes);
                                session.setAttribute("Precos", Precos);           
                            %>
                    </table>
                </td>
            </tr>
            <tr>
                <td>  
                    <hr>
                        <table cellpadding="30" cellspacing="0" align=center>
                            <tr>
                                <td>
                                    <form action="page2.jsp" method="post">
                                        <%
                                            session.setAttribute("Total", aux);
                                        %>
                                        <input type="submit" name="fecharConta" value="fechar conta"/>
                                    </form>
                                </td>
                                <td colspan=5 align=right>
                                    Total da Conta: R$ <%=formato.format(aux)%>
                                    <%}%>
                                </td>
                            </tr>
                        </table>
                </td>
            </tr>
</body>
</html>
