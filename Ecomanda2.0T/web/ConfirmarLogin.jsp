<%-- 
    Document   : ConfirmarLogin
    Created on : 01/11/2012, 20:39:55
    Author     : 31062938
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="refresh" content="3;URL=http://andrestrada.s20.eatj.com">
        <link rel="shortcut icon" type="image/x-icon" href="Imagem/icone.ico">
        <title>Aviso</title>
    </head>
    <body>
        <%
            Class.forName("com.mysql.jdbc.Driver");                   // ConexÃ£o com o banco !
            Connection con = DriverManager.getConnection("jdbc:mySQL://localhost:3307/andrestrada", "andrestrada", "may16th");
            PreparedStatement s = con.prepareStatement("select * from login");
            ResultSet rs = s.executeQuery();
            while (rs.next()) {
                if (((request.getParameter("user").equals(rs.getString("user")) || (request.getParameter("user").equals(rs.getString("email"))))
                        && (request.getParameter("senha").equals(rs.getString("pw"))))) {   // verificaÃ§Ã£o de login!
                    String user = request.getParameter("user");
                    session.setAttribute("user", user); 
                    response.sendRedirect("page1.jsp");                                  //<jsp:forward page=".jsp"> // Outra opÃ§Ã£o de jogar para janela!

                }
            }
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
                    <table align="center"  style="border:1px solid green;">
                        <tr align="center">
                            <td>
                                <img src="Imagem/aviso.jpg"><h2><font color="red"> Usuario ou senha incorretos!</h2>
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
