<%-- 
    Document   : cerrar
    Created on : 6/10/2017, 05:58:07 PM
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% HttpSession sesion=request.getSession(true); %>
<%
    request.getSession().removeAttribute("on");
    sesion.invalidate();
    response.sendRedirect("index.html");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body onpaste="return false" ondrag="return false" ondrop="return false;">
        <h1>Hello World!</h1>
    </body>
</html>
