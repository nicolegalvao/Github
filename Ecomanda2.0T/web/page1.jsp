<%-- 
    Document   : page1
    Created on : 24/10/2012, 21:47:44
    Author     : Willian Joddy Kaneko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.text.DecimalFormat" %>
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
                    alert ("Descrição inválida.");
                    form.consumo.focus();
                    return false;
                }

                if (form.qtde.value == "" || form.qtde.value == 0)
                {
                    alert ("Qtde inválida");
                    form.qtde.focus();
                    return false;
                }
                if (form.preco.value == "" || form.preco.value <= 0)
                {
                    alert ("Preço inválido");
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
        <title>EcoComanda</title>
    </head>
    <body>

        <%! List<String> Consumos = new ArrayList<String>();
            List<String> Qtdes = new ArrayList<String>();
            List<String> Precos = new ArrayList<String>();
            int atual = 0;
            String consumo, qtde, preco;
        %>

        <%
            session.setAttribute("vConsumos", Consumos);
            session.setAttribute("vQtdes", Qtdes);
            session.setAttribute("vPrecos", Precos);
            Consumos = (ArrayList<String>) session.getAttribute("vConsumos");
            Qtdes = (ArrayList<String>) session.getAttribute("vQtdes");
            Precos = (ArrayList<String>) session.getAttribute("vPrecos");
        %>

        <H1 align=Center>EcoComanda</H1>
        <hr>
        <table cellpadding="30" cellspacing="0" align="center">
            <tr>
            <form action="valida2.jsp" onsubmit="return verifica(this);">
                <td>Item?<input type="text" name="consumo" size="30" maxlength="100" required/><br/></td>
                <td>Qtde?<input type="text" name="qtde" size="3" maxlength="6" onKeyUp="somente_numero(this)" required/><br/></td>
                <td>Preço?<input type="text" name="preco" size="3" maxlength="6" onKeyUp="somente_numero2(this)" onKeyPress="return(MascaraMoeda(this,'','.',event))" required/><br/></td>
                <td><input type="submit" value="Adicionar"/></td>
            </form>
        </tr>
        <tr>
            <td>Consumo:</td>
            <td>Qtde:</td>
            <td>Preço:</td>
            <td>Total:</td>
        </tr>
        <tr>
            <%
                //Teste
                int i = 0;
                double aux = 0;
                DecimalFormat formato = new DecimalFormat("####.##");
                for (String s : Consumos) {
                    Double total = (Double.parseDouble(Qtdes.get(i)) * Double.parseDouble(Precos.get(i)));
                    out.println("<td>" + s + "</td>"
                            + "<td>" + Qtdes.get(i) + "</td>"
                            + "<td>" + Precos.get(i) + "</td>"
                            + "<td>" + formato.format(total) + "</td>");
            %>
            <td><a href="altera.jsp?indice=<%=i%>"+">Alterar</a><br/></td>
            <td><a href="excluir.jsp?indice=<%=i%>"+">Excluir</a><br/></td>
        </tr>

        <%
                session.setAttribute("vConsumos", Consumos);
                session.setAttribute("vQtdes", Qtdes);
                session.setAttribute("Precos", Precos);
                i++;
                aux = aux + total;

            }
        %>
    </table>   
    <hr>
    <table cellpadding="30" cellspacing="0" align=center>
        <tr>
        <script>
            function fecharConta(){
                confirm("Pode fechar a conta?");
            }
                </script>
        <td><form action="page2.jsp">
                <%
                    session.setAttribute("vConsumos", Consumos);
                    session.setAttribute("vQtdes", Qtdes);
                    session.setAttribute("Precos", Precos);
                    session.setAttribute("vTotal", aux);

                %>

            <input type="submit" name="fecharConta" value="Fechar Conta"/></td>

    </form>
    <td colspan=5 align=right>Total da Conta: R$ <%=formato.format(aux)%></td>

</tr>
</table>
</body>
</html>
