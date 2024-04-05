<%-- 
    Document   : DesUsuarios
    Created on : 12/05/2018, 06:54:39 PM
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
        <link type="text/css" href="../CSS/PUCrearGrupo.css" rel="stylesheet">
        <link type="text/css" href="../CSS/fuentes.css" rel="stylesheet">
        
        <title>JSP Page</title>
<%!
    Connection con;
    Conexion miconexion;
    Statement stmt,stmtDos,stmt3;
    ResultSet rs, rsDos;
%>
<%
    miconexion = new Conexion();
    con=miconexion.getConexion();
    stmt=con.createStatement();
   
    String Consulta=("SELECT usuario.idUsu, usuario.nickname, usuario.tipoUsu, imagenperfiles.idImagenPerfiles, imagenperfiles.rutaImagen FROM imagenperfiles INNER JOIN usuario ON usuario.idImagenPerfiles=imagenperfiles.idImagenPerfiles WHERE tipoUsu=1");
    rs=stmt.executeQuery(Consulta);
%>
    </head>
    <body>
        <%  
            while(rs.next()){
%>   
        <div class="aclist">
            <img class="acomModos" src="../<%=rs.getString("rutaImagen")%>">
            <form name="agreglistas" method="post" action="LisUsuarios.jsp">
                <input type="hidden" value="<%=rs.getInt("idUsu")%>" name="idUsuario">
                <input type="hidden" value="<%=rs.getString("nickname")%>" name="nomUsuario">
                <input type="hidden" value="<%=rs.getString("rutaImagen")%>" name="imgUsuario">
                <input type="submit" value="<%=rs.getString("nickname")%>" class="agregLis">
            </form>
        </div>                
<%
            }
%>
        
    </body>
</html>
