<%-- 
    Document   : PasoTres
    Created on : 7/05/2018, 05:36:42 PM
    Author     : Jesus
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
        <script src="jquery-1.3.2.js" type="text/javascript"></script>   
        <link href="Imgs/favicon.ico" rel='shortcut icon' type='image/x-icon'>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro - Pasos</title>
<%
    Connection con;
    Conexion miconexion;    
    miconexion = new Conexion();
    con=miconexion.getConexion();
    
    Statement stmt=con.createStatement();
    ResultSet rs;
   
    String Consulta=("SELECT*FROM instrumento");
    rs=stmt.executeQuery(Consulta);
    
%>
    </head>
    <body onpaste="return false" ondrag="return false" ondrop="return false;">
        <div class="deco">
            <div class="decodos"><h5 class="LetraOne">BAND &nbsp; FNDR</h5></div>
        </div>
        <br><br><br>
        <div class="welcom">
            <div class="acomoda">
                <br><br>
                <p class="Bien">Espera un momento...</p>
                <br>
                <div class="struct">
                <p class="CA">Antes de avanzar puedes agregar una imagen y una descripcion para tu usuario,
                esto es con el propocito de que los demas usuarios puedan conocer un poco sobre
                ti y puedas socialisar y mas adelante formar grupos.</p>
                <br><br>
                <form action="PasoCuatro.jsp" method="post" name="Regdos" target="_parent"  onsubmit="myFunction()">
                    <p class="lbl">Añade una descripcion:</p><br>
                    <textarea type="text" name="comentario" id="comentario" class="descrip" required></textarea>
                    <br><br><br>
                    <p class="lbl">Elige un instrumento:</p> 
                    <br>
                    <select name="BUGenero" class="GMusical" required>
                        <option value="" selected disabled>Selecciona un Instrumento:</option>
<%  
            while(rs.next()){
%>
                        <option value="<%=rs.getInt("idInstrumento")%>"><%=rs.getString("nombreInstru")%></option>       
<%
            } 
%>                    
                    </select>
                    <br><br><br>
                    <input type="submit" value="Siguiente" class="enviboton">
                </form>
            </div>
        </div>
        <script>
            
    function myFunction() {
        if(this.Regdos.BUGenero.value == "") {
            alert("Selecciona un instrumento.");
            document.Regdos.BUGenero.focus();
            document.Regdos.BUGenero.style.border = "2px solid red";
            return false;
        } else if(this.Regdos.comentario.value == "") {
            alert("Escribe una descripcion o algo sobre ti");
            document.Regdos.comentario.focus();
            document.Regdos.comentario.style.border = "2px solid red";
            return false;
        }
    }
    
        </script>
    </body>
</html>
