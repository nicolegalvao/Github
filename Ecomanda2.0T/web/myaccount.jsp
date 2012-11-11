<%-- 
    Document   : myaccount
    Created on : 07/11/2012, 14:16:19
    Author     : Willian joddy Kaneko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" type="image/x-icon" href="Imagem/icone.ico">
        <title>JSP Page</title>
    </head>
    <body>
        <% try{
            Class.forName("com.mysql.jdbc.Driver");                 
            Connection con = DriverManager.getConnection("jdbc:mySQL://localhost:3307/andrestrada", "andrestrada", "may16th");
            PreparedStatement s = con.prepareStatement("select * from login");
            ResultSet rs = s.executeQuery();
            while (rs.next()) {
                if (session.getAttribute("user").equals(rs.getString("user")) || session.getAttribute("user").equals(rs.getString("email"))) {
                    String nome = rs.getString("user");
                    String email = rs.getString("email");
                    String pw = rs.getString("pw");
                    session.setAttribute("nome", nome);
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
                <td width="40%">
                    <table align="center"  style="border:1px solid green;">
                        <tr align="center">
                            <td>
                                <table cellpadding="20" cellspacing="0" align="center">
                                    <tr> 
                                        <td colspan="2">
                                            <h2><font face="calibri">Seus Dados EcoComanda</font></h2></br>
                                        </td>
                                    </tr>
                                    <tr><td>Nome:</td><td><%=nome%></td></tr>
                                    <tr><td>E-mail:</td><td><%=email%></td></tr>
                                    <tr><td>Senha:</td><td><%=pw%></td></tr>
                                </table>
                            </td>
                        </tr>
                    </table>

                </td> 
            </tr>   
        </table>
        <%
                }else{
                    
                }
            }
        }catch(Exception e){
            e.printStackTrace();
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

                <td width="40%">
                    <table align="center"  style="border:1px solid green;">
                        <tr align="center">
                            <td>
                                <table cellpadding="10" cellspacing="0" align="center">
                                    <tr> 
                                        <td colspan="2">
                                            <h2><font face="calibri">Seus Dados EcoComanda</font></h2></br>
                                        </td>
                                    </tr>
                                    <tr><td>Nome:</td><td></td></tr>
                                    <tr><td>E-mail:</td><td></td></tr>
                                    <tr><td>Senha:</td><td></td></tr>
                                </table>
                            </td>
                        </tr>
                    </table>

                </td>

            </tr>
     
        </table>
            <%
         }
        %>
        
        <%%>
    </body>
</html>
