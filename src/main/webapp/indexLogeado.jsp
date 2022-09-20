
<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    session.setMaxInactiveInterval(30);
    if (session.getAttribute("key") == null && session.getAttribute("username") == null) {
        response.sendRedirect(request.getContextPath() + "/login.jsp");
    }
    
    String nombreUsuario = (String)session.getAttribute("username");
    
%>
<html lang="en">
    <head>

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
        <link rel="stylesheet" href="css/nuevoperro.css">
        <!-- MAIN CSS -->

        <link rel="stylesheet" href="css/tooplate-style.css">
        <!-- Start of  Zendesk Widget script -->
        <script id="ze-snippet" src="https://static.zdassets.com/ekr/snippet.js?key=11bf8ccf-03c5-4627-a2b1-767f58ebcb2a"></script>
        <!-- End of  Zendesk Widget script -->

    </head>
    <body id="top" data-spy="scroll" data-target=".navbar-collapse" data-offset="50">



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
                        <span class="email-icon"><i class="fa fa-envelope-o"></i>katmiau@gmail.com</span>
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
                        <li><a id="fondoverde" href="InformacionPersonal" class="smoothScroll"><%= nombreUsuario %></a></li>

                        <!-- Poner Aca el usuario    -->
                    </ul>

                </div>

            </div>

        </section>


        <!-- HOME -->
        <section id="home" class="slider" data-stellar-background-ratio="0.5">
            <div class="container">
                <div class="row">

                    <div class="owl-carousel owl-theme">
                        <div class="item item-first">
                            <div class="caption">
                                <div class="col-md-offset-1 col-md-10">
                                    <br><br> 

                                    <h1>En nuestro chat podras compartir amenas platicas con los demás clientes sobre sus gatitos y su cuidados</h1>
                                    <br><br> 
                                    <a href="Pruevita.jsp" class="section-btn btn btn-default smoothScroll">Nuestro KatChat</a>
                                </div>
                            </div>
                        </div>

                        <div class="item item-second">
                            <div class="caption">
                                <div class="col-md-offset-1 col-md-10">
                                    <h1>KatMiau</h1>
                                    <a href="#about" class="section-btn btn btn-default btn-gray smoothScroll">Nuestra Visión</a>
                                </div>
                            </div>
                        </div>

                        <div class="item item-third">
                            <div class="caption">
                                <div class="col-md-offset-1 col-md-10">
                                    <h1>KatMiau</h1>
                                    <a href="#about" class="section-btn btn btn-default btn-blue smoothScroll">Nuestra Misión</a>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </section>


        <!-- ABOUT -->
        <section id="about">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-sm-6">
                        <div class="about-info">
                            <h2 class="wow fadeInUp" data-wow-delay="0.3s">Bienvenido a la familia KatMiau</h2>
                            <div class="wow fadeInUp" data-wow-delay="0.3s">
                                <h3>Dedicados a brindar un servicio integro con toda
                                    seguridad,dedicacion y amor para tus mascotas en
                                    cada pase le brindamos bienestar fisico y emocional</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <!-- NEWS -->
        <section id="news" data-stellar-background-ratio="2.5">
            <div class="container">
                <div class="row">

                    <div class="col-md-12 col-sm-12">
                        <!-- SECTION TITLE -->
                        <div class="section-title wow fadeInUp" data-wow-delay="0.1s">
                            <h2>PERSONALES</h2>
                        </div>
                    </div>

                    <div class="col-md-4 col-sm-6">
                        <!-- NEWS THUMB -->
                        <div class="news-thumb wow fadeInUp" data-wow-delay="0.8s">
                            <a href="cvfabri-log.html">
                                <img src="img/Fabri.jpeg"  id="fabri" class="img-responsive" alt="">

                            </a>
                            <div class="news-info">
                                <span> VILLA MARIA DEL TRIUNFO - PERÚ </span>
                                <h3><a href="cvfabri-log.html">FABRIZIO DAVILA VARELA</a></h3>
                            </div>
                        </div>
                    </div>
                    <br>

                    <div class="col-md-4 col-sm-6">
                        <!-- NEWS THUMB -->
                        <div class="news-thumb wow fadeInUp" data-wow-delay="0.8s">
                            <a href="cvangelo-log.html">
                                <img id="german" src="img/german.jpeg" class="img-responsive" alt="">
                            </a>
                            <div class="news-info">
                                <span> MALA - PERÚ </span>
                                <h3><a href="cvangelo-log.html">Ismael German Zumaran Seminario</a></h3>
                            </div>
                        </div>
                    </div>
                    <br>
                    <div class="col-md-4 col-sm-6">
                        <!-- NEWS THUMB -->
                        <div class="news-thumb wow fadeInUp" data-wow-delay="0.8s">
                            <a href="cvmiguel-log.html">
                                <img src="img/miguelfoto.jpeg" class="img-responsive" alt="">
                            </a>
                            <div class="news-info">
                                <span> LURIN- PERÚ </span>
                                <h3><a href="cvmiguel-log.html">MIGUEL ANGEL QUISPE DUPUY</a></h3>
                            </div>
                        </div>
                        <br>
                    </div>
                    <br>
                    <div class="col-md-4 col-sm-6" >
                        <!-- NEWS THUMB -->
                        <div class="news-thumb wow fadeInUp" data-wow-delay="0.8s">
                            <a href="cvgyanella-log.html">
                                <img src="img/gyanella.jpeg"  id  = "gyanella"  class="img-responsive"   alt="">
                            </a>
                            <div class="news-info">
                                <span> VILLA EL SALVADOR - PERÚ </span>
                                <h3><a href="cvgyanella-log.html">GYANELLA GISELLE CUNO CASAÑO </a></h3>
                            </div>
                        </div>
                        <br>
                    </div>

                    <br>
                    <div class="col-md-4 col-sm-6" >
                        <!-- NEWS THUMB -->
                        <div class="news-thumb wow fadeInUp" data-wow-delay="0.8s">
                            <a href="cvfares-log.html">
                                <img src="img/fares.jpeg"  id  = "gyanella"  class="img-responsive"   alt="">
                            </a>
                            <div class="news-info">
                                <span> VILLA EL SALVADOR - PERÚ </span>
                                <h3><a href="cvfares-log.html">ORMEÑO OCAMPO FARES ANGEL SALOMON </a></h3>
                            </div>
                        </div>
                        <br>
                    </div>
                    <br>

                </div>
            </div>
        </section>


        <!-- GOOGLE MAP -->
        <section id="google-map">
            <!-- How to change your own map point
                   1. Go to Google Maps
                   2. Click on your location point
                   3. Click "Share" and choose "Embed map" tab
                   4. Copy only URL and paste it within the src="" field below
            -->
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d31209.87279368633!2d-77.01269790656781!3d-12.096119938809116!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105c7d19478c6bf%3A0xb53809bf8f8b06c8!2sSan%20Borja!5e0!3m2!1ses!2spe!4v1596858014984!5m2!1ses!2spe" width="100%" height="350" frameborder="0" style="border:0" allowfullscreen></iframe>
        </section>           


        <!-- FOOTER -->
        <footer data-stellar-background-ratio="5">
            <div class="container">
                <div class="row">

                    <div class="col-md-4 col-sm-4">
                        <div class="footer-thumb"> 
                            <h4 class="wow fadeInUp" data-wow-delay="0.4s">Nuestro Misión</h4>
                            <p>Ser líder en los servicios que prestan en el tratamiento de la gestión y modificación de conductas caninas. Ser el centro de referencia que se distinga por promocionar una atención de calidad, que de respuestas a las necesidades y expectativas del cliente.</p>
                        </div>
                    </div>

                    <div class="col-md-4 col-sm-4">
                        <div class="footer-thumb">
                            <h4 class="wow fadeInUp" data-wow-delay="0.4s">Nuestro Visión</h4>
                            <p>Ofrecer el servicio de optima calidad que precisan nuestras mascotas, tanto en educación y adiestramiento canino como en la gestión y modificación de sus conductas, garantizando los estándares de seguridad y <calidad class=""></calidad></p>
                        </div>
                    </div>

                    <div class="col-md-4 col-sm-4"> 
                        <div class="footer-thumb">
                            <div class="opening-hours">
                                <h4 class="wow fadeInUp" data-wow-delay="0.4s">Horario</h4>
                                <p>Lunes - Viernes <span>09:00 AM - 19:00 PM</span></p>
                                <p>Sabado <span>09:00 AM - 19:00 PM</span></p>
                                <p>Domingo <span>Closed</span></p>
                            </div> 

                            <ul class="social-icon">
                                <li><a href="#" class="fa fa-facebook-square" attr="facebook icon"></a></li>
                                <li><a href="#" class="fa fa-twitter"></a></li>
                                <li><a href="#" class="fa fa-instagram"></a></li>
                            </ul>
                            <div class="contact-info">
                                <p><i class="fa fa-phone"></i>+51 944-714-945</p>
                                <p><i class="fa fa-envelope-o"></i>katmiau6@gmail.com</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-12 col-sm-12 border-top">
                        <div class="col-md-4 col-sm-6">
                            <div class="copyright-text"> 
                                <p>Copyright &copy; 2020 <a rel="nofollow" href="https://www.facebook.com/Kni2Paseos" target="_parent">KatMiau</a></p>
                            </div>
                        </div>
                        <div class="col-md-2 col-sm-2 text-align-center">
                            <div class="angle-up-btn">
                                <a href="#top" class="smoothScroll wow fadeInUp" data-wow-delay="1.2s"><i class="fa fa-angle-up"></i></a>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </footer>

        <!-- SCRIPTS -->



        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.sticky.js"></script>
        <script src="js/jquery.stellar.min.js"></script>
        <script src="js/wow.min.js"></script>
        <script src="js/smoothscroll.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/custom.js"></script>

    </body>
</html>