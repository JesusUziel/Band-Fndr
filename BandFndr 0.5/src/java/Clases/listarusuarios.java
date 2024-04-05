/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

public class listarusuarios {
    String idusuario;
    String nickname;
    String rutaimg;
    
    public listarusuarios(){
    
    }
    public void acom(String idusuario, String nickname, String rutaimg){
        this.idusuario=idusuario;
        this.nickname=nickname;
        this.rutaimg=rutaimg;
        
    }
    public void setidusuario(String idusuario){
        this.idusuario=idusuario;
    }
    public void setnickname(String nickname){
        this.nickname=nickname;
    }
    public void setrutaimg(String rutaimg){
        this.rutaimg=rutaimg;
    }
    
    public String getidusuario() {
        return idusuario;
    }
    public String getnickname() {
        return nickname;
    }
    public String getrutaimg() {
        return rutaimg;
    }
}
