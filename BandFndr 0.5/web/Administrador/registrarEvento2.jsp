<%-- 
    Document   : registrarEvento2
    Created on : 8/12/2017, 01:31:53 AM
    Author     : Jesus
--%>
<%@page import="Conexion.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*"%>




<%!
    String idBanda, idEvento;
    Connection con;
    Conexion miconexion;
    Statement stmt;
    ResultSet rs;
%>
<% 
    idEvento=request.getParameter("idevent");
    idBanda=request.getParameter("idgru");
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
        stmt.execute("INSERT INTO bandaevento (idBanda, idEvento) VALUES ('"+idBanda+"','"+idEvento+"')");
        response.sendRedirect("PACrearEvento2.jsp");
         
        %>
    
</html>