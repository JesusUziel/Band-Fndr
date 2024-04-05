<%-- 
    Document   : registrarEvento
    Created on : 7/12/2017, 11:49:42 PM
    Author     : Jesus
--%>
<%@page import="Conexion.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*"%>




<%!
    String nomEvento, descripcion, ubicacion;
    String imagen;
    String fechaEvento, dia, mes, ano;
    String horaEvento;
    Connection con;
    Conexion miconexion;
    Statement stmt;
    ResultSet rs;
%>
<% 
    nomEvento=request.getParameter("NombreEvento");
    imagen=request.getParameter("files[]");
    fechaEvento=request.getParameter("comentario");
    dia=request.getParameter("DiaEvent");
    mes=request.getParameter("MesEvent");
    ano=request.getParameter("YearEvent");
    ubicacion=request.getParameter("ubicacionEvent");
    descripcion=request.getParameter("descripEvent");
    horaEvento=request.getParameter("HoraEvento");
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
        stmt.execute("INSERT INTO evento (nomEvento, fechaEvento, imagen, horaEvento, descripcion, ubicacion) VALUES ('"+nomEvento+"','"+ano+"-"+mes+"-"+dia+"','"+imagen+"','"+horaEvento+"','"+descripcion+"','"+ubicacion+"')");
        response.sendRedirect("PAVerEventos.jsp");
         
        %>
    
</html>
