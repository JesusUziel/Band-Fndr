
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
    
    Statement stmt=con.createStatement();
    ResultSet rs;
   
    String Consulta=("SELECT nomEvento,fechaEvento,horaEvento,imagen from evento;");
    
    
    rs=stmt.executeQuery(Consulta);
    ;
%>
    </head>
    <body onpaste="return false" ondrag="return false" ondrop="return false;">    
<%  
    while(rs.next()){
    //out.println("Encontrado:"+rs.getString("nomPersona")+" "+rs.getString("ApellidoPat")+"");
%>
        <table cellspacing="10" cellpadding="10">
            <tr>
        <th>Nombre del Evento</th>
        <th>Fecha</th>
        <th>Hora</th>
            </tr>
            <tr>
        <td><%=rs.getString("nomEvento")%></td>
            <br>
        <td><%=rs.getString("fechaEvento")%></td>
        <td><%=rs.getString("horaEvento")%></td>
        <td> <img  src="<%=rs.getString("imagen")%>"  width="60" height="60" class="mejora"><td>
        
            </tr>
        </table>
 <%
        }
    
%>
    </body>