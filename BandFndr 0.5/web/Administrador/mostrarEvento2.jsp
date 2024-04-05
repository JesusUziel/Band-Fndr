<%-- 
    Document   : mostrarEvento2
    Created on : 8/12/2017, 01:26:22 AM
    Author     : Jesus
--%>
<%@page import="Conexion.Conexion"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
    
%>
<%
    
    Connection con;
    Conexion miconexion;    
    miconexion = new Conexion();
    con=miconexion.getConexion();
    
    Statement stmt=con.createStatement();
    ResultSet rs;
   
    String Consulta=("SELECT evento.idEvento, evento.nomEvento, evento.fechaEvento, evento.horaEvento from evento ;");
    
    
    rs=stmt.executeQuery(Consulta);
    ;
%>
    <table cellspacing="10" cellpadding="10">
        <tr>
            <th>Id del Evento</th>
            <th>Nombre del evento</th>
            <th>Fecha del evento</th>
            <th>Hora del evento</th>
            
        </tr>
<%  
        while(rs.next()){
    //out.println("Encontrado:"+rs.getString("nomPersona")+" "+rs.getString("ApellidoPat")+"");
%>
        <tr>
            <td><%=rs.getString("idEvento")%></td>
            <td><%=rs.getString("nomEvento")%></td>
            <td><%=rs.getString("fechaEvento")%></td>
            <td><%=rs.getString("horaEvento")%></td>
        </tr>
<%
        }
    
%>