<%-- 
    Document   : mostrarMascotas
    Created on : 17/11/2021, 12:33:34 PM
    Author     : andro
--%>

<%@page import="java.util.List"%>
<%@page import="pe.edu.autonoma.entity.Mascota"%>
<%@page import="pe.edu.autonoma.dao.MascotaDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
       
        <title>JSP Page</title>
    </head>
    <body>
       <div class="container mt-4">
            <div class="card">
                <div class="card-header">
                    <a href="Controlador?accion=add" class="btn btn-primary">Nuevo Usuario</a>
                </div>
                <div class="card-body">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>NonmbreMascota</th>
                                <th>FechaMascota</th>
                                <th>TiempoMascota</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                            //Instanciamos la clase UserService
                            MascotaDao dao = new MascotaDao();
                            List<Mascota> datos = dao.list();//El <User>viene del servicio
                            for(Mascota u : datos){
                                
                            
                            
                            %>
                            <tr>
                                <td><%= u.getId()%></td>
                                <td><%= u.getNombreMacota()%></td>
                                <td><%= u.getFechaMascota()%></td>
                                <td><%= u.getTiempoMascota()%></td>
                                <td>
                                    <a href="Controlador?accion=editar&id=<%= u.getId()%>" class="btn btn-warning">Edit</a>
                                    <a href="#" class="btn btn-danger">Delete</a>
                                </td>
                            </tr>
                            <%}%> <!--Aqui termina el for de arriba-->
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
