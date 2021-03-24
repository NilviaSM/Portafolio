<%-- 
    Document   : sesion_empleado
    Created on : 23-10-2020, 12:39:19
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
        <link href="/Login_Hostal/css/estilos.css" rel="stylesheet" type="text/css"/>
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
                    <li class="nav-item active">
                        <a class="nav-link pagina-principal py-4 px-4" id="inicio" href="/Login_Hostal/sesion_empleado.jsp">Inicio <span class="sr-only">(current)</span></a>
                    </li>
                                    
             
                </ul>
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">                    
                        <label class="nav-link py-4 px-4 boton-navbar">Sesión: EMPLEADO</label>
                    </li>
                    <li class="nav-item">                        
                        <a class="nav-link py-4 px-4 boton-navbar" href="../index.jsp">Cerrar sesión</a>                        
                    </li>  
                </ul>
            </div>
        </nav>
        <main class="fondo-principal text-center salto-linea">
            <section class="container border bg-secondary">
                <h1 class="display-3 text-light py-3 text-capitalize font-italic">
                    Gestión de productos y clientes hostal doña Clarita
                </h1>
              
                <div class="row text-center py-5">
                    <div class="col-lg-4 col-md-2 col-sm-1">
                        <a href="respuestas/listar_clientes.jsp" class="btn btn-info boton-entrar-sesion">Lista reserva clientes</a>
                    </div>
                    <div class="col-lg-4 col-md-2 col-sm-1">
                        <a href="respuestas/listar_proveedor.jsp" class="btn btn-info boton-entrar-sesion">Gestionar productos pedidos para servicio clientes</a>
                    </div>
                    <div class="col-lg-4 col-md-2 col-sm-1">
                        <a href="respuestas/listar_empleado.jsp" class="btn btn-info boton-entrar-sesion">Realizar pedidos proveedor</a>
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
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    </body>
</html>
