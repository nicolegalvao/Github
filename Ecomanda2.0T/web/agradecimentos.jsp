<%-- 
    Document   : agradecimentos
    Created on : 24/10/2012, 12:49:04
    Author     : Willian joddy Kaneko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*;" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" type="image/x-icon" href="Imagem/icone.ico">
        <div id="fb-root"></div>
        <script>(function(d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s); js.id = id;
            js.src = "//connect.facebook.net/pt_BR/all.js#xfbml=1";
            fjs.parentNode.insertBefore(js, fjs);
            }(document, 'script', 'facebook-jssdk'));
        </script>
        <script type="text/javascript">
            function abrir(){
            window.open("myaccount.jsp","Janela","status=no,width=330,height=480,left=920,top=130,location=no,menubar=no,toolbar=no,resizable=yes,scrollbars=no,titlebar=no" )
            setTimeout("fechar()", 30)
            }
        </script>
        <title>Agradecimentos</title>
    </head>
    <body>

        <table border="0" width="100%">
            <tr align="center"> 
                <td colspan="3" height="100">
                    <hr>
                    <H1 align=Center><font face="arial" color="green"><img src="Imagem/logo.jpg">EcoComanda</font></H1>
                    <hr><h5 align="right"><a href="#" onclick="abrir()"><font face="calibri">MyEcomanda</font></a> | <a href="logout.jsp"><font face="calibri">Logout</font></a></h5>
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
                                    <tr> 
                                        <td colspan="2">
                                            <h2><font face="calibri">Eco-Comanda agradece sua visita!</font></h2></br>
                                        </td>  
                                    </tr>
                                    <tr align="center">
                                        <td colspan="2">
                                            <div class="fb-like" data-href="http://www.facebook.com/pages/Eco-Comanda/429894217062638" data-send="true" data-width="400" data-show-faces="true"></div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <div class="fb-comments" data-href="http://www.facebook.com/pages/Eco-Comanda/429894217062638" data-num-posts="5" data-width="400"></div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><a href="logout.jsp">Nova Aplicação</a></td>
                                    </tr>
                                    <tr><td>Integrantes:</td><td>TIA</td></tr>
                                    <tr><td>Andre de Assis Strada</td><td>31016189</td></tr>
                                    <tr><td>Gustavo Koshiyama</td><td>31029868</td></tr>
                                    <tr><td>Nicole Galvao</td><td>31039359</td></tr>
                                    <tr><td>Willian Joddy Kaneko</td><td>31062938</td></tr>
                                    <tr><td>Yvonne Peres Mari</td><td>31002102</td></tr>
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
                    <a href="http://www.facebook.com/pages/Eco-Comanda/429894217062638" target="_blank" 
                       onMouseOver="image.src='Imagem/facebook.png'" onMouseOut="image.src='Imagem/facebook2.jpg'">  
                    <img name="image" id="image" border="0" src="Imagem/facebook2.jpg"></a>
                </td>
            </tr>      
        </table>
        
    </body>
</html>
