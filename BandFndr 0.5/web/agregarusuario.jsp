<%@page import="java.util.List"%>
<%@page import="Clases.infousuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="Conexion.Conexion"%>
<%@page import="java.sql.Connection"%>



<!DOCTYPE html>
<% HttpSession on=request.getSession(true); %>

<%!
    String nickname;
    
    
%>

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
%>

<%
    nickname=request.getParameter("telescope");
%>
<%
    String Consulta=("insert into testing (test) values ('"+nickname+"')");
%>
    
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body onpaste="return false" ondrag="return false" ondrop="return false;">
    <%
        
        out.println(nickname);  
    %>
    </body>
</html>


    