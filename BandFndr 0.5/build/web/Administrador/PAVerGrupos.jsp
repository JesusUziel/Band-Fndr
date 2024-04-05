<%-- 
    Document   : PAVerGrupos
    Created on : 1/12/2017, 11:42:50 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administracion - Ver Grupos</title>
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
            <p class="decofal">Ver Grupos</p>
            <p class="elpapu">Checa la lista de grupos</p>
        </div>
        <div class="trp">
            <br><br>
        <form name="FormElimGrup" method="post" action="eliminar2.jsp">
        <label name="lblBuscaGrupo" class="elamor">Introduce el Nombre del Grupo:</label>
        <br>
        <input type="text" name="buscarGrupos" id="buscaGrupos" class="buscaUsus" placeholder="Grupo"> <input type="submit" value="Eliminar Grupo" class="usu">
        </form>
            <br><br>
             <iframe src="mostrarGrupos.jsp" height="330px" width="800px"  frameborder="0" scrolling="yes" name="Ventanas"></iframe>
        </div>
        
    </body>
</html>
