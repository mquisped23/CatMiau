<%-- 
    Document   : new-registro
    Created on : 22/08/2020, 03:11:59 AM
    Author     : andro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns:th="http://www.w3.org/1999/xhtml">
    <head>

<meta charset="UTF-8">
    <title>Kanidos</title>
    <meta charset=UTF-8>
    <link rel="icon" type="favicon" href="../img/FAVICON-KANIDOS.png" sizes="30x30">
    <!--JQUERY-->


    <!-- FRAMEWORK BOOTSTRAP para el estilo de la pagina-->



    <!-- Nuestro css-->
    <link rel="stylesheet" type="text/css" href="css/index2.css">
    
    

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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
              <!-- MAIN CSS -->
              <link rel="stylesheet" href="css/tooplate-style.css">



    </head>
    <body  class="fondito">
        
        
      
 

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
                    <a href="index.html" class="navbar-brand" id="kanidos"><i class="fa fa-star-o"></i> KatMiau</a>
               </div>

               <!-- MENU LINKS -->
               <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                         <li><a id="fondoverde" href="index.html" class="smoothScroll">Home</a></li>
                         <li><a id="fondoverde" href="#news" class="smoothScroll">Personal</a></li>
                  
                         <li><a id="fondoverde" href="#google-map" class="smoothScroll">Contactanos</a></li>
                         <li><a id="fondoverde" href="login.jsp" class="smoothScroll">Login</a></li>
                          <li  ><a class="smoothScroll" id="fondoverde" href="new-registro.jsp">Registro</a></li>
                    </ul>
               </div>

          </div>
     </section>
        
        
        
        <div class="modal-dialog text-center">
            <div class="col-sm-8 main-section">
                <div id="cuadroreg"  class="modal-content">
                    <div class="col-12 user-img">
                        <img src="img/iconoGato.png" />
                    </div>
                    <div th:if="${param.logout}" id="regist" class="alert alert-success" role="alert">
                        REGISTRO DE USUARIOS
                    </div>
                        <form class="col-12"  action="saveusuario" method="POST">

                        <div class="form-group" id="user-nombres">
                            <h5> Nombres:</h5>
                            <input type="text" class="form-control" placeholder="Nombres" name="Nombres"/>
                        </div>
                        <div class="form-group" id="user-apellidos">
                            <h5> Apellidos:</h5>
                            <input type="text" class="form-control" placeholder="Apellidos" name="Apellidos"/>
                        </div>
                        <div class="form-group" id="user-fechadenacimiento">
                            <h5> Fecha de Nacimiento:</h5>
                            <input type="date" class="form-control" placeholder="Fecha de Nacimiento" name="fechadenacimiento"/>
                        </div>

                        <div class="form-group" id="user-usuario">
                            <h5> Usuario:</h5>
                            <input type="text" class="form-control" placeholder="Usuario" name="Usuario"/>
                        </div>
                        <div class="form-group" id="user-contraseña">
                            <h5> Contraseña:</h5>
                            <input type="password" class="form-control"  placeholder="Contraseña" name="Contra-usua"/>
                        </div>

                        <button  id ="botonok" type="submit" class="btn btn-primary"><i class="fas fa-sign-in-alt"></i>>REGISTRARSE</a> </button>
                    </form>
                </div>
            </div>
        </div>
                        
                        
    
    </body>


</html>
