<%-- 
    Document   : lugares
    Created on : 14/03/2018, 09:41:29 PM
    Author     : Jesus
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Conexion.Conexion"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administracion - Ver Lista de Usuarios</title>
        <link href="Imgs/favicon.ico" rel='shortcut icon' type='image/x-icon'>
        <link type="text/css" href="CSS/PAVerUsuarios.css" rel="stylesheet">
        <link type="text/css" href="CSS/fuentes.css" rel="stylesheet">
        <link type="text/css" href="CSS/PAEliminarComponentes.css" rel="stylesheet">
        
       
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
                            <li><a href="index.html">Cerrar Sesion</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
        <div class="act">
            <p class="decofal">Lugar del evento</p>
            <p class="elpapu">Selecciona el lugar del evento</p>
        </div>
        <div class="trp">
        <table>
            <tr>
                <td><form  method="post" action="registrarboleto.jsp">
         <input type="image" value="" src="Imgs/arena2.png" width="190" height="180"  >
        </form>
                </td>            
                <td>
        <form  method="post" action="registrarboleto.jsp">
         <input type="image" value="" src="Imgs/auditorio.png" width="190" height="180" class="usu">
        </form> 
                </td>            
            </tr>    
       <tr>
                <td><form name="FormElimUsu" method="post" action="registrarboleto.jsp">
         <input type="image" value="" src="Imgs/autodromo.png" width="190" height="180" class="usu">
        </form>
                </td>
                <td>
        <form name="FormElimUsu" method="post" action="registrarboleto.jsp">
         <input type="image" value="" src="Imgs/azteca.png" width="190" height="180" class="usu">
        </form> 
                </td>            
            </tr> 
            <tr>
                <td>
        <form name="FormElimUsu" method="post" action="registrarboleto.jsp">
         <input type="image" value="" src="Imgs/foro.jpg" width="190" height="180" class="usu">
        </form> 
                </td> 
            </tr>
        </table>    
        
        </div>
    </body>
</html>
