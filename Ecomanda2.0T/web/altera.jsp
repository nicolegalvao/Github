<%-- 
    Document   : notas2
    Created on : 29/09/2012, 21:52:11
    Author     : Gustavo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script>
            function verifica( form )
            {
                if (form.consumo.value == "")
                {
                    alert ("Descrição Inválida");
                    form.consumo.focus();
                    return false;
                }
                if (form.qtde.value == "" || form.qtde.value == 0)
                {
                    alert ("Qtde Inválida");
                    form.qtde.focus();
                    return false;
                }
                if (form.preco.value == "" || form.preco.value <= 0)
                {
                    alert ("Preço Inválido");
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
        <title>Alterar</title>
    </head>
    <body>
        <%
            List<String> Consumos = (ArrayList<String>) session.getAttribute("vConsumos");
            List<String> Qtdes = (ArrayList<String>) session.getAttribute("vQtdes");
            List<String> Precos = (ArrayList<String>) session.getAttribute("vPrecos");
            session.setAttribute("id", request.getParameter("indice"));
        %>
        <H1 align=Center>EcoComanda</H1>
        <hr>
        <table cellpadding="30" cellspacing="0" align="center">

            <tr>
            <form action="alterando.jsp" onsubmit="return verifica(this);">
                <td>Item:  <%=String.valueOf(Consumos.get(Integer.parseInt(request.getParameter("indice"))))%> <br/></td>
                <td>Qtde?<input type="text" name="qtde" value="<%=String.valueOf(Qtdes.get(Integer.parseInt(request.getParameter("indice"))))%>" onKeyUp="somente_numero(this)"/><br/></td>
                <td>Preço?<input type="text" name="preco" value="<%=String.valueOf(Precos.get(Integer.parseInt(request.getParameter("indice"))))%>" onKeyPress="return(MascaraMoeda(this,'','.',event))"/><br/></td>
                <td><input type="submit" value="Alterar"></td>
            </form>
        </tr>
    </table>
    <hr>
</body>
</html>
