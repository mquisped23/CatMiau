<%-- 
    Document   : Pruevita
    Created on : 7/12/2021, 06:07:12 PM
    Author     : andro
--%>
<%
    String username  = String.valueOf(session.getAttribute("username"));
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link  rel="stylesheet" href="css/StylesChat.css">
        <meta name="description" content="">
        <meta name="keywords" content="">
        <meta name="author" content="Tooplate">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/animate.css">
        <link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="css/nuevoperro.css">
        <!-- MAIN CSS -->
        
        <link rel="stylesheet" href="css/tooplate-style.css">
        <!-- Start of  Zendesk Widget script -->
        <script id="ze-snippet" src="https://static.zdassets.com/ekr/snippet.js?key=11bf8ccf-03c5-4627-a2b1-767f58ebcb2a"></script>
        <!-- End of  Zendesk Widget script -->

    </head>
    
    <body id="fondogato">
        
        <!-- HEADER -->
        <header >
            <div class="container">
                <div class="row">

                    <div class="col-md-4 col-sm-5">
                        <p>Bienvenidos a KatMiau</p>
                    </div>

                    <div class="col-md-8 col-sm-7 text-align-right">
                        <span class="phone-icon"><i class="fa fa-phone"></i> +51 944-714-945</span>
                        <span class="date-icon"><i class="fa fa-calendar-plus-o"></i> 9:00 AM - 19:00 PM</span>
                        <span class="email-icon"><i class="fa fa-envelope-o"></i>KatMiau@gmail.com</span>
                    </div>
                </div>
            </div>
        </header>


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
                <div  class="collapse navbar-collapse " style="width: 100%" >
                    <ul class="nav navbar-nav navbar-right" >
                        <li><a id="fondoverde" href="indexLogeado.jsp" class="smoothScroll">Home</a></li>
                        <li><a id="fondoverde" href="new-paseo.jsp"  class="smoothScroll">Nueva MiauCita</a></li>

                        <li><a id="fondoverde" href="showmascotasservlet" class="smoothScroll">Mis MiauCitas</a></li>
                        <li><a id="fondoverde" href="#news" class="smoothScroll">Personal</a></li>

                        <li><a id="fondoverde" href="#google-map" class="smoothScroll">Contactanos</a></li>
                        <li><a id="fondoverde" href="signout" class="smoothScroll">Salir </a></li>


                        <!-- Poner Aca el usuario    -->
                    </ul>

                </div>

            </div>

        </section>


        <div id="cuadroPrincipal">
            <div id="divImagen">

                <img src="img/iconoGato.png" id="imagenLogin"  alt=""/>
            </div>
            <form  target="el-iframe" action="ServletChat" >
                <div id="cuadritoNombre">
                    <label class="nombre">Nombre:</label>
                    <input type="text" readonly id="usuario" name="txtnombre" value="<%= username %>" placeholder="KatUsuario" />
                </div>
                <div id="cuadritoMensaje">
                    <label class="nombre"  >Mensaje:</label> 
                    <br>
                    <textarea  id="mensaje" name="txtmensaje"></textarea>
                </div>
                <div id="divBoton">
                    <button type="submit"  name="accion" value="Guardar" id="btnEnviar" class="botonmusica">Enviar</button>
                    <script>
                        let boton = document.querySelector(".botonmusica")

                        boton.addEventListener("click", () => {
                            let etiquetaAudio = document.createElement("audio")
                            etiquetaAudio.setAttribute("src", "audios/gatoSonido.mp3")
                            etiquetaAudio.play()
                        })
                    </script>
                   
                </div>
                <textarea id="conversacion" class="conversacion" readonly></textarea>


            </form>
        </div>
       
        <script src="js/codigo.js"></script>
    </body>
    <iframe class="ocultar" name="el-iframe"></iframe>
</html>
 