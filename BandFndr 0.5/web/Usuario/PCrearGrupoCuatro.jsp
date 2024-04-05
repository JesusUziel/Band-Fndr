<%-- 
    Document   : PCrearGrupoCuatro
    Created on : 13/05/2018, 07:49:28 PM
    Author     : Jesus
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
    String ideB=request.getParameter("man");
    miconexion = new Conexion();
    con=miconexion.getConexion();
    stmt=con.createStatement();
    stmtDos=con.createStatement();
    stmt.executeQuery("CALL crearGrupoDos('"+ideB+"')");
    //String Consulta=("SELECT*FROM imagenbanda");
    //rsDos=stmtDos.executeQuery(Consulta);
%>
<%
    String Consulta=("SELECT usuario.idUsu, usuario.nickname, usuario.tipoUsu, imagenperfiles.idImagenPerfiles, imagenperfiles.rutaImagen FROM imagenperfiles INNER JOIN usuario ON usuario.idImagenPerfiles=imagenperfiles.idImagenPerfiles WHERE tipoUsu=1");
    rsDos=stmtDos.executeQuery(Consulta);
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
                <p class="RgGrupo">Por ultimo...</p>
                <br>
                <p class="simpleTDos">Agrega miembros a tu agrupaci&oacute;n o banda</p>
                <br><label name="lblAgrega" class="IngreGrupo">Agregar Integrantes</label>
                <div class="LisFrame">
                    <%  
            while(rsDos.next()){
%>   
                    <div class="aclist">
                        <img class="acomModos" src="../<%=rsDos.getString("rutaImagen")%>">
                        <form name="agreglistas" method="post" action="LisUsuarios.jsp" target="ventanas">
                            <input type="hidden" value="<%=rsDos.getInt("idUsu")%>" name="idUsuario">
                            <input type="hidden" value="<%=rsDos.getString("nickname")%>" name="nomUsuario">
                            <input type="hidden" value="<%=rsDos.getString("rutaImagen")%>" name="imgUsuario">
                            <input type="submit" value="<%=rsDos.getString("nickname")%>" class="agregLis">
                        </form>
                    </div>                
<%
            }
            con.close();
%>
                </div>
                <br><p class="simpleTDos">Puedes agregar miembros oprimiendo el boton tanto los puedes quitar
                en la otra ventana.</p>
                <br><label name="lblinstruc" class="IngreGrupo">Lista de Miembros</label>
                <iframe src="LisUsuarios.jsp" name="ventanas" class="LisFrame"></iframe>
            </div>
        </div>
    </body>
    
</html>