/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author Jesus
 */
public class email {
     public boolean enviarCorreo(String de, String clave, String para, String mensaje,String nombre,String correo,
     String prioridad,String area){
        boolean enviado = false;
            try{
            
                String host = "smtp.gmail.com";
                
                Properties prop = System.getProperties();
                
                prop.setProperty("mail.smtp.host", host);
                prop.setProperty("mail.transport.protocol", "smtp");
                prop.setProperty("mail.host", "smtp.gmail.com");
                prop.setProperty("mail.smtp.starttls.enable", "true");
                prop.setProperty("mail.smtp.port","587");
                prop.setProperty("mail.smtp.user",de);
                
                Session sesion = Session.getDefaultInstance(prop,null);
                sesion.setDebug(true);
                
                MimeMessage message = new MimeMessage(sesion);
                
                message.setFrom(new InternetAddress(de));
                
                
                message.setRecipient(Message.RecipientType.TO, new InternetAddress(para));
                
                message.setSubject(area);
                message.setText("Nombre : "+nombre+"\n"+"Correo : "+correo+"\n"+"Prioridad: "+prioridad+"\n\n"+
                       "Mensaje: "+"\n"+mensaje);
                
                Transport transport = sesion.getTransport("smtp");
                
                transport.connect(host,de,clave);
                
                transport.sendMessage(message, message.getAllRecipients());
                
                transport.close();
                
                enviado = true;
                
            }catch(Exception e){
                e.printStackTrace();
            }
        
        return enviado;
    }
}
