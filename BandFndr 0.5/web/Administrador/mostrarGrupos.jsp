<%-- 
    Document   : mostrarGrupos
    Created on : 1/12/2017, 11:44:39 PM
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
   
    String Consulta=("SELECT banda.nomBanda, banda.experiencia, genero.genero FROM genero INNER JOIN banda on banda.idGenero=genero.idGenero;");
    
    
    rs=stmt.executeQuery(Consulta);
    ;
%>
    <table cellspacing="10" cellpadding="10">
        <tr>
            <th>Nombre de la Banda</th>
            <th>Experiencia de la banda</th>
            <th>Genero de la banda</th>
        </tr>
<%  
        while(rs.next()){
    //out.println("Encontrado:"+rs.getString("nomPersona")+" "+rs.getString("ApellidoPat")+"");
%>
        <tr>
            <td><%=rs.getString("nomBanda")%></td>
            <td><%=rs.getString("experiencia")%></td>
            <td><%=rs.getString("genero")%></td>
        </tr>
<%
        }
    
%>