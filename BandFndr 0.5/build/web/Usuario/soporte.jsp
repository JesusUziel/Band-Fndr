<%-- 
    Document   : soporte
    Created on : 9/12/2017, 10:17:37 PM
    Author     : Jesus
--%>

<%@page import="Clases.email"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="Conexion.Conexion"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Properties"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.MessagingException"%>
<%@page import="javax.mail.Session"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%!
    String nombre,correo,prioridad,area,asunto,mensaje;
 
    email email=new email();
 %>   
 <%  
    
    nombre=request.getParameter("NombreAyuda");
    correo=request.getParameter("CorreoAyuda");  
    prioridad=request.getParameter("Prioridad");
    area=request.getParameter("AreaAsunto");
    asunto=request.getParameter("titAsunto"); 
    mensaje=request.getParameter("MensDes");
    
       
 %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body onpaste="return false" ondrag="return false" ondrop="return false;">
       <%
           
       boolean resultado = email.enviarCorreo("soportefndr@gmail.com","healing888", "bandfndr@gmail.com", mensaje,
       nombre,correo,prioridad,area);
            
            if(resultado){
               response.sendRedirect("PSoporte.jsp");
            }else{
                out.print("CORREO ELECTRONICO NO ENVIADO....."+"\n\n"+"<a href='PSoporte.jsp'>VOLVER A SOPORTE</a>"); 
            }
            
        
       %>
      
    </body> 
</html>
