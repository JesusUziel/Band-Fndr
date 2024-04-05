<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="Conexion.Conexion"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%!
    Connection con;
    Conexion miconexion;
    Statement stmt;
    ResultSet rs;
%>
<% 
    
    miconexion = new Conexion();
    con=miconexion.getConexion();
    stmt=con.createStatement();
    String man=request.getParameter("man");
%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
        <%
            stmt.executeQuery("CALL regPasoTres('"+man+"')");
         response.sendRedirect("index.html");
        %>
    
</html>
