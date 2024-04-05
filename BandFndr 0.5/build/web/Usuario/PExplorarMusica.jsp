<%-- 
    Document   : PExplorarMusica
    Created on : 22/11/2017, 07:17:55 PM
    Author     : diego
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mi Perfil - Explorar Musica </title>
        <link href="../Imgs/favicon.ico" rel='shortcut icon' type='image/x-icon'>
        <link type="text/css" href="../CSS/PUExplorarMusica.css" rel="stylesheet">
        <link type="text/css" href="../CSS/fuentes.css" rel="stylesheet">
    </head>
    <body onpaste="return false" ondrag="return false" ondrop="return false;">
        <div class="cabecera">
            <div class="BT">
                <a href="PExplorarMusica.jsp"><button class="EM"><p class="LSP">Explorar Musica</p></button></a>
            </div>
            <div id="header">
                <nav> 
                    <ul class="nav">
                        <li><a href="PerfilUsuario.jsp">Perfil</a></li>
                        <li><a href="PEditarInformacion.jsp">Editar Informaci&oacute;n</a></li>
                        <li><a href="">Opciones</a>
                            <ul>
                            <li><a href="PCrearGrupo.jsp">Crear Grupo</a></li>
                            <li><a href="PSoporte.jsp">Soporte</a></li>
                            <li><a href="PComprarBoleto.jsp">Comprar Boleto</a></li>
                            <li><a href="../Cerrar.jsp">Cerrar Sesion</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
        <div class="ajusdiv">
            <div class="descrpcionT">
                <p class="titu">Explorar Musica</p>
                <br>
                <p class="pequedes">Explora distintos perfiles y grupos, encuentra eventos cerca de ti y vive la m&aacute;xima experiencia musical </p>
            </div>
            <div class="botones">
                <a href="IFPerfiles.html" target="Ventanas"><button class="botonUno">Perfiles</button></a><a href="IFGrupos.jsp" target="Ventanas"><button class="botonDos">Grupos</button></a><a href="IFMostarEventos.jsp" target="Ventanas"><button class="botonTres">Eventos</button></a>
            </div>
            <div class="match">
                <iframe src="IFPerfiles.html" height="500px" width="800px"  frameborder="0" scrolling="yes" name="Ventanas"></iframe>
            </div>
        </div>
    </body>
</html>
