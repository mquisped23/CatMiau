<%-- 
    Document   : login
    Created on : 22/08/2020, 12:01:45 AM
    Author     : andro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
    String username, message;

%>
<%
   
    username = (String) request.getAttribute("username");
    message = (String) request.getAttribute("message");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>



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

        <!-- MAIN CSS -->
        <link rel="stylesheet" href="css/tooplate-style.css">


        <link rel="stylesheet" type="text/css" href="css/index2.css">

    </head>
    <body id="top" class="fondito" data-spy="scroll" data-target=".navbar-collapse" data-offset="50">





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
                    <a href="index.html" class="navbar-brand" id="kanidos" ><i class="fa fa-star-o"></i> KatMiau</a>
                </div>

                <!-- MENU LINKS -->
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a id="fondoverde" href="index.html" class="smoothScroll">Home</a></li>
                        <li><a id="fondoverde" id="fondo verde" href="index.html#news" class="smoothScroll">Personal</a></li>

                        <li><a id="fondoverde" href="index.html#google-map" class="smoothScroll">Contactanos</a></li>
                        <li  ><a class="smoothScroll" id="fondoverde" href="new-registro.jsp">Registro</a></li>
                    </ul>
                </div>

            </div>
        </section>

        <div class="modal-dialog text-center">
            <div class="col-sm-8 main-section">
                <div id="fondolog" class="modal-content">
                    <div class="col-12 user-img">
                        <img src="img/iconoGato.png" width="100px" height="100px">
                    </div>
                    <div if="${param.logout}" class="alert alert-success" role="alert" id ="titulologin">BIENVENIDOS A KatMiau</div>

                    <%
                        if (message != null) {
                    %>
                    <p class="text-error"><%=message%></p>
                    <%
                        }
                    %>

                    <form class="col-12" action="signin" method="post">

                        <div class="form-group" id="user-group">
                            <input type="text" class="form-control" placeholder="Usuario" name="username"  value="<%=(username != null ? username : "")%>"/>
                        </div>
                        <div class="form-group" id="contrasena-group">
                            <input type="password" class="form-control" placeholder="Contraseña" name="password"/>
                        </div>

                        <button id ="botonok" type="submit" class="btn btn-primary"><i class="fas fa-sign-in-alt"></i>  INICIAR SESIÓN </button>

                        <div class="registro">
                            <button id ="botonok"  type="submit" class="btn btn-primary"><i class="fas fa-sign-in-alt"></i><a href="registro.html"> CREAR CUENTA </button>
                        </div>
                    </form>
                    <div class="col-12 forgot">

                    </div>
                </div>
            </div>




        </div>



    </body>
</html>
