<%-- 
    Document   : eventazos
    Created on : 10/12/2017, 09:55:35 PM
    Author     : Jesus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link type="text/css" href="CSS/PUExplorarMusica.css" rel="stylesheet">
        <link type="text/css" href="CSS/fuentes.css" rel="stylesheet">
    </head>
    <body onpaste="return false" ondrag="return false" ondrop="return false;">
        <div class="acom">
            <br>
            <label name="lblBEventos" class="Bpersona">Proximos Eventos:</label>
            <br><br>
            <iframe src="mostareeventos2.jsp" height="500px" width="800px"  frameborder="0" scrolling="yes" name="Ventanas"></iframe>
        </div>
    </body>
</html>
