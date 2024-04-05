<!DOCTYPE html>
<%-- 
Archivo: Validar Inicio de Sesion
Enlaces:
    -PerfilUsuario.jsp
    -PerfilAdmin.jsp
    -Index.html
--%>

<%@page import="Conexion.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%!
    String usuario;
    String password;
    String descripsion;
    Connection con;
    Conexion miconexion;
    Statement stmt;
    ResultSet rs;
%>
<% 
    usuario=request.getParameter("usr");
    password=request.getParameter("psw");
    miconexion = new Conexion();
    con=miconexion.getConexion();
    stmt=con.createStatement();
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body onpaste="return false" ondrag="return false" ondrop="return false;">
        <%HttpSession on =request.getSession(true);%>
        <%HttpSession on3 =request.getSession(true);%>
        <%on.setAttribute("sesion", usuario);%>
        <%on3.setAttribute("sesion2", password);%>
        
        <%
        rs=stmt.executeQuery("CALL validarLogin('"+usuario+"','"+password+"')");
        if(rs.isBeforeFirst())
            {    
                rs = stmt.executeQuery("CALL tipo('"+usuario+"')");
                if(rs.next()) {
                    if(rs.getString("tipoUsu").equals("1")) {
                      response.sendRedirect("Usuario/PerfilUsuario.jsp"); 
                    } else {
                       response.sendRedirect("Administrador/PerfilAdmin.jsp");
                    }  
                }
            }
        else
            {
               response.sendRedirect("index.html#InioReg");
            }    
        %>
    </body>
</html>