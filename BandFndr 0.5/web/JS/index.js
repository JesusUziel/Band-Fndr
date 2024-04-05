/* Para probar que las variables tengan los valores correctos
   alert("Nombre: " + nombre + ". Paterno: " + paterno + ". Materno: " + materno + ". Usuario: " + user + ". Password: " + pass + 
         ". Password2: " + pass2 + ". Dia: " + dia + ". Mes: " + mes + ". Año: " + year + ". Genero: " + genero + ". Domicilio: " + domicilio + ". Correo: " + mail);
*/
/*  Para copiar y pegar
 *  alert("");
    document.FormReg..focus();
    document.getElementById("id").style.border = "2px solid red";
    return false;
*/
function validarLogin() {
    var user = document.FormInicio.usr.value;
    var pass = document.FormInicio.psw.value;
    if(vacio(user)) {
        alert("Debes introducir tu usuario.");
        document.FormReg.RegContraseña.focus();
        document.getElementById("idUsr").style.border = "2px solid red";
        return false;
    } else {
        document.getElementById("idUsr").style.border = "0px";
    }
    if(vacio(pass)) {
        alert("Debes introducir tu contraseña.");
        document.FormReg.RegContraseña.focus();
        document.getElementById("idPsw").style.border = "2px solid red";
        return false;
    } else {
        document.getElementById("idPsw").style.border = "0px";
    }
    if(!vacio(user) && !vacio(pass)) {
        return true;
    }
}
function validarRegistro() {
    var nom = this.validarNombre();
    var pat = this.validarPaterno();
    var mat = this.validarMaterno();
    var usu = this.validarUsuario();
    var pwd = this.validarPassword();
    var cor = this.validarCorreo();
    var dom = this.validarDomicilio();
    var fec = this.validarFecha();
    var gen = this.validarGenero();
    if (nom == true && pat == true && mat == true && usu == true && pwd == true && cor == true && dom == true && fec == true && gen == true) {
        alert("¡Listo! Has sido registrado satisfactoriamente.")
        return true;
    } else {
        return false;
    }
}
function validarNombre() {
    var nombre = document.FormReg.Nombre.value;
    var patnom = /^([A-Z]{1}[a-zñáéíóú]+){1}(\s{1}[A-Z]{1}[a-zñáéíóú]+)?$/;
    if(vacio(nombre)) { //validación del nombre
        alert("Debes introducir tu nombre.");
        document.FormReg.Nombre.focus();
        document.getElementById("idNombre").style.border = "2px solid red";
        return false;
    } else if(nombre.length < 3) {
        alert("Introduce un nombre más grande.");
        document.FormReg.Nombre.focus();
        document.getElementById("idNombre").style.border = "2px solid red";
        return false;
    } else if(nombre.length > 30) {
        alert("Tu nombre es demasiado grande.");
        document.FormReg.Nombre.focus();
        document.getElementById("idNombre").style.border = "2px solid red";
        return false;
    } else if(!patnom.test(nombre)) {
        alert("Introduce un nombre válido. Utiliza tan sólo letras; cada nombre debe empezar con mayúscula.");
        document.FormReg.Nombre.focus();
        document.getElementById("idNombre").style.border = "2px solid red";
        return false;
    } else {
        document.getElementById("idNombre").style.border = "0px";
        return true;
    }
}
function validarPaterno() {
    var paterno = document.FormReg.Apaterno.value;
    var patap = /^[A-Z]{1}[a-zñáéíóú]+$/;
    if(vacio(paterno)) { //validación del apellido paterno
        alert("Debes introducir tu primer apellido.");
        document.FormReg.Apaterno.focus();
        document.getElementById("idApaterno").style.border = "2px solid red";
        return false;
    } else if(paterno.length < 3) {
        alert("Introduce un apellido más grande.");
        document.FormReg.Apaterno.focus();
        document.getElementById("idApaterno").style.border = "2px solid red";
        return false;
    } else if(paterno.length > 15) {
        alert("Tu apellido es demasiado grande.");
        document.FormReg.Apaterno.focus();
        document.getElementById("idApaterno").style.border = "2px solid red";
        return false;
    } else if(!patap.test(paterno)) {
        alert("Introduce un apellido válido. Utiliza tan sólo letras; el apellido debe empezar con mayúscula.");
        document.FormReg.Apaterno.focus();
        document.getElementById("idApaterno").style.border = "2px solid red";
        return false;
    } else {
        document.getElementById("idApaterno").style.border = "0px";
        return true;
    }
}
function validarMaterno() {
    var materno = document.FormReg.Amaterno.value;
    var patap = /^[A-Z]{1}[a-zñáéíóú]+$/;
    if(vacio(materno)) { //validación del apellido materno
        alert("Debes introducir tu segundo apellido.");
        document.FormReg.Amaterno.focus();
        document.getElementById("idAmaterno").style.border = "2px solid red";
        return false;
    } else if(materno.length < 3) {
        alert("Introduce un apellido más grande.");
        document.FormReg.Amaterno.focus();
        document.getElementById("idAmaterno").style.border = "2px solid red";
        return false;
    } else if(materno.length > 15) {
        alert("Tu apellido es demasiado grande.");
        document.FormReg.Amaterno.focus();
        document.getElementById("idAmaterno").style.border = "2px solid red";
        return false;
    } else if(!patap.test(materno)) {
        alert("Introduce un apellido válido. Utiliza tan sólo letras; el apellido debe empezar con mayúscula.");
        document.FormReg.Amaterno.focus();
        document.getElementById("idAmaterno").style.border = "2px solid red";
        return false;
    } else {
        document.getElementById("idAmaterno").style.border = "0px";
        return true;
    }
}
function validarUsuario() {
    var user = document.FormReg.NomUsuario.value;
    var patnick = /^[-\w\.]{4,25}$/;
    if(vacio(user)) { //validación del username
        alert("Debes introducir tu nombre de usuario (con este nombre te conocerán otros usuarios).");
        document.FormReg.NomUsuario.focus();
        document.getElementById("idNomUsuario").style.border = "2px solid red";
        return false;
    } else if(user.length < 4) {
        alert("Introduce un nombre de usuario más grande.");
        document.FormReg.NomUsuario.focus();
        document.getElementById("idNomUsuario").style.border = "2px solid red";
        return false;
    } else if(user.length > 25) {
        alert("Tu nombre de usuario es demasiado grande.");
        document.FormReg.NomUsuario.focus();
        document.getElementById("idNomUsuario").style.border = "2px solid red";
        return false;
    } else if(!patnick.test(user)) {
        alert("Introduce un nombre de usuario válido. Puedes utilizar letras, números, punto (.) y guiones (_)(-).");
        document.FormReg.NomUsuario.focus();
        document.getElementById("idNomUsuario").style.border = "2px solid red";
        return false;
    } else {
        document.getElementById("idNomUsuario").style.border = "0px";
        return true;
    }
}
function validarPassword() {
    var pass = document.FormReg.RegContrasena.value;
    var pass2 = document.FormReg.Contrasena.value;
    var patpwd = /[0-9]/;
    var patcart=/|°¬!"#$%&()=?'¡¿?¨*+´{}[]-_;,:.<>~/;
    if(vacio(pass)) { //validación de la contraseña
        alert("Debes introducir tu contraseña.");
        document.FormReg.RegContrasena.focus();
        document.getElementById("idRegContrasena").style.border = "2px solid red";
        return false;
    } else if(pass.length < 5 || pass.length > 20) {
        alert("Introduce una contraseña de entre 5 y 20 carácteres.");
        document.FormReg.RegContrasena.focus();
        document.getElementById("idRegContrasena").style.border = "2px solid red";
        return false;
    } else if(!patpwd.test(pass)) {
        alert("Introduce una contraseña válida. Tu contraseña debe tener al menos mayúsculas, minúsculas y números.");
        document.FormReg.RegContrasena.focus();
        document.getElementById("idRegContrasena").style.border = "2px solid red";
        return false;
    } else if(patcart.test(pass)){
        alert("Introduce una contraseña válida. No puede haber caracteres especiales en la contraseña.");
        document.FormReg.RegContrasena.focus();
        document.getElementById("idRegContrasena").style.border = "2px solid red";
        return false;
    } else if(pass2 !== pass) {
        alert("Las contraseñas no coinciden.");
        document.FormReg.Contrasena.focus();
        document.getElementById("idRegContrasena").style.border = "2px solid red";
        document.getElementById("idNuevContrasena").style.border = "2px solid red";
        return false;
    } else {
        document.getElementById("idRegContrasena").style.border = "0px";
        document.getElementById("idNuevContrasena").style.border = "0px";
        return true;
    }
}
function validarCorreo() {
    var mail = document.FormReg.Correo.value;
    var patcor = /^[\w-]+(\.[\w-]+)*@[A-Za-z0-9]+(\.[A-Za-z]{2,4})(\.[A-Za-z]{2,4})?$/;
    if(vacio(mail)) { //validación del email
        alert("Debes introducir tu dirección de correo electrónico.");
        document.FormReg.Correo.focus();
        document.getElementById("idCorreo").style.border = "2px solid red";
        return false;
    } else if(!patcor.test(mail)) {
        alert("Introduce una dirección de correo electrónico válida.");
        document.FormReg.Correo.focus();
        document.getElementById("idCorreo").style.border = "2px solid red";
        return false;
    } else {
        document.getElementById("idCorreo").style.border = "0px";
        return true;
    }
}
function validarDomicilio() {
    var domicilio = document.FormReg.domicilio.value;
    if(vacio(domicilio)) { //validación del domicilio
        alert("Debes introducir tu domicilio.");
        document.FormReg.domicilio.focus();
        document.getElementById("idDomicilio").style.border = "2px solid red";
        return false;
    } else if(domicilio.length > 150) {
        alert("Tu domicilio es demasiado grande.");
        document.FormReg.domicilio.focus();
        document.getElementById("idDomicilio").style.border = "2px solid red";
        return false;
    } else {
        document.getElementById("idDomicilio").style.border = "0px";
        return true;
    }
}
function bisiesto(temp) {
    if(((temp % 4 == 0) && (temp % 100 != 0)) || (temp % 400 == 0)) {
        return true;
    } else {
        return false;
    }
}
function validarFecha() {
    var dia = document.FormReg.Dia.value;
    var mes = document.FormReg.Mes.value;
    var year = document.FormReg.Year.value;
    var date = new Date();
    var yact = date.getUTCFullYear();
    if(dia == "Dia" && mes == "Mes" && year == "Year") {
        alert("Introduce tu fecha de nacimiento.");
        document.FormReg.submit.focus();
        document.getElementById("idDia").style.border = "2px solid red";
        document.getElementById("idMes").style.border = "2px solid red";
        document.getElementById("idYear").style.border = "2px solid red";
        return false; 
    } else if(dia == "Dia") {
        alert("Introduce el día en que naciste.");
        document.FormReg.submit.focus();
        document.getElementById("idDia").style.border = "2px solid red";
        document.getElementById("idMes").style.border = "0px";
        document.getElementById("idYear").style.border = "0px";
        return false;
    } else if(mes == "Mes") {
        alert("Introduce el mes en que naciste.");
        document.FormReg.submit.focus();
        document.getElementById("idDia").style.border = "0px";
        document.getElementById("idMes").style.border = "2px solid red";
        document.getElementById("idYear").style.border = "0px";
        return false;
    } else if(year == "Year") {
        alert("Introduce el año en el que naciste.");
        document.FormReg.submit.focus();
        document.getElementById("idDia").style.border = "0px";
        document.getElementById("idMes").style.border = "0px";
        document.getElementById("idYear").style.border = "2px solid red";
        return false;
    } else if(year > (yact-15)) {
        alert("Eres muy pequeño para usar este sitio.");
        document.FormReg.submit.focus();
        document.getElementById("idDia").style.border = "2px solid red";
        document.getElementById("idMes").style.border = "2px solid red";
        document.getElementById("idYear").style.border = "2px solid red";
        return false;
    } else if((!bisiesto(year) && mes == 02 && dia == 29) || (mes == 02 && dia > 28)) {
        alert("La fecha de nacimiento introducida no es válida. Febrero tiene tan sólo hasta el día 28, en años bisiestos también tiene hasta el día 29.");
        document.FormReg.submit.focus();
        document.getElementById("idDia").style.border = "2px solid red";
        document.getElementById("idMes").style.border = "2px solid red";
        document.getElementById("idYear").style.border = "2px solid red";
        return false;
    } else {
        document.getElementById("idDia").style.border = "0px";
        document.getElementById("idMes").style.border = "0px";
        document.getElementById("idYear").style.border = "0px";
        return true;
    }
}
function validarGenero() {
    var genero = document.FormReg.Genero.value;
    if(genero === "Genero") {
        alert("Ingresa tu género.");
        document.FormReg.submit.focus();
        document.getElementById("idGenero").style.border = "2px solid red";
        return false;
    } else {
        document.getElementById("idGenero").style.border = "0px";
        return true;
    }
}
function vacio(temp) {
    if(temp == null || temp.length == 0 || /^\s+$/.test(temp)) {
        return true;
    } else {
        return false;
    }
}