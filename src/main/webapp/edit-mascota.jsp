<%-- 
    Document   : edit-mascota
    Created on : 22/08/2020, 01:02:44 AM
    Author     : andro
--%>

<%@page import="pe.edu.autonoma.entity.Mascota"%>
<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>

<%!
    Mascota mascota;

%>
<%
    mascota = (Mascota) request.getAttribute("mascota");
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Mascota</title>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=Edge">
        <meta name="description" content="">
        <meta name="keywords" content="">
        <meta name="author" content="Tooplate">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/animate.css">
        <link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="css/nuevoperro.css"

              <!-- MAIN CSS -->
              <link rel="stylesheet" href="css/tooplate-style.css">



    </head>
    <body class="fondito1" id="top" data-spy="scroll" data-target=".navbar-collapse" data-offset="50" >

       

        <!-- MENU -->
        <section id="seccion" class="navbar navbar-default navbar-static-top" role="navigation">
            <div class="container">

                <div class="navbar-header">
                    <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon icon-bar"></span>
                        <span class="icon icon-bar"></span>
                        <span class="icon icon-bar"></span>
                    </button>

                    <!-- lOGO TEXT HERE -->
                    <a id="kanidos" href="index.html" class="navbar-brand"><i class="fa fa-star-o"></i> KatMiau</a>
                </div>

                <!-- MENU LINKS -->
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a id="fondoverde" href="indexLogeado.jsp" class="smoothScroll">Home</a></li>
                        <li><a id="fondoverde" href="new-paseo.jsp" class="smoothScroll">Nueva MiauCita</a></li>
                        <li><a id="fondoverde" href="showmascotasservlet" class="smoothScroll">Mis MiauCitas</a></li>
                        <li><a id="fondoverde" href="indexLogeado.html#news" class="smoothScroll">Personal</a></li>

                        <li><a id="fondoverde" href="indexLogeado.html#google-map" class="smoothScroll">Contactanos</a></li>
                         <li><a id="fondoverde" href="signout" class="smoothScroll">Salir </a></li>
                        <!-- Poner Aca el usuario    -->
                    </ul>
                </div>
            </div>
        </section>


        <div id="subEdit">

            <h2 id="subtiF" > Edit de mi  MiauCita:</h2>

        </div>

        <form id="formulario" action="saveeditmascota" method="POST">

            <div id="div1">

                <label for="id2">Id: </label>
                <input type="hidden" name="id" id="id" value="<%=mascota.getId()%>">
                <input type="text" name="id2" id="id2" value="<%=mascota.getId()%>" disabled><br>

                <p class="ps">Nombre de tu Gatito:</p>

                <input type="text" name="nombre-mascota" id="nombre-mascota" class="cuadros" value="<%=mascota.getNombreMacota()%>" >

                <p class="ps">Rserva la Fecha:</p>

                <input type="date" min="2020-03-20"  name="fecha-mascota" id="fecha-mascota" class="cuadros" value="<%=mascota.getFechaMascota()%>">

                <p class="ps">Indica la hora:</p>

                <input type="time" name="tiempo-mascota" id="tiempo-mascota" min="9:00" max="19:00" step="3600" class="cuadros" value="<%=mascota.getTiempoMascota()%>"><br>

                <button id="boton1" type="submit">Enviar</button>

            </div>
                
                <div id="imagenEdit"> <img id="fotito" src="img/editar.png" alt=""/></div>
                

        </form>





    </body>
</html>
