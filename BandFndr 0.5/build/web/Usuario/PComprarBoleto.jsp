<%-- 
    Document   : comprarboleto
    Created on : 13/03/2018, 09:25:28 PM
    Author     : Jesus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Conexion.Conexion"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="Clases.infousuario"%>
<%@page import="java.io.*,java.util.*,java.net.*,java.sql.*"%>
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
        <title>Comprar Boleto</title>
        <link href="../Imgs/favicon.ico" rel='shortcut icon' type='image/x-icon'>
        <link type="text/css" href="../CSS/PAVerUsuarios.css" rel="stylesheet">
        <link type="text/css" href="../CSS/fuentes.css" rel="stylesheet">
        <link type="text/css" href="../CSS/PAEliminarComponentes.css" rel="stylesheet">
        <link type="text/css" href="../CSS/PUsuario.css" rel="stylesheet">
        
       
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
        <div class="act">
            <p class="decofal">Comprar Boletos</p>
            <p class="elpapu">Adquiere tus boletos para los eventos</p>
        </div>
        <div class="trp">
            <br><br>
        <form name="FormElimUsu" method="post" action="">
        <table cellspacing="18" cellpadding="90">
        <tr>
            <th><label name="lblBuscaUsus" class="elamor">Introduce el evento:</label></th>
        </tr>
        <th>
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
        </th>
        </table>
        <table>    
        <tr>
            <th><label name="lblBuscaUsus" class="elamor">Numero de Boletos:</label></th>
        </tr
        <tr><th><input type="text" name="cantidad" id="boletos" class="boleto" placeholder="Numero de boletos"></th>
        </tr>
        <tr>
            <th><label name="lblBuscaUsus" class="elamor">Precio por boleto:</label></th>
        </tr>
        <tr>
            <th><input type="text" name="cantidad" id="boletos" class="boleto" placeholder="Subtotal"></th>
        </tr>
        <tr>
            <th><label name="lblBuscaUsus" class="elamor">IVA</label></th>
        </tr>
        <tr>
            <th><input type="text" name="cantidad" id="boletos" class="boleto" placeholder="IVA"></th>
        </tr>
        <tr>
            <th><label name="lblBuscaUsus" class="elamor">Descuento:</label></th>
        </tr>
        <tr>
            <th><input type="text" name="cantidad" id="boletos" class="boleto" placeholder="Descuento"></th>
        </tr>
        <tr>
            <th><label name="lblBuscaUsus" class="elamor">Total:</label></th>
        </tr>
        <tr>
            <th><input type="text" name="cantidad" id="boletos" class="boleto" placeholder="Total"></th>
        </tr>
        
        </table>
            <br><br>
        
            <br>
            <br>
         <input type="submit" value="Aceptar" class="usu">     
         <input type="submit" value="Generar Boleto" class="usu">
        </form>
             <br><br>
           
        </div>
    </body>
</html>