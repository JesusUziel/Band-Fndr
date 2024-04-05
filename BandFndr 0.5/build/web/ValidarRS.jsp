<!DOCTYPE html>
<%-- 
Archivo: Validar Registro de Usuario
Enlaces:
    -PasoDos.jsp
--%>

<%@page import="java.sql.*"%>
<%@page import="Conexion.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%!
    String nomUsu,apaterno,amaterno,nickname,contrasenaUsu,correo,domicilioUsu,sexo, dia, mes, ano,idInstrumento;
    String usuario;
    String password;
    int id;
    Connection con;
    Conexion miconexion;
    Statement stmt,stmt2,stmt3;
    ResultSet rs;
%>
<% 
    nomUsu=request.getParameter("Nombre");
    apaterno=request.getParameter("Apaterno");
    amaterno=request.getParameter("Amaterno");
    nickname=request.getParameter("NomUsuario");
    contrasenaUsu=request.getParameter("Contrasena");
    correo=request.getParameter("Correo");
    domicilioUsu=request.getParameter("domicilio");
    sexo=request.getParameter("Genero");
    dia=request.getParameter("Dia");
    mes=request.getParameter("Mes");
    ano=request.getParameter("Year");
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
        stmt.executeQuery("CALL registrar('"+nomUsu+"','"+apaterno+"','"+amaterno+"','"+nickname+"','"+contrasenaUsu+"','"+correo+"','"+domicilioUsu+"','"+ano+"-"+mes+"-"+dia+"','"+sexo+"')");
        response.sendRedirect("PasoDos.jsp");
        %>                  
          
        
        
    </body>
</html>
