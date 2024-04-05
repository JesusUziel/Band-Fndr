<%-- 
    Document   : editarinfoaction
    Created on : 3/12/2017, 02:24:20 PM
    Author     : Jesus
--%>

<%@page import="Conexion.Conexion"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession on =request.getSession(true); 
    String on2=(String)on.getAttribute("sesion");
    out.println("Bienvenido" + on2);
%>

<%
    String Nombre;
%>
<%
   
    Connection con;
    Conexion miconexion;    
    miconexion = new Conexion();
    con=miconexion.getConexion();


    Nombre=request.getParameter("EditUsu");
    
    Statement stmt=con.createStatement();
    ResultSet rs;
   
    String Consulta=("update usuario set nickname='"+Nombre+"' where nickname ='"+on2+"'");
    
    stmt.executeUpdate(Consulta);
    rs = stmt.executeQuery("Select nickname from usuario");                
    if(rs.next()){ 
        request.getSession().removeAttribute("on");
        on.setAttribute("sesion", Nombre);
        response.sendRedirect("PerfilUsuario.jsp");
    }else{
        response.sendRedirect("PerfilUsuario.jsp");
    }
    con.close();
    
%>