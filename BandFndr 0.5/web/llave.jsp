

<%@page import="Conexion.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*"%>
<%!
    String llave;
    Connection con;
    Conexion miconexion;
    Statement stmt;
    ResultSet rs;
%>
<% 
    llave=request.getParameter("llave");
    miconexion = new Conexion();
    con=miconexion.getConexion();
    stmt=con.createStatement();
%>

<html>
    <head>
        
        <title>JSP Page</title>
    </head>
    <body onpaste="return false" ondrag="return false" ondrop="return false;">
        <%
        rs=stmt.executeQuery("SELECT * FROM usuario WHERE nomUsu='"+llave+"' ");
        while(rs.next()){
        
       <table>
       <tr>
       <td><%=rs.getString("correo") %></td>
       <td><%=rs.getString("descripUsu") %></td>
       </tr></table>
<%
    }
        %>
    </body>
</html>
