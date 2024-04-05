/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function validasupport(){
    var nombresoporte=document.FormSoport.NombreAyuda.value;
    var correousuario=document.FormSoport.CorreoAyuda.value;
    var prioridad=document.FormSoport.Prioridad.value;
    var area=document.FormSoport.AreaAsunto.value;
    var mensaje=document.FormSoport.MensDes.value;
    
    if(nombresoporte==null){
        alert("Introduce un nombre");
        return false;
    }
    if(nombresoporte.length>50){
        alert("Introduce un nombre de maximo 50 caract.");
        return false;
    }
    if(correousuario==null){
        alert("Introduce un correo");
        return false;
    }
    if(prioridad=""){
        alert("Introduce la prioridad");
        return false;
    }
    if(area==""){
        alert("Introduce el area del asunto");
        return false;
    }
    if(mensaje==null){
        alert("Introduce tu mensaje");
        return false;
    }
}
