<%-- 
    Document   : ConfirmarCadastro
    Created on : 03/11/2012, 10:50:18
    Author     : Willian joddy Kaneko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="refresh" content="15;URL=http://andrestrada.s20.eatj.com">
        <link rel="shortcut icon" type="image/x-icon" href="Imagem/icone.ico">
        <title>Seus dados</title>
    </head>
    <body>
        <%
            String user = request.getParameter("user");
            String email = request.getParameter("email");
            String pw = request.getParameter("pw");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mySQL://localhost:3307/andrestrada", "andrestrada", "may16th");
            PreparedStatement s = con.prepareStatement(" insert into login (user, email, pw) values(?,?,?)");
            s.setString(1, user);
            s.setString(2, email);
            s.setString(3, pw);
            boolean gravou = s.execute();
        %>
        <table border="0" width="100%">
            <tr align="center"> 
                <td colspan="3" height="100">
                    <hr>
                    <H1 align=Center><font face="arial" color="green"><img src="Imagem/logo.jpg">EcoComanda</font></H1>
                    <hr>
                </td> 
            </tr>
            <tr align="center"> 
                <td width="30%">
                    
                </td>
                <td width="40%">
                    <table align="center" style="border:1px solid green;">
                        <tr align="center">
                            <td colspan="2">
                                <h1>Cadastro inserido com sucesso!</h1><br>
                            </td>
                        </tr>
                        <tr align="center">
                            <td colspan="2">
                                <h2> Seus dados:</h2><br>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                Nome:
                            </td>
                            <td>
                                <%=user%>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                E-mail:
                            </td>
                            <td>
                                <%=email%>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                Senha:
                            </td>
                            <td>
                                <%=pw%>
                            </td>
                        </tr>
                        <tr align="center">
                            <td colspan="2">
                                <a href="index.jsp">Fazer Login</a>
                            </td>
                        </tr>                   
                    </table>
                </td>
                <td width="30%"> 
                    
                </td> 
            </tr>
            <tr align="right"> 
                <td colspan="3" height="100">
                    <%--<a href="http://www.facebook.com/pages/Eco-Comanda/429894217062638" target="_blank" 
                       onMouseOver="image.src='Imagem/facebook.png'" onMouseOut="image.src='Imagem/facebook2.jpg'">  
                    <img name="image" id="image" border="0" src="Imagem/facebook2.jpg"></a>--%>
                </td>
            </tr>      
        </table>
    </body>     
</html>
