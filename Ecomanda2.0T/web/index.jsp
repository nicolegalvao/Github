<%-- 
    Document   : index
    Created on : 29/09/2012, 21:41:58
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
            if (form.nome.value == "")
		{
		alert ("Nome inválido");
		form.nome.focus();
		return false;
		}
            if (form.senha.value == "")
                {
                alert ("Senha inválida");
                form.nome.focus();
                return false;
                }
	return true;
        }
        </script>     
        <title>Login EcoComanda</title>
    </head>
    <body>     
        <%!
            List<String> Usuarios = new ArrayList<String>();
            List<String> Senhas = new ArrayList<String>();
        %>       
        <table cellpadding="30" cellspacing="0" align="center">
            <H1 align=Center>EcoComanda</H1>
            <h2 align="Center">Bem-Vindo</h2>
            <tr>
                <form action="page1.jsp">
                    <%
                        session.setAttribute("vUser", Usuarios);
                        session.setAttribute("vPass", Senhas);
                    %>
                    <td>Nome  :<input type="text" name="nome"/><br/>Senha :<input type="password" name="senha"/><br/></td>
                    <td><input type="submit" name="login" value="Entrar"/></td>
                </form>
            </tr>
        </table>
    </body>
</html>
