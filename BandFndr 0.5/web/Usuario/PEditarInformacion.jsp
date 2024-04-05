<%-- 
    Document   : PAdministrarCuenta
    Created on : 23/11/2017, 12:57:38 AM
    Author     : diego
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="Conexion.Conexion"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mi Perfil - Editar mi Informacion</title>
        <link href="../Imgs/favicon.ico" rel='shortcut icon' type='image/x-icon'>
        <link type="text/css" href="../CSS/PUEditarInfromacion.css" rel="stylesheet">
        <link type="text/css" href="../CSS/PUEditarInfromacionDos.css" rel="stylesheet">
        <link type="text/css" href="../CSS/fuentes.css" rel="stylesheet">
<%!
    String des;
    String ins;
    Connection con;
    Conexion miconexion;
    Statement stmt;
    ResultSet rs;
%>
<% 
    miconexion = new Conexion();
    con=miconexion.getConexion();
    stmt=con.createStatement();
   
    String Consulta=("SELECT*FROM imagenperfiles");
    rs=stmt.executeQuery(Consulta);
%>
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
        <div class="divstruct">
            <div class="acomUno">
                <p class="titedit">Editar Informacion</p>
                <br>
                <p class="nomeama">Edita tu informaci&oacute;n a tu gusto </p>
                <br><br>
                <form name="FormENU" action="editarinfoaction.jsp">
                    <label name="lblENUsuario" class="batiz">Editar Nombre de Usuario:</label>
                    <br><br>
                    <input type="text" name="EditUsu" id="EditUsu" placeholder="Nuevo Nombre de Usuario" class="EditUs">
                    <input type="submit" value="Editar" class="EditInfo" >
                    <br><br><br>
                </form>
                <form name="FormECU" method="post" action="editarinformacionaction2.jsp">
                    <label name="lblECUsuario" class="batiz">Editar Contrase&ntilde;a:</label>
                    <br><br>
                    <input type="password" name="EditContra" id="EditContra" placeholder="Nueva Contrase&ntilde;a" class="EditCon">
                    <input type="submit" value="Editar" class="EditInfo">
                    <br><br>
                </form>
                <br><br><br><br><br>
                
            </div>
            <div class="acomDos">
                
                <label name="lblInfoIMG" class="batiz">Sube una nueva foto:</label>
                <br><br>
                <div class="EIMG">
                    <%--<img class="thumb" src="<%=ruta%>">--%>
                </div>
                <div id="openModal" class="modalDialog">
                    <div>
                        <a href="#close" title="Close" class="close">X</a>
                        <br>
                        <p class="sabes">Selecciona una Imagen:</p>
                        <div class="acIMG">
<%  
            while(rs.next()){
%>
                            <div class="lolo">
                                <img src="../<%=rs.getString("rutaImagen")%>" class="laimagen"><p class="anuma"><%=rs.getString("nomImagen")%></p>
                                <form name="miform" method="post" action="PEditarInformacionDos.jsp">
                                    <input type="hidden" value="<%=rs.getString("rutaImagen")%>" name="ruta">
                                    <input type="hidden" value="<%=rs.getString("nomImagen")%>" name="imagen">
                                    <input type="hidden" value="<%=rs.getInt("idImagenPerfiles")%>" name="ide">
                                    <input type="submit" value="Seleccionar Imagen" class="modifmon">
                                </form>
                            </div>
<% 
            }
%>     
                        </div>
                    </div>
                </div>
                <br>
                <a href="#openModal"><button class="bottonn">Elige una Foto</button></a>
                <div class="ajust">
                    <p class="adverdos">Al elegir una imagen puedes oprimir el bot&oacute;n de guardar cambios para modificar tu imagen de perfil</p>
                </div>
                <%--
                <form name="EditFoto" method="post" action="editarinformacionaction3.jsp">
                <input type="submit" value="Cambiar Imagen" class="ward">
                </form>--%>
                <div class="simulboton">
                    Siguiente
                </div>
            </div>
        </div>
        
    
    </body>
</html>
