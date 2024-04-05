<%-- 
    Document   : PACrearEvento2
    Created on : 8/12/2017, 01:15:19 AM
    Author     : Jesus
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administracion - Crear Evento</title>
        <link href="../Imgs/favicon.ico" rel='shortcut icon' type='image/x-icon'>
        <link type="text/css" href="../CSS/PACrearEventos.css" rel="stylesheet">
        <link type="text/css" href="../CSS/fuentes.css" rel="stylesheet">
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
        <form name="formuEvent2" method="post" action="registrarEvento2.jsp">
        <div class="divstruct">
            <div class="acomUno">
                <p class="bip">Relacionar Evento</p>
                <p class="suft">Une las Bandas con los eventos Correspondientes</p>
                <br><br>
                <br><br>
                <label name="grupo" class="batiz">Id del grupo</label>
                <br><br>
                <input type="text" name="idgru" id="grupo" class="apps" placeholder="Id Grupo">
                <br><br>
                <label name="evento" class="batiz">Id del evento</label>
                <br><br>
                <input type="text" name="idevent" id="evento" class="apps" placeholder="Id Evento">
                <br><br><br>
                <p class="iano">Una vez oprimas el boton el evento se relacionara con las bandas</p>
                <input type="submit" value="Relacionar" class="botoevent">
            </div>
            <div class="acomDos">
                <iframe src="mostrarEvento2.jsp" height="300px" width="450px"  frameborder="0" scrolling="yes" name="Ventanas"></iframe>
                <br><br>
                <iframe src="mostrarGrupos2.jsp" height="300px" width="450px"  frameborder="0" scrolling="yes" name="Ventanas"></iframe>
            </div>
        </div>
        </form>
    </body>
</html>
