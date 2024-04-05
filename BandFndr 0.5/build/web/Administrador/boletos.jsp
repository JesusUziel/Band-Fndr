<%-- 
    Document   : boletos
    Created on : 13/02/2018, 10:00:59 PM
    Author     : Jesus
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Conexion.Conexion"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<%!
    
%>
<%
    
    Connection con;
    Conexion miconexion;    
    miconexion = new Conexion();
    con=miconexion.getConexion();
    
    Statement stmt=con.createStatement();
    ResultSet row_evento;
   
    String Consulta=("SELECT evento.nomEvento, evento.idEvento from evento;");
    row_evento=stmt.executeQuery(Consulta);
    ;
%>
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
            <p class="decofal">Boletos</p>
            <p class="elpapu">Registra boletos para los eventos</p>
        </div>
        <div class="trp">
            <br><br>
        <form name="FormElimUsu" method="post" action="registrarboleto.jsp">
        <table cellspacing="18" cellpadding="90">
        <tr>
            <th><label name="lblBuscaUsus" class="elamor">Introduce el evento:</label></th>
        </tr>
        <td>
        <select name="boletos" >
            <option>---</option>
            <%  
        while(row_evento.next()){
    //out.println("Encontrado:"+rs.getString("nomPersona")+" "+rs.getString("ApellidoPat")+"");
%>
       
<option value="<%=row_evento.getString("idEvento")%>"><%=row_evento.getString("nomEvento")%></option>
        
<%
        }
    
%>
            
            
        </select>
        </td>
        </table>
        <table>    
        <tr>
            <th><label name="lblBuscaUsus" class="elamor">Precio por boleto:</label></th>
            <th><label name="lblBuscaUsus" class="elamor">Numero de Boletos:</label></th>
        </tr
        <tr>
            <th><input type="text" name="precio" id="costo" class="costos" placeholder="Costo del boleto"></th>
            
            <th><input type="text" name="cantidad" id="boletos" class="boleto" placeholder="Numero de boletos"></th>
        </tr>
        </table>
            <br><br>
        
            <br>
            <br>
          
         <input type="submit" value="Registar Boleto" class="usu">
        </form>
             <br><br>
           
        </div>
    </body>
</html>