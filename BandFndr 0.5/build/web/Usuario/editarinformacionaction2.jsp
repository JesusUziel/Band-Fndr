<%@page import="Conexion.Conexion"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession on =request.getSession(true); 
    String on2=(String)on.getAttribute("sesion");
    out.println("Bienvenido" + on2);
%>
<%

    String contrasena;
%>

<%
    
    Connection con;
    Conexion miconexion;    
    miconexion = new Conexion();
    con=miconexion.getConexion();


     contrasena=request.getParameter("EditContra");
    
    Statement stmt=con.createStatement();
    ResultSet rs;
   
    String Consulta=("update usuario set contrasenaUsu='"+contrasena+"' where nickname ='"+on2+"'");
    
    stmt.executeUpdate(Consulta);
    rs = stmt.executeQuery("Select contrasenaUsu from usuario");                
    if(rs.next()){
       
        request.getSession().removeAttribute("on");
        on.setAttribute("sesion2", contrasena);
        response.sendRedirect("PerfilUsuario.jsp");
    }else{
        response.sendRedirect("PerfilUsuario.jsp");
    }
    con.close();
%>