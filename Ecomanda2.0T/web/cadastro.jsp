<%-- 
    Document   : cadastro
    Created on : 02/11/2012, 19:23:16
    Author     : Willian joddy Kaneko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" type="image/x-icon" href="Imagem/icone.ico">
        <script>
            function verifica( form )
            {
                if (form.user.value == "")
                {
                    alert ("Nome inválido.");
                    form.user.focus();
                    return false;
                }

                if (form.email.value == "")
                {
                    alert ("E-mail inválido.");
                    form.email.focus();
                    return false;
                }
                if (form.pw.value == "")
                {
                    alert ("Senha inválida.");
                    form.pw.focus();
                    return false;
                }
                return true;
            }
        </script>
        <title>Cadastro</title>
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
                    
                </td>
                <td width="20%">
                    <table cellpadding="30" cellspacing="0" align="center" style="border:1px solid green;">
                        <form action="ConfirmarCadastro.jsp" onsubmit="return verifica(this);">
                        <tr align="center">
                            <td>
                                Nome Completo:
                            </td>
                            <td> 
                                <input type="text" name="user" placeholder="Digite seu nome completo " autofocus required/>
                            </td>
                        </tr>
                        <tr align="center">
                            <td>
                                E-mail: 
                            </td>
                            <td> 
                                <input type="email" name="email" placeholder="Digite seu Email" required/>
                            </td>
                        </tr>
                        <tr align="center">
                            <td>
                                Senha:
                            </td>
                            <td> 
                                <input type="password" name="pw" required/> 
                            </td> 
                        </tr>
                        <tr align="center">
                            <td>
                                <input type="button" value="Voltar" onclick="window.history.back()">
                            </td>
                            <td>
                                <input type="submit" value="Registrar">
                            </td>
                        </tr>
                    </table>
                </td>
                <td width="40%"> 
                    
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
