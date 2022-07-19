<%-- 
    Document   : new-paseo
    Created on : 21/08/2020, 06:06:03 PM
    Author     : andro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    session.setMaxInactiveInterval(30);
    if (session.getAttribute("key") == null && session.getAttribute("username") == null) {
        response.sendRedirect(request.getContextPath() + "/login.jsp");
    }
%>
<!DOCTYPE html>
<html class="ht">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nuevo Paseo</title>

        <title>KatMiau</title>


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
    <body id="top" class="fondito1" data-spy="scroll" data-target=".navbar-collapse" data-offset="50" >






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
                    <a href="index.html" id="kanidos" class="navbar-brand"><i class="fa fa-star-o"></i> KatMiau</a>
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

        <!-- NUEVO FORMULARIO-->   

        <div id="subEdit">

            <h2 id="subti"> Nueva MiauReserva:</h2>


        </div >
        <form id="formulario" action="savemascota" method="POST">

            <div id="div1">

                <p class="ps">Nombre del Gato:</p>

                <input type="text" name="nombre-mascota" id="nombre-mascota" class="cuadros">

                <p class="ps">Rserva la Fecha:</p>

                <input type="date" min="2020-03-20"  name="fecha-mascota" id="fecha-mascota" class="cuadros">

                <p class="ps">Indica la hora:</p>

                <input type="time" name="tiempo-mascota" id="tiempo-mascota" min="9:00" max="19:00" step="3600" class="cuadros"><br>

                <button id="boton1" type="submit">Enviar</button>

            </div>

            <div id="imagenEdit">
                <img id="fotito" src="img/gatoCanasta.png" alt=""/>
            </div>


        </form>








    </body>
</html>
