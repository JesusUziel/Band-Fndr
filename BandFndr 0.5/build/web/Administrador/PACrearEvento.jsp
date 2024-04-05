<%-- 
    Document   : PACrearEvento
    Created on : 26/11/2017, 02:57:05 PM
    Author     : diego
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administracion - Crear Evento</title>
        <link href="../Imgs/favicon.ico" rel='shortcut icon' type='image/x-icon'>
        <link type="text/css" href="../CSS/PACrearEventos.css" rel="stylesheet">
        <link type="text/css" href="../CSS/fuentes.css" rel="stylesheet">
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
                            <li><a href="boletos.jsp">Boletos</a></li>
                            <li><a href="../Cerrar.jsp">Cerrar Sesion</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
        <form name="formuEvent" method="post" action="registrarEvento.jsp">
        <div class="divstruct">
            <div class="acomUno">
                <p class="bip">Crear Evento</p>
                <p class="suft">Crea un evento para los usuarios de este sitio</p>
                <br><br>
                <label name="lblNomEvent" class="batiz">Nombre del Evento:</label>
                <br><br>
                <input type="text" name="NombreEvento" id="NobreEvento" class="apps" placeholder="Evento">
                <br><br>
                <label name="lblHoraEvento" class="batiz">Hora del Evento</label>
                <br><br>
                <input type="time" name="HoraEvento" id="HoraEvento" class="apdat">
                <br><br>
                <label name="lblFechEvento" class="batiz">Fecha del Evento:</label>
                <br><br>
                <select name="DiaEvent" id="DiaEvent" class="diEvent">
                    <option value="">Día</option>
                    <option value="01">01</option>
                    <option value="02">02</option>
                    <option value="03">03</option>
                    <option value="04">04</option>
                    <option value="05">05</option>
                    <option value="06">06</option>
                    <option value="07">07</option>
                    <option value="08">08</option>
                    <option value="09">09</option>
                    <option value="10">10</option>
                    <option value="11">11</option>
                    <option value="12">12</option>
                    <option value="13">13</option>
                    <option value="14">14</option>
                    <option value="15">15</option>
                    <option value="16">16</option>
                    <option value="17">17</option>
                    <option value="18">18</option>
                    <option value="19">19</option>
                    <option value="20">20</option>
                    <option value="21">21</option>
                    <option value="22">22</option>
                    <option value="23">23</option>
                    <option value="24">24</option>
                    <option value="25">25</option>
                    <option value="26">26</option>
                    <option value="27">27</option>
                    <option value="28">28</option>
                    <option value="29">29</option>
                    <option value="30">30</option>
                    <option value="30">31</option>         
                </select>
                <select name="MesEvent" id="MesEvent" class="diEvent">
                    <option value="">Mes</option>
                    <option value="01">01</option>
                    <option value="02">02</option>
                    <option value="03">03</option>
                    <option value="04">04</option>
                    <option value="05">05</option>
                    <option value="06">06</option>
                    <option value="07">07</option>
                    <option value="08">08</option>
                    <option value="09">09</option>
                    <option value="10">10</option>
                    <option value="11">11</option>
                    <option value="12">12</option>   
                </select>
                <select name="YearEvent" id="YearEvent" class="diEvent">
                    <option value="">Año</option>
                    <option value="2050">2050</option>
                    <option value="2049">2049</option>
                    <option value="2048">2048</option>
                    <option value="2047">2047</option>
                    <option value="2046">2046</option>
                    <option value="2045">2045</option>
                    <option value="2044">2044</option>
                    <option value="2043">2043</option>
                    <option value="2042">2042</option>
                    <option value="2041">2041</option>
                    <option value="2040">2040</option>
                    <option value="2039">2039</option>
                    <option value="2038">2038</option>
                    <option value="2037">2037</option>
                    <option value="2036">2036</option>
                    <option value="2035">2035</option>
                    <option value="2034">2034</option>
                    <option value="2033">2033</option>
                    <option value="2032">2032</option>
                    <option value="2031">2031</option>
                    <option value="2030">2030</option>
                    <option value="2029">2029</option>
                    <option value="2028">2028</option>
                    <option value="2027">2027</option>
                    <option value="2026">2026</option>
                    <option value="2025">2025</option>
                    <option value="2024">2024</option>
                    <option value="2023">2023</option>
                    <option value="2022">2022</option>
                    <option value="2021">2021</option>
                    <option value="2020">2020</option>
                    <option value="2019">2019</option>
                    <option value="2018">2018</option>
                    <option value="2017">2017</option>
                </select>
                <br><br>
                <label name="lblUbica" class="batiz">Ubicacion del evento:</label>
                <br><br>
                <input type="text" name="ubicacionEvent" id="ubicacionEvent" class="apps" placeholder="Ubicacion">
                <br><br>
                <label name="lbldescripEvent" class="batiz">Añade una descripcion del Evento:</label>
                <br><br>
                <textarea type="text" name="descripEvent" id="descripEvent" class="descrieven"></textarea>
                <br><br>
            </div>
            <div class="acomDos">
                <label name="lblImagenEvent" class="batiz">Sube una foto:</label>
                <br><br>
                <div class="EIMG">
                    <output id="list"></output>
                </div>
                <br><br>
                <input type="file" name="files[]" id="files" class="editdeco" />
                <label for="files">Elige una foto</label>
                <script>
                        function archivo(evt) {
                            var files = evt.target.files; // FileList object
             
                            // Obtenemos la imagen del campo "file".
                        for (var i = 0, f; f = files[i]; i++) {
                            //Solo admitimos imágenes.
                        if (!f.type.match('image.*')) {
                        continue;
                        }
             
                        var reader = new FileReader();
             
                        reader.onload = (function(theFile) {
                            return function(e) {
                            // Insertamos la imagen
                            document.getElementById("list").innerHTML = ['<img class="EImg" src="', e.target.result,'" title="', escape(theFile.name), '"/>'].join('');
                            };
                        })(f);
             
                        reader.readAsDataURL(f);
                        }
                    }
             
                        document.getElementById('files').addEventListener('change', archivo, false);
                </script>
                <br><br><br>
                <p class="iano">Una vez oprimas el boton el evento sera creado</p>
                <input type="submit" value="Crear Grupo" class="botoevent">
            </div>
        </div>
        </form>
    </body>
</html>
