
<%
    Registro registro   = (Registro) request.getAttribute("datos");
%>

<%@page import="pe.edu.autonoma.entity.Registro"%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mi Informacion</title>
    </head>
    <body>
        <h1>Mi informacion Personal</h1>
        <p> <%= registro.getNombreUsuario()%> </p>
        <p> <%= registro.getApellidoUsuario()%></p>
        <p> <%= registro.getFechaUsuario()%> </p>
        <p> <%= registro.getDireccion()%> </p>
        <p> <%= registro.getUsuario()%> </p>
        
    </body>
</html>
