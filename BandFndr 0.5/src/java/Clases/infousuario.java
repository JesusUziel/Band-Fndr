package Clases;

public class infousuario {
    String nickname;
    String correo;
    String imagen;
    String nombreInstru;
    

    public infousuario() {
    }

    public void nuevo(String nickname, String correo,String imagen,String nombreInstru) {
        
        this.nickname = nickname;
        this.correo = correo;
        
        this.imagen = imagen;
        this.nombreInstru = nombreInstru;
    }

    
    public void setnickname(String nickname) {
        this.nickname = nickname;
    }

    public void setcorreo(String correo) {
        this.correo = correo;
    }
    public void setImagen(String imagen) {
        this.imagen = imagen;
    }
    public void setidInstrumento(String nombreInstru) {
        this.nombreInstru = nombreInstru;
    }

    
   

    public String getnickname() {
        return nickname;
    }

    public String getcorreo() {
        return correo;
    }
    public String getimagen() {
        return imagen;
    }
    public String getnombreInstru() {
        return nombreInstru;
    }
    
    
    
}

