<%-- 
    Document   : Paso2
    Created on : 13/11/2017, 05:59:01 PM
    Author     : Jesus
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="Conexion.Conexion"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%!
    Connection con;
    Conexion miconexion;
    Statement stmt,stmt2,stmt3;
    ResultSet rs;
%>
<% 
    miconexion = new Conexion();
    con=miconexion.getConexion();
    stmt=con.createStatement();
    rs=stmt.executeQuery("SELECT * FROM usuario ORDER BY idUsu DESC LIMIT 0,1;");
    
    
%>
<html>
    <head>
        <title>Registro - Pasos</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Imgs/favicon.ico" rel='shortcut icon' type='image/x-icon'>
        <link type="text/css" href="CSS/PDbarra.css" rel="stylesheet">
        <link type="text/css" href="CSS/fuentes.css" rel="stylesheet">
        <script language="Javascript" type="text/javascript" src="JS/IFImagenFondo.js"></script>
    </head>
   
    <body onpaste="return false" ondrag="return false" ondrop="return false;">
        <div class="deco">
            <div class="decodos"><h5 class="LetraOne">BAND &nbsp; FNDR</h5></div>
        </div>
        <br><br><br>
        <div class="welcom">
            <%--<iframe src="IFPasoDos.jsp" width="500px" height="1200px" frameborder="0" scrolling="no" name="Ventanas"></iframe>--%>
            <div class="acomoda">
            <br><br><br>
            
        <%while(rs.next())
        {
        %>
            <p class="Bien">Bienvenido <%=rs.getString("nickname")%></p>
        <%
        }
        con.close();
        %>
    
            <br><br><br><br>
            <div class="struct">
                <div class="img"></div>
                <br><br><br>
                <p class="CA">Esperemos que disfrutes tu estancia y que sea larga en nuestro sitio web en el cual podrás subir tus 
                proyectos musicales y formar parte de una agrupación musical, al igual que puedas interactuar con diferentes personas 
                y vivir una gran experiencia. Para continuar oprime el botón de siguiente.</p>
            </div>
            <br><br>
            <a href="PasoTres.jsp"><button class="siguiente">Siguiente &nbsp; &gt;&gt;</button></a>
        </div>
        </div>
    </body>
</html>
