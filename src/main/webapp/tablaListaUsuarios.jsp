<%@page import="javax.servlet.http.HttpSession"%>
<%@ page import="pe.edu.autonoma.entity.Registro" %>
<%@ page import="pe.edu.autonoma.encriptamiento.EncriptacionContra" %>
<%@ page import="java.util.List" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    
    List<Registro> registro = (List<Registro>) request.getAttribute("datos");
    EncriptacionContra encriptacionContra  = new EncriptacionContra();
%>
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
        <link rel="stylesheet" href="css/nuevoperro.css">
              <link href="csss/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <!-- MAIN CSS -->
        <link rel="stylesheet" href="css/tooplate-style.css">

    
</head>
<body class="fondito1" id="top" data-spy="scroll" data-target=".navbar-collapse" data-offset="50">
    
    
    
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
                        <li><a id="fondoverde" href="IndexAdmin.jsp" class="smoothScroll">Home</a></li>
                        <li><a id="fondoverde" href="ListarUsuarioServ" class="smoothScroll">Mis MiauCLientes</a></li>
                        <li><a id="fondoverde" href="#news" class="smoothScroll">Personal</a></li>

                        <li><a id="fondoverde" href="#google-map" class="smoothScroll">Contactanos</a></li>
                        <li><a id="fondoverde" href="signout" class="smoothScroll">Salir </a></li>


                        <!-- Poner Aca el usuario    -->
                    </ul>

                </div>

            </div>

        </section>
        
        
       <h1 id="tituloMascota">Mis MiauClientes</h1>
       <hr> 
        
      <table id="tabla1" class="table table-bordered">
            <thead>
                <tr>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>fecha</th>
                    <th>usuario</th>
                    <th>contra</th>
                </tr>
            </thead>
            <%for (Registro producto : registro) {%>
            <tbody>
                
                <tr>
                    <td id="borrarTdRight"><%=producto.getNombreUsuario()%></td>
                    <td id="borrarTdRight"><%=producto.getApellidoUsuario()%></td>
                    <td id="borrarTdRight"><%=producto.getFechaUsuario()%></td>
                    <td id="borrarTdRight"><%=producto.getUsuario()%></td>
                    <td id="borrarTdRight"><%= encriptacionContra.Desencriptar(producto.getContra())%></td>
                </tr>
                <%}%>
            </tbody>
        </table>

</body>
</html>
