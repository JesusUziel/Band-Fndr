<%-- 
    Document   : LisUsuarios
    Created on : 13/05/2018, 09:16:50 PM
    Author     : diego
--%>
<%@page import="Conexion.Conexion"%>
<%@page import="Clases.listarusuarios"%>
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
    public void setIntHeader(String header, int headerValue){

    }
%>
<%  HttpSession on =request.getSession(true); 
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
    String IdUsu=request.getParameter("idUsuario");
    String nicknam=request.getParameter("nomUsuario");
    String rutimg=request.getParameter("imgUsuario");
        
    ArrayList<listarusuarios>lista=new ArrayList<listarusuarios>();
    if(on.getAttribute("PCrearGrupoCuatro")!=null){
        lista = (ArrayList<listarusuarios>)on.getAttribute("PCrearGrupoCuatro");
    }
    listarusuarios un_listar = new listarusuarios();
    un_listar.acom(IdUsu,nicknam,rutimg);
    lista.add(un_listar);
    
    
    
    
%>
    </head>
    <body>
        <%
           if(IdUsu==null || nicknam==null || rutimg==null){
        %>
        <h1>No se han agregado usuarios</h1>
        <%
           }else{    
                for(int i=0; i<lista.size(); i++){
        %>
            <div class="aclist">
                <img class="acomModos" src="../<%=lista.get(i).getrutaimg()%>">
                <form name="agreglistas" method="post" action="">
                    <input type="hidden" value="<%=lista.get(i).getidusuario()%>" name="idUsu">
                    <input type="hidden" value="<%=lista.get(i).getnickname()%>" name="nomUsu">
                    <input type="hidden" value="<%=lista.get(i).getrutaimg()%>" name="imgUsu">
                    <input type="submit" value="<%=lista.get(i).getnickname()%>" class="agregLis">
                </form>
            </div>
        <%      }
                
            }
        %>
        <%
            
        %>
    </body>
</html>
