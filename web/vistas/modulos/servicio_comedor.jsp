<%-- 
    Document   : servicio_comedor
    Created on : 06-10-2020, 15:18:29
    Author     : Nilvia S Miranda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es-ES">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/sign-in/">

        <!-- Bootstrap core CSS -->
        <link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="../../css/estilos.css" rel="stylesheet" type="text/css"/>        
        <title>Hostal Doña Clarita</title>        
    </head>
    <body>        
        <nav class="navbar navbar-expand-xl text-center text-light mod-navbar">
            <img src="img/HOSTALCLARITA.jpg" alt=""/>
            <button class="navbar-toggler color-icono-navbar" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>        

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link py-4 px-4 boton-navbar" href="../sesion_admin.jsp">Inicio</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link py-4 px-4 boton-navbar" href="registro_usuario.jsp">Registrar usuario</a>
                    </li>                 
                    <li class="nav-item">
                        <a class="nav-link py-4 px-4 boton-navbar" href="facturacion.jsp">Facturación</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link pagina-principal py-4 px-4" id="inicio" href="servicio_comedor.jsp">Servicio comedor <span class="sr-only">(current)</span></a>
                    </li>                    
                    <li class="nav-item">
                        <a class="nav-link py-4 px-4 boton-navbar" href="estadisticas.jsp">Estadísticas</a>
                    </li>
                </ul>
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">                    
                        <label class="nav-link py-4 px-4 boton-navbar">Sesión: ADMINISTRADOR</label>
                    </li>
                    <li class="nav-item">                        
                        <a class="nav-link py-4 px-4 boton-navbar" href="../../index.jsp">Cerrar sesión</a>
                        
                    </li>  
                </ul>
            </div>
        </nav>
        <main class="fondo-principal text-center salto-linea">
            <section class="container border bg-secondary">
                <h1 class="display-3 text-light py-3 text-capitalize font-italic">
                   Menú Cliente
                </h1>
                <div class="card-deck pb-5">
                    <div class="card" style="width: 18rem;">
                        <img src="../../img/menu1.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Menú Ejecutivo</h5>
                            <p class="card-text">Este menú incluye: </p>
                        </div>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item">Desayuno</li>
                            <li class="list-group-item">Almuerzo</li>
                            <li class="list-group-item">Cena</li>
                            <li class="list-group-item">Precio: $12.000 por persona</li>
                        </ul>
                        <div class="card-body">                            
                            <a href="servicio_comedor/detalle_comedor.jsp" class="card-link">Modificar</a>
                        </div>
                    </div>
                    <div class="card" style="width: 18rem;">
                        <img src="../../img/menu2.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Menú Especial</h5>
                            <p class="card-text">Este menú incluye: </p>
                        </div>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item">Desayuno</li>
                            <li class="list-group-item">Almuerzo</li>
                            <li class="list-group-item">Cena</li>
                            <li class="list-group-item">Precio: $10.000 por persona</li>
                        </ul>
                        <div class="card-body">
                            <a href="servicio_comedor/detalle_comedor.jsp" class="card-link">Modificar</a>
                        </div>
                    </div>
                    <div class="card" style="width: 18rem;">
                        <img src="../../img/menu3.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Menú General</h5>
                            <p class="card-text">Este menú incluye: </p>
                        </div>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item">Desayuno</li>
                            <li class="list-group-item">Almuerzo</li>
                            <li class="list-group-item">Cena</li>                            
                            <li class="list-group-item">Precio: $8.000 por persona</li>
                        </ul>
                        <div class="card-body">
                            <a href="servicio_comedor/detalle_comedor.jsp" class="card-link">Modificar</a>
                        </div>
                    </div>                    
                </div>
            </section>            
        </main>
        <footer class="footer-principal text-center text-light">            
            <h5 class="display-5 py-3">Hostal Doña Clarita 2020. &copy Todos los derechos reservados</h5>
        </footer>

        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelservicio_comedor/detalle_comedor.htmlvr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    </body>
</html>