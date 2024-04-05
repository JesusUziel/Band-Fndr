<%-- 
    Document   : PCrearGrupoDos
    Created on : 12/05/2018, 08:18:37 PM
    Author     : diego
--%>

<%@page import="Conexion.Conexion"%>
<%@page import="Clases.infousuario"%>
<%@page import="java.util.*"%>
<%@page import="java.io.*,java.util.*,java.net.*,java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../Imgs/favicon.ico" rel='shortcut icon' type='image/x-icon'>
        <link type="text/css" href="../CSS/PUCrearGrupo.css" rel="stylesheet">
        <link type="text/css" href="../CSS/fuentes.css" rel="stylesheet">
        <link type="text/css" href="../CSS/fuentesDos.css" rel="stylesheet">
        <title>Mi Perfil - Crear Grupo</title>
<%!
    Connection con;
    Conexion miconexion;
    Statement stmt,stmtDos,stmt3;
    ResultSet rs, rsDos;
    String nom,gen,des;
%>
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
<%
    nom=request.getParameter("NomGrupo");
    gen=request.getParameter("GeneroMusical");
    des=request.getParameter("comentario");
    miconexion = new Conexion();
    con=miconexion.getConexion();
    stmt=con.createStatement();
    stmtDos=con.createStatement();
    stmt.executeQuery("CALL crearGrupo('"+nom+"','"+des+"','"+gen+"')");
    //String Consulta=("SELECT*FROM imagenbanda");
    //rsDos=stmtDos.executeQuery(Consulta);
%>
<%
    String ConsultaDos=("SELECT*FROM imagenbanda");
    rsDos=stmtDos.executeQuery(ConsultaDos);
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
                            <li><a href="comprarboleto.jsp">Comprar Boleto</a></li>
                            <li><a href="../Cerrar.jsp">Cerrar Sesion</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
        <%--<form name="FormCreaGrupo" method="post" action="registrarbanda.jsp">--%>
        <div class="comodin">
            <div class="ingresauno">
                <p class="RgGrupo">Lo siguiente es...</p>
                <br>
                <p class="simpleTDos">Selecciona una imagen para tu agrupaci&oacute;n</p>
                <br>
                <div class="IMGU">
                </div>
                <div id="openModal" class="modalDialog">
                    <div>
                        <a href="#close" title="Close" class="close">X</a>
                        <br>
                        <p class="sabes">Selecciona una Imagen:</p>
                        <div class="acIMG">
<%  
            while(rsDos.next()){
%>
                        <div class="lolo">
                            <img src="../<%=rsDos.getString("rutaImagenB")%>" class="laimagen"><p class="anuma"><%=rsDos.getString("nombreImagenB")%></p>
                            <form name="miform" method="post" action="PCrearGrupoTres.jsp">
                                <input type="hidden" value="<%=rsDos.getString("rutaImagenB")%>" name="ruta">
                                <input type="hidden" value="<%=rsDos.getString("nombreImagenB")%>" name="imagen">
                                <input type="hidden" value="<%=rsDos.getInt("idImagenBanda")%>" name="ide">
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
                <a href="#openModal"><button class="selectIMG">Elige una Foto</button></a>
                <br><br>
                <p class="lblDos">Una vez selecionada la imagen el boton se anudara y podras pasar al ultimo paso.</p>
                <br>
                <div class="simulboton">
                   Siguiente
                </div>
            </div>
        </div>
    </body>
</html>