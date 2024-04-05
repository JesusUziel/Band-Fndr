<%-- 
    Document   : mostrarUsu
    Created on : 29/11/2017, 11:31:39 PM
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
   
    String Consulta=("SELECT usuario.nickname, usuario.contrasenaUsu, usuario.correo, usuario.fechaNac,usuario.sexo, instrumento.nombreInstru from instrumento INNER JOIN usuario on usuario.idInstrumento=instrumento.idInstrumento WHERE usuario.tipoUsu=1;");
    
    
    rs=stmt.executeQuery(Consulta);
    ;
%>
    <table cellspacing="12" cellpadding="10">
        <tr>
            <th>Nombre de Usuario</th>
            <th>Correo</th>
            <td>Fecha de Nacimiento</td>
            <td>Sexo</td>
            <th>Instrumento</th>
        </tr>
<%  
        while(rs.next()){
    //out.println("Encontrado:"+rs.getString("nomPersona")+" "+rs.getString("ApellidoPat")+"");
%>
        <tr>
            <td><%=rs.getString("nickname")%></td>
            <td><%=rs.getString("correo")%></td>
            <td><%=rs.getString("fechaNac")%></td>
            <td><%=rs.getString("sexo")%></td>
            <td><%=rs.getString("nombreInstru")%></td>
            
        </tr>
<%
        }
    
%>