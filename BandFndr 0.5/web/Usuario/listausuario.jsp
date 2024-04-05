<%@page import="java.util.List"%>
<%@page import="java.sql.Array"%>
<%@page import="Clases.infousuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="Conexion.Conexion"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>

<!DOCTYPE html>
<% HttpSession on=request.getSession(true); %>
<%!
    Connection con;
    Conexion miconexion;
    Statement stmt;
    ResultSet rs;
%>


<% 
    miconexion = new Conexion();
    con=miconexion.getConexion();
    stmt=con.createStatement();
    rs=stmt.executeQuery("SELECT nickname,correo,nombreInstru,imagen FROM usuario INNER JOIN instrumento on Usuario.idInstrumento=instrumento.idInstrumento WHERE Usuario.tipoUsu=1");
    
    ArrayList<infousuario>lista=new ArrayList<infousuario>();
%>
<html>
    <head>

    </head>
    <body onpaste="return false" ondrag="return false" ondrop="return false;">
      
            <%
        while(rs.next())
        {
        infousuario un_infousuario = new infousuario();
        un_infousuario.nuevo(rs.getString("nickname"),rs.getString("correo"),rs.getString("nombreInstru"),rs.getString("imagen"));
        %>
        <form action="agregarusuario.jsp" method="post" >
        <h3><%=rs.getString("nickname")%><br></h3>
        <h6> correo: <%=rs.getString("correo")%><br></h6>
        <h6> Instrumento <%=rs.getString("nombreInstru")%></h6>
        <img src="<%=(rs.getString("imagen").toString())%>" width="65" height="65" position="center"></a><br>
        <input type="checkbox" value="<%=rs.getString("nickname").toString()%>" name="telescope">
        
        
        
        <%
        lista.add(un_infousuario);
        }
    con.close();

    %>
    <input type="submit" name="enviardatos" value="Agregar" >
    </form>
    </body>
</html>