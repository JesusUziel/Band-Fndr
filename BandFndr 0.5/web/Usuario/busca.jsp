

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
    
    
    String letra=request.getParameter("valorBusqueda");
    String instrument=request.getParameter("valorCaja");
   
    String Consulta="SELECT * FROM usuario WHERE tipoUsu=1 AND nickname LIKE '"+letra+"%' OR idInstrumento="+instrument+";";
    
    
    rs=stmt.executeQuery(Consulta);
    ;
%>
    <table>
        <tr>
            <th>Nombre de Usuario</th>
            <th>Correo</th>
        </tr>
<%  
        while(rs.next()){
    //out.println("Encontrado:"+rs.getString("nomPersona")+" "+rs.getString("ApellidoPat")+"");
%>
        <tr>
            <td><%=rs.getString("nickname")%></td>
            <td><%=rs.getString("descripUsu")%></td>
            <td><%=rs.getString("correo")%></td>
        </tr>
<%
        }
    
%>
        