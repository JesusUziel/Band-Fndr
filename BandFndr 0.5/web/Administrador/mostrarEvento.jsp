<%-- 
    Document   : mostrarEvento
    Created on : 1/12/2017, 07:42:52 PM
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
   
    String Consulta=("SELECT evento.nomEvento, evento.fechaEvento, evento.horaEvento, banda.nomBanda, genero.genero from evento INNER JOIN bandaevento on bandaevento.idEvento=evento.idEvento INNER JOIN banda ON banda.idBanda=bandaevento.idBanda INNER JOIN genero ON genero.idGenero=banda.idGenero;");
    rs=stmt.executeQuery(Consulta);
    ;
%>
    <table cellspacing="10" cellpadding="10">
        <tr>
            <th>Nombre del evento</th>
            <th>Fecha del evento</th>
            <th>Hora del evento</th>
            <th>Nombre de la banda</th>
            <th>Genero de la Banda</th>
        </tr>
<%  
        while(rs.next()){
    //out.println("Encontrado:"+rs.getString("nomPersona")+" "+rs.getString("ApellidoPat")+"");
%>
        <tr>
            <td><%=rs.getString("nomEvento")%></td>
            <td><%=rs.getString("fechaEvento")%></td>
            <td><%=rs.getString("horaEvento")%></td>
            <td><%=rs.getString("nomBanda")%></td>
            <td><%=rs.getString("genero")%></td>
        </tr>
<%
        }
    
%>
