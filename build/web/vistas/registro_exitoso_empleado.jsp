<%-- 
    Document   : registro_exitoso_empleado
    Created on : 08-12-2020, 23:45:41
    Author     : Nilvia S Miranda
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page session="true"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<c:set var = "registro" value = "${registrado}"/>
<c:if test = "${registro != 1}">
    <c:redirect url="/index.jsp"></c:redirect>                                            
</c:if>
<!DOCTYPE html>
<html lang="es-ES">
    <head>
        <!-- Required meta tags -->
        <meta charset="UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <title>Hostal Clarita</title>
        <link href="/Login_Hostal/css/estilos.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="#">Hostal Clarita</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">                        
                        <a class="nav-link py-4 px-4 mx-1 btn btn-outline-success" href="/Login_Hostal/ControladorLogin">Iniciar sesión</a>                
                    </li>
                </ul>
            </div>
        </nav>

        <%-- Cuerpo --%>
        <main class="fondo-principal text-light salto-linea text-center">
            <section class="container border bg-secondary">
                <h1 class="display-3 text-light py-3 text-capitalize font-italic">
                    Registro exitoso...
                </h1>
                <div class="border my-5">
                    <div class="row justify-content-md-center text-light">
                        <div class="col-md-3">
                            <label class="text-uppercase">Correo electronico:</label>
                        </div>
                        <div class="col-md-3">
                            <label class="text-uppercase"><c:out value = "${correo_registro}"/></label>                            
                        </div>
                    </div>
                    <div class="row justify-content-md-center text-light">
                        <div class="col-md-3">
                            <label class="text-uppercase">Contraseña:</label>
                        </div>
                        <div class="col-md-3">
                            <c:out value = "${contrasena}"/>
                        </div>
                    </div>
                    <div class="row justify-content-md-center text-light">
                        <div class="col-md-3">
                            <a class="nav-link py-2 px-2 my-2 btn btn-success" href="/Login_Hostal/ControladorLogin">Iniciar sesión</a>                    
                        </div>                
                    </div>
                </div>
            </section>            
        </main>
        <footer class="footer-principal text-center text-light">
            <div class="row justify-content-md-center pt-3">               
                <div class="col-lg-3 border">                   
                    <h5 class="display-5">Enlaces de interés</h5>
                    <ul class="">
                        <li class="nav-item">
                            Nuestras habitaciones
                        </li>
                        <li class="nav-item">
                            Sobre Nosotros
                        </li>
                        <li class="nav-item">
                            Sobre Nosotros
                        </li>
                        <li class="nav-item">
                            Registrarse
                        </li>
                        <li class="nav-item">
                            Iniciar sesión
                        </li>
                    </ul>                                  
                </div>
                <div class="col-lg-3 border">
                    <h5 class="display-5">Contáctenos</h5>
                    <ul>
                        <li>
                            Correo electrónico: contacto@hostalclarita.cl
                        </li>
                        <li>
                            Teléfono: +56912345678
                        </li>
                    </ul>
                </div>
                <div class="col-lg-3 border">
                    <h5 class="display-5">Redes sociales</h5>
                    <ul>
                        <li>
                            Facebook
                        </li>
                        <li>
                            Instagram
                        </li>
                        <li>
                            Twitter
                        </li>
                        <li>
                            Youtube
                        </li>
                    </ul>
                </div>
                <div class="col-lg-3 border">
                    <h5 class="display-5">Nuestra ubicación</h5>
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3345.2417112178837!2d-71.55345258427509!3d-33.02376188312728!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9689dde02f2c4821%3A0xf9438fbb4e96311!2sHotel%20O&#39;Higgins!5e0!3m2!1ses!2scl!4v1600031541602!5m2!1ses!2scl" width="400" height="200" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                </div>
            </div>
        </div>
        <h5 class="display-5 py-3">Hostal Doña Clarita 2020. &copy Todos los derechos reservados</h5>
    </footer>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
</body>
</html>