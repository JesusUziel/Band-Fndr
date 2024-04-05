<%@page import="Conexion.Conexion"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession on =request.getSession(true); 
    String on2=(String)on.getAttribute("sesion");
    
%>

<%
    
    Connection con;
    Conexion miconexion;    
    miconexion = new Conexion();
    con=miconexion.getConexion();


    String man=request.getParameter("man");
    
    Statement stmt=con.createStatement();
    ResultSet rs;
   
    String Consulta=("update usuario set idImagenPerfiles='"+man+"' where nickname ='"+on2+"'");
    stmt.executeUpdate(Consulta);
    response.sendRedirect("PerfilUsuario.jsp");
    

%>

