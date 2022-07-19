<%
    HttpSession sesion = request.getSession();
    String id  = String.valueOf(sesion.getAttribute("idUsuario"));
    int id1  = Integer.parseInt(id);
    
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    session.setMaxInactiveInterval(30);
    if (session.getAttribute("key") == null && session.getAttribute("username") == null) {
        response.sendRedirect(request.getContextPath() + "/login.jsp");
    }
%>

<%@page import="pe.edu.autonoma.dao.MascotaDao"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@page import="pe.edu.autonoma.entity.Mascota"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


        <title>Mis Paseos</title>


        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=Edge">
        <meta name="description" content="">
        <meta name="keywords" content="">
        <meta name="author" content="Tooplate">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/cssModal.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/animate.css">
        <link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="css/nuevoperro.css"
              <link href="csss/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <!-- MAIN CSS -->
        <link rel="stylesheet" href="css/tooplate-style.css">

    </head>
    <body class="fondito1" id="top" data-spy="scroll" data-target=".navbar-collapse" data-offset="50"  >




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



        <!-- TABLA A MOSTRAR-->


        <div id="container">

            <h1 id="tituloMascota">Tus MiauReservas</h1>
            <hr>
            <table id="tabla1" class="table table-bordered">



                <tr> 
                    <th id="borrarLinea" class="text-center"> Id </th>
                    <th class="text-center"> Nombre De La Mascota</th>
                    <th class="text-center"> Fecha del Servicio Adquerido </th>
                    <th class="text-center">Tiempo del Servicio</th>

                    <th id="borrarLinea" class="text-center">Acciones</th>
                </tr>    



                <tbody>
                    <%
                        //Instanciamos la clase UserService
                        MascotaDao dao = new MascotaDao();
                        System.out.println(id1);
                        List<Mascota> datos = dao.list(id1);//El <User>viene del servicio
                        for (Mascota u : datos) {


                    %>
                    <tr>
                        <td id="borrarTd" class="text-center"> <%=u.getId()%></td>
                        <td class="text-center"> <%=u.getNombreMacota()%></td>
                        <td class="text-center"><%=u.getFechaMascota()%></td>
                        <td class="text-center"><%=u.getTiempoMascota()%></td>

                        <td id="borrarTd">
                            <a id="botonespacio" href="editmascota?id=<%=u.getId()%>" class="btn btn-warning btn-sm">Editar</a>


                            <a href="delmascota?id=<%=u.getId()%>" class="btn btn-warning btn-sm">Borrar</a>
                        </td>

                    </tr> 
                    <%
                        }
                    %>
                </tbody>

            </table>
        </div>

        <section id="seccionModal">
            <input type="checkbox" id="btn-modal">
            <label for ="btn-modal" class="lbl-modal">Pagar</label>
            <div class="modal">
                <div class="contenedor">
                    <header>Metodos De Pagos</header>
                    <label for="btn-modal">X</label>
                    <div class="contenido">
                        <div class="paquetito">
                            <img src="img/paypal.png">
                            <img src="img/visa.png">
                            <img src="img/mastercard.png">
                        </div>

                    </div>
                </div>
            </div>
        </section>





    </body>
</html>
