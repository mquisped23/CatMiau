<%
   String idUsuario  = String.valueOf( session.getAttribute("idAdmin"));
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hola Administrador</h1>
        
        <h2>El id del administrador es: <%= idUsuario %> </h2>
    </body>
</html>
