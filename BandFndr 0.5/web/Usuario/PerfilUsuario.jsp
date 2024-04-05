<%-- 
    Document   : PerfilUsuario
    Created on : 21/11/2017, 03:31:48 PM
    Author     : diego
--%>


<%@page import="Conexion.Conexion"%>
<%@page import="Clases.infousuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.io.*,java.util.*,java.net.*,java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mi Perfil</title>
        <link href="../Imgs/favicon.ico" rel='shortcut icon' type='image/x-icon'>
        <link type="text/css" href="../CSS/PUsuario.css" rel="stylesheet">
        <link type="text/css" href="../CSS/fuentes.css" rel="stylesheet">
<%!
    Connection con;
    Conexion miconexion;
    Statement stmt,stmtDos,stmt3;
    ResultSet rs, rsDos;
%>
        
    </head>
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
    stmtDos=con.createStatement();
    
    String Consulta=("SELECT usuario.nickname, imagenperfiles.idImagenPerfiles, imagenperfiles.rutaImagen FROM imagenperfiles INNER JOIN usuario ON usuario.idImagenPerfiles=imagenperfiles.idImagenPerfiles WHERE nickname='"+on2+"';");
    rs=stmt.executeQuery(Consulta);
    
    String ConsultaDos=("SELECT usuario.nomUsu, usuario.correo, instrumento.nombreInstru, usuario.descripUsu from instrumento INNER JOIN usuario on usuario.idInstrumento=instrumento.idInstrumento where nickname='"+on2+"';");
    rsDos=stmtDos.executeQuery(ConsultaDos);
    %>
       
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
        <div class="cuerpo">
            <div class="IMGUsuari">
<%  
            while(rs.next()){
%>      
            <img  src="../<%=rs.getString("rutaImagen")%>" class="mejora">
<%
            }
%>
            </div>
            <div class="complementos">
                <p class="binletra">Bienvenido <%=on2%></p><br>
<%  
            while(rsDos.next()){
%>      
                <p class="Datis">Nombre Personal:</p>
                <p class="Manis"><%=rsDos.getString("nomUsu")%></p>
                <br>
                <p class="Datis">Descripcion:</p>
                <p class="Manis"><%=rsDos.getString("descripUsu")%></p>
                <br>
                <p class="Datis">Correo de Usuario:</p>
                <p class="Manis"><%=rsDos.getString("correo")%></p>
                <br>
                <p class="Datis">Mi Instrumento:</p>
                <p class="Manis"><%=rsDos.getString("nombreInstru")%></p>
<%
            }
%>
            </div>
        </div>
    </body>
</html>
