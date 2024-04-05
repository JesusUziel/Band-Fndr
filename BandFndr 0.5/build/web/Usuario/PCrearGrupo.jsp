<%-- 
    Document   : PCrearGrupo
    Created on : 22/11/2017, 01:50:12 PM
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
    miconexion = new Conexion();
    con=miconexion.getConexion();
    stmt=con.createStatement();
   
    String Consulta=("SELECT*FROM genero");
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
                    <br>
                    <p class="RgGrupo">Forma tu propia Agrupacion o Banda Musical</p>
                    <br>
                    <p class="simpleT">Comienza una nueva experiencia, llena los campos y ve a la emoci&oacute;n</p>
                    <br><br>
                    <form name="FormarGrupo" method="post" action="PCrearGrupoDos.jsp">
                    <label name="lblNomGrupo" class="IngreGrupo">Ingresa un Nombre para el grupo:</label>
                    <br>
                    <input type="text" name="NomGrupo" id="NomGrupo" placeholder="Nombre del Grupo" class="inpdeco">
                    <br><br>
                    <label name="lblGeneGrupo" class="IngreGrupo">Elige el genero musical del grupo:</label>
                    <br>
                    <select name="GeneroMusical" class="GenGrup">
                        <option value="">Genero Musical</option>
<%  
            while(rs.next()){
%>   
                        <option value="<%=rs.getInt("idGenero")%>"><%=rs.getString("genero")%></option>
<%
            }
%>
                    </select>
                    <br><br>
                    <label name="lblDesGrupo" class="IngreGrupo">Agrega una descripci&oacute;n al grupo:</label>
                    <br>
                    <textarea type="text" name="comentario" id="comentario" class="modific"></textarea><br><br>  
                    <br>
                    <input type="submit" value="Sigiente" class="CreaGrup">
                    </form>
                    <%--<iframe src="DesUsuarios.jsp" name="Ventanas" class="LisFrame"></iframe><label name="lblAgrega" class="IngreGrupo">Agregar Integrantes</label>--%>
                </div>
                <%--<div class="ingresados">
                    <label name="lblImgGrupo" class="IngreGrupo">Elige una foto para el grupo:</label>    
                    <br><br>
                    <div class="IMGG">
                        <output id="list"></output>
                    </div>
                    <br><br>
                    <div class="desencimar">
                    <input type="file" name="files[]" id="files" class="nuevdeco" />
                    <label for="files">Elige una foto</label>
                    <br><br>
                    
                    </div>
                    <br><br>
                    <label name="lblAgregados" class="IngreGrupo">Usuarios Agregados</label>
                    <br><br>
                    <div class="yaagreg">
                    </div>
                        <br>
                    <label name="lblAdvertencia" class="IngreGrupo">Una vez que oprimas el boton de crear grupo la informacion sera registrada y guardada</label>
                    <br><br>
                    <input type="submit" value="Crear Grupo" class="CreaGrup">
                </div>--%>
        </div>
       
    </body>
</html>
