<%-- 
    Document   : index
    Created on : 05/11/2012, 08:22:49
    Author     : Willian joddy Kaneko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="buttons.css" rel="styleSheet" type="text/css">
        <link rel="shortcut icon" type="image/x-icon" href="Imagem/icone.ico">
        <title>Bem-Vindo ao Eco-comanda</title>
    </head>
    <body>
        <table border="0" width="100%">
            <tr align="center"> 
                <td colspan="3" height="100">
                    <hr>
                    <H1 align=Center><font face="arial" color="green"><img src="Imagem/logo.jpg">EcoComanda</font></H1>
                    <hr>
                </td> 
            </tr>
            <tr align="center"> 
                <td width="40%">
                    <img src="Imagem/imagem1.JPG">
                </td>
                <td width="20%">
                    <table border="1" width="100%" bordercolor="green">                         
                            <form action="ConfirmarLogin.jsp">
                                <tr align="center">
                                    <td width="50%">
                                        <font face="calibri">Login: </font>
                                    </td>
                                    <td width="50%">
                                        <input type="text"  name="user" placeholder="Digite seu E-mail ou Nome" autofocus/><br/>
                                    </td>
                                </tr>
                                <tr align="center">
                                    <td width="50%">
                                        <font face="calibri">Senha: </font>
                                    </td>
                                    <td width="50%">
                                        <input type="password" name="senha" placeholder="senha"/><br/>
                                    </td>
                                </tr>
                                <tr align="center">
                                    <td colspan="2">
                                        <input type="submit" id="select_imc" value="Entrar ▸"/><br>
                                        <font face="calibri">Não tem uma conta da EcoComanda?</font></br>
                                        <a href="cadastro.jsp">Cadastre-se já</a>
                                    </td>
                                </tr>                           
                            </form>                        
                    </table>
                </td>
                <td width="40%"> 
                    <img src="Imagem/imagem2.JPG" >
                </td> 
            </tr>
            <tr align="right"> 
                <td colspan="3" height="100">
                    <a href="http://www.facebook.com/pages/Eco-Comanda/429894217062638" target="_blank" 
                       onMouseOver="image.src='Imagem/facebook.png'" onMouseOut="image.src='Imagem/facebook2.jpg'">  
                    <img name="image" id="image" border="0" src="Imagem/facebook2.jpg"></a>
                </td>
            </tr>      
        </table>
    </body>
</html>
