<%-- 
    Document   : PSoporte
    Created on : 23/11/2017, 06:31:29 PM
    Author     : Jesus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mi Perfil - Soporte</title>
        <link href="../Imgs/favicon.ico" rel='shortcut icon' type='image/x-icon'>
        <link type="text/css" href="../CSS/PUSoporte.css" rel="stylesheet">
        <link type="text/css" href="../CSS/fuentes.css" rel="stylesheet">
        <script type="text/javascript" >
            
    function validasupport(){
    var nombresoporte=document.FormSoport.NombreAyuda.value;
    var correousuario=document.FormSoport.CorreoAyuda.value;
    var prioridad=document.FormSoport.Prioridad.value;
    var area=document.FormSoport.AreaAsunto.value;
    var mensaje=document.FormSoport.MensDes.value;
    
    if(nombresoporte.length==0){
        alert("Introduce un nombre");
        return false;
    }
    if(nombresoporte.length>50){
        alert("Introduce un nombre de maximo 50 caract.");
        return false;
    }
    if(correousuario.length==0){
        alert("Introduce un correo");
        return false;
    }
    if(prioridad==""){
        alert("Introduce la prioridad");
        return false;
    }
    if(area==""){
        alert("Introduce el area del asunto");
        return false;
    }
    if(mensaje.length==0){
        alert("Introduce tu mensaje");
        return false;
    }
}

     </script>
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
        <div class="arma">
            <div class="leterajust">
                <br>
                <p class="leter">Soporte de la Pagina</p>
                <br>
                <p class="descript">En caso de que surja alg&uacute;n problema usted puede contactarnos mediante el siguiente formulario</p>
                <br><br>
                <form name="FormSoport" method="post" action="soporte.jsp" onsubmit="return validasupport()">
                    <label name="lblNombreA" class="escom">Ingresa tu Nombre de Usuario:</label>
                    <br><br>
                    <input type="text" name="NombreAyuda" id="NombreAyuda" placeholder="Nombre de Usuario" class="decosoport">
                    <br><br>
                    <label name="lblDirecionUA" class="escom">Ingresa tu Coreo Electronico:</label>
                    <br><br>
                    <input type="email" name="CorreoAyuda" id="CorreoAyuda" placeholder="Correo Electronico" class="soportEmail">
                    <br><br>
                    <label name="lblPrioridad" class="escom">Elije la Prioridad del asunto:</label> 
                    <br><br>
                    <select name="Prioridad" class="SelecionA">
                        <option value="">Nivel de Prioridad</option>
                        <option value="Bajo">Bajo</option>
                        <option value="Medio">Medio</option>
                        <option value="Alto">Alto</option>
                    </select> 
                    <br><br>
                    <label name="lblAreaA" class="escom">Elije el Area del asunto:</label>
                    <br><br>
                    <select name="AreaAsunto" class="SelecionA">
                        <option value="">Area del Asunto</option>
                        <option value="Inicio de Sesion">Inicio de Sesion</option>
                        <option value="Registro">Registro</option>
                        <option value="Match">Explorar Musica</option>
                        <option value="Perfil">Perfil</option>
                        <option value="Datos de Usuario">Datos de Usuario</option>
                        <option value="Creacion de Grupo">Creacion de Grupo</option>
                        <option value="Otro">Otro</option>
               
                    </select>
                    <br><br>
                    <label name="lblMensText" class="escom">Redacta tu Mensaje:</label>
                    <br><br>
                    <textarea type="text" name="MensDes" id="MensDes" class="comendecor" placeholder="Redacta tu problema aqui"></textarea>
                    <br><br>
                    <input type="submit" value="Enviar Reporte" class="decobotonR">
                </form>
            </div>
        </div>
    </body>
</html>
