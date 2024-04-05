<%-- 
    Document   : registrarboleto
    Created on : 13/03/2018, 07:04:16 PM
    Author     : Jesus
--%>
<%@page import="java.sql.*"%>
<%@page import="Conexion.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<%!
    String cantidad, idBanda, costoboleto;
    String usuario;
    Connection con;
    Conexion miconexion;
    Statement stmt,stmt2,stmt3;
    ResultSet rs;
%>
<% 
    cantidad=request.getParameter("cantidad");
    idBanda=request.getParameter("boletos");
    costoboleto=request.getParameter("precio");
    miconexion = new Conexion();
    con=miconexion.getConexion();
    stmt=con.createStatement();
    stmt2=con.createStatement();
    stmt3=con.createStatement();
%>
 
        

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de boleto</title>
    </head>
    <body onpaste="return false" ondrag="return false" ondrop="return false;">
       <%HttpSession on =request.getSession(true);%>
        <%on.setAttribute("sesion", usuario);%>
        <%
        stmt.execute("INSERT INTO boletos (idBanda, tipoboleto,costoboleto) VALUES ('"+idBanda+"','"+cantidad+"','"+costoboleto+"')");
        response.sendRedirect("boletos.jsp");
        %>                  
          
        
        
    </body>
</html>
