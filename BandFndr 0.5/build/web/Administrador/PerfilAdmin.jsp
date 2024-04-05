<%-- 
    Document   : PerfilAdmin
    Created on : 21/11/2017, 03:32:07 PM
    Author     : diego
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.io.*,java.util.*,java.net.*,java.sql.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Aministracion</title>
        <link href="../Imgs/favicon.ico" rel='shortcut icon' type='image/x-icon'>
        <link type="text/css" href="../CSS/PAdministrador.css" rel="stylesheet">
        <link type="text/css" href="../CSS/fuentes.css" rel="stylesheet">
        <%HttpSession on =request.getSession(true); 
        String on2=(String)on.getAttribute("sesion");
        if(on.isNew())
            {
            response.sendRedirect("../index.html");
            return;
            }
        if(on==null)
            {
            response.sendRedirect("../index.html");
            return;
            }
        if(on.getAttribute("sesion")==null)
            {
            response.sendRedirect("../index.html");
            return;
            }   
        %>
    </head>
    <body onpaste="return false" ondrag="return false" ondrop="return false;">
        <div class="cabecera">
            <div class="BT">
                <p class="adminBand"><a href="PerfilAdmin.jsp" class="decoralink">ADMINISTRACI&Oacute;N DE BAND FNDR</a></p>
            </div>
            <div id="header">
                <nav> 
                    <ul class="nav">
                        <li><a href="PAVerGrupos.jsp">Ver Grupos</a></li>
                        <li><a href="PAListadeUsuarios.jsp">Lista de Usuarios</a></li>
                        <li><a href="">Opciones</a>
                            <ul>
                            <li><a href="PACrearEvento.jsp">Crear Evento</a></li>
                            <li><a href="PACrearEvento2.jsp">Relacionar Evento</a></li>
                            <li><a href="PAVerEventos.jsp">Ver Eventos</a></li>
                            <li><a href="boletos.jsp">Boletos</a></li>
                            <li><a href="../Cerrar.jsp">Cerrar Sesion</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
        <div class="lil">
            <div class="dota">
                <p class="bienadmin">Bienvenido Administrador <%=on2%> </p>
                <br><br>
                <p class="dicon">Que tengas un excelente d&iacute;a en este servicio</p>
            </div>
        </div>
    </body>
</html>
