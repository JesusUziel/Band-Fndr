<%-- 
    Document   : PasoCuatro
    Created on : 7/05/2018, 07:26:35 PM
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
        <link type="text/css" href="CSS/PDbarra.css" rel="stylesheet">
        <link type="text/css" href="CSS/fuentes.css" rel="stylesheet">
        <link type="text/css" href="CSS/PDbarraDos.css" rel="stylesheet">
        <script src="jquery-1.3.2.js" type="text/javascript"></script>   
        <link href="Imgs/favicon.ico" rel='shortcut icon' type='image/x-icon'>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro - Pasos</title>
<%!
    String des;
    String ins;
    Connection con;
    Conexion miconexion;
    Statement stmt, stmtDos;
    ResultSet rs, rsDos;
%>
<% 
    des=request.getParameter("comentario");
    ins=request.getParameter("BUGenero");
    miconexion = new Conexion();
    con=miconexion.getConexion();
    stmt=con.createStatement();
    stmtDos=con.createStatement();
    
    String Consulta=("SELECT*FROM imagenperfiles");
    rsDos=stmtDos.executeQuery(Consulta);
%>
    </head>
<%
    stmt.executeQuery("CALL regPasoDos('"+des+"','"+ins+"')");     
    
%>
    <body onpaste="return false" ondrag="return false" ondrop="return false;">
        <div class="deco">
            <div class="decodos"><h5 class="LetraOne">BAND &nbsp; FNDR</h5></div>
        </div>
        <br><br><br>
        <div class="welcom">
            <div class="acomoda">
                <br><br>
                <p class="Bien">Ahora...</p>
                <br>
                <div class="struct">
                <p class="CA">El ultimo paso para tu registro sera selecionar una de las imagenes de usuario que tenemos
                en nuestra galeria, eligie la que quieras a futuro la podras cambiar en la configuracion de tu perfil, espero
                disfrutes la imagenes que tenemos.</p>
                <br>
                    <div class="IMGU">
                        <%--<img class="thumb" src="<%=ruta%>">--%>
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
                                <img src="<%=rsDos.getString("rutaImagen")%>" class="laimagen"><p class="anuma"><%=rsDos.getString("nomImagen")%></p>
                                <form name="miform" method="post" action="PasoCuatroDos.jsp">
                                    <input type="hidden" value="<%=rsDos.getString("rutaImagen")%>" name="ruta">
                                    <input type="hidden" value="<%=rsDos.getString("nomImagen")%>" name="imagen">
                                    <input type="hidden" value="<%=rsDos.getInt("idImagenPerfiles")%>" name="ide">
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
                    <br><br><br><br>
                    <p class="lbl">Una vez selecionada la imagen el boton se anudara y regresaras al menu para iniciar sesion.</p>
                    <br>
                    <div class="simulboton">
                        Siguiente
                    </div>
            </div>
        </div>
        <script>
            
    
        </script>
    </body>
</html>
