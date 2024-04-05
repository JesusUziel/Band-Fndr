<%-- 
    Document   : eliminar2
    Created on : 1/12/2017, 08:56:24 PM
    Author     : Jesus
--%>

<%@page import="java.sql.*"%>
<%@page import="Conexion.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<%!
    String nomBanda;
    String usuario;
    String password;
    Connection con;
    Conexion miconexion;
    Statement stmt,stmt2,stmt3;
    ResultSet rs;
%>
<% 
    nomBanda=request.getParameter("buscarGrupos");
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
        stmt.execute("DELETE FROM banda WHERE nomBanda=('"+nomBanda+"')");
        response.sendRedirect("PAVerGrupos.jsp");
        %>                  
          
        
        
    </body>
</html>

