<%-- 
    Document   : registrarbanda
    Created on : 06/12/2017, 12:04:52 AM
    Author     : Jesus
   
--%>
<%@page import="Conexion.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*"%>




<%!
    String nomBanda;
    String imagen;
    String experiencia;
    String genero;
    String idGenero;
    Connection con;
    Conexion miconexion;
    Statement stmt;
    ResultSet rs;
%>
<% 
    nomBanda=request.getParameter("NomGrupo");
    imagen=request.getParameter("files[]");
    experiencia=request.getParameter("comentario");
    idGenero=request.getParameter("GeneroMusical");
    miconexion = new Conexion();
    con=miconexion.getConexion();
    stmt=con.createStatement();
%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
        <%
        stmt.execute("INSERT INTO banda (nomBanda, experiencia, imagen, idGenero) VALUES ('"+nomBanda+"','"+experiencia+"','"+imagen+"','"+idGenero+"')");
        response.sendRedirect("PerfilUsuario.jsp");
         
        %>
    
</html>
