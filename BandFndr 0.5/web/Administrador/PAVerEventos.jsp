<%-- 
    Document   : PAVerEventos
    Created on : 26/11/2017, 11:28:29 AM
    Author     : Jesus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administracion - Ver Eventos</title>
        <link href="../Imgs/favicon.ico" rel='shortcut icon' type='image/x-icon'>
        <link type="text/css" href="../CSS/PAVEventos.css" rel="stylesheet">
        <link type="text/css" href="../CSS/fuentes.css" rel="stylesheet">
        <link type="text/css" href="../CSS/PAEliminarComponentes.css" rel="stylesheet">
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
        <div class="act">
            <p class="decofal">Ver Eventos</p>
            <p class="elpapu">Checa la lista de eventos creados</p>
        </div>
        <div class="trp">
            <br><br>
        <form name="FormElimGrup" method="post" action="eliminar3.jsp">
        <label name="lblBuscaEventos" class="elamor">Introduce el Nombre del Evento:</label>
        <br>
        <input type="text" name="buscarEventos" id="buscaEventos" class="buscaUsus" placeholder="Evento"> <input type="submit" value="Eliminar Evento" class="usu">
        </form>
            <br><br>
             <iframe src="mostrarEvento.jsp" height="320px" width="800px"  frameborder="0" scrolling="yes" name="Ventanas"></iframe>
        </div>
        
    </body>
</html>
