<%-- 
    Document   : eliminar
    Created on : 29/11/2017, 09:48:29 PM
    Author     : Jesus
--%>
<%@page import="java.sql.*"%>
<%@page import="Conexion.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<%!
    String nickname;
    String usuario;
    String password;
    Connection con;
    Conexion miconexion;
    Statement stmt,stmt2,stmt3;
    ResultSet rs;
%>
<% 
    nickname=request.getParameter("buscarUsuarios");
    miconexion = new Conexion();
    con=miconexion.getConexion();
    stmt=con.createStatement();
    stmt2=con.createStatement();
    stmt3=con.createStatement();
%>
 
        

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de usuario</title>
    </head>
    <body onpaste="return false" ondrag="return false" ondrop="return false;">
       <%HttpSession on =request.getSession(true);%>
        <%on.setAttribute("sesion", usuario);%>
        <%
        stmt.execute("DELETE FROM usuario WHERE nickname=('"+nickname+"')");
        response.sendRedirect("PAListadeUsuarios.jsp");
        %>                  
          
        
        
    </body>
</html>
