<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page session="true"%>
<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="es-ES">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
        <title>Hostal Doña Clarita</title>
    </head>
    <body>        
        <nav class="navbar navbar-expand-xl text-center navbar-dark bg-dark">
            <img src="img/HOSTALCLARITA.jpg" alt=""/>
            <button class="navbar-toggler color-icono-navbar" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>        

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link py-4 px-4 mx-1 btn btn-dark" href="/Login_Hostal/index.jsp">Inicio</a>                        
                    </li>
                    <li class="nav-item">
                        <a class="nav-link py-4 px-4 mx-1 btn btn-dark" href="/Login_Hostal/vistas/habitaciones.jsp">Nuestras habitaciones</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link py-4 px-4 mx-1 btn btn-dark" href="/Login_Hostal/vistas/sobre_nosotros.jsp">Sobre Nosotros</a>
                    </li>
                </ul>
                <ul class="navbar-nav ml-auto">                                       
                    <li class="nav-item">                      
                        <a class="nav-link py-4 px-4 mx-1 btn btn-dark" href="/Login_Hostal/ControladorLogin">Iniciar sesión</a>
                    </li>  
                </ul>
            </div>
        </nav>
        <main class="fondo-principal text-light salto-linea">
            <section class="container border bg-secondary">
                <h1 class="display-3 py-3 text-capitalize font-italic text-center">
                    Registro de clientes
                </h1>                
                <form class="py-5 px-5" method="POST" action="/Login_Hostal/RegistroCliente" accept-charset=utf-8>
                    <c:set var = "alert_reg" value = "${alertaRegistro}"/>
                    <c:if test = "${alert_reg == true}">                    
                        <div class="py-3 mb-2 px-3 alert-danger"> <c:out value = "${m_alert}"/></div>                                         
                    </c:if>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="inputEmail4">Nombre o razón social *</label>
                            <input type="text" class="form-control" name="razon_social" minlength="3" required="">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputPassword4">Rut empresa *</label>
                            <input type="text" class="form-control" name="rut_empresa" id="inputPassword4" placeholder="99.999.999-K" minlength="8" maxlength="10" required="">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="inputEmail4">Nombre representante legal *</label>
                            <input type="text" class="form-control" name="nom_rep_legal" minlength="3" required="">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputPassword4">Rut representante legal</label>
                            <input type="text" class="form-control" name="rut_rep_legal" id="inputPassword4" placeholder="99.999.999-K" maxlength="10">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-4">
                            <label for="inputEmail4">Nombre de usuario *</label>
                            <input type="text" class="form-control" name="nombre_usuario" placeholder="" minlength="3" required="">
                        </div>
                        <div class="form-group col-md-4">
                            <label for="inputPassword4">Contraseña *</label>
                            <input type="password" class="form-control" name="contrasena" id="inputPassword4" placeholder="Mínimo 8 caracteres" minlength="8" required="">
                        </div>
                        <div class="form-group col-md-4">
                            <label for="inputPassword4">Repetir Contraseña *</label>
                            <input type="password" class="form-control" name="rep_contrasena" placeholder="Repita la contraseña anterior" id="inputPassword4" required="">
                        </div>
                    </div>            
                    <div class="form-row">
                        <div class="form-group col-md-4">
                            <label for="inputEmail4">Teléfono *</label>
                            <input type="text" class="form-control" name="telefono" placeholder="+56912345678" minlength="8" required="">
                        </div>
                        <div class="form-group col-md-4">
                            <label for="inputPassword4">Correo electrónico *</label>
                            <input type="email" class="form-control" name="correo_electronico" id="inputPassword4" placeholder="correo@dominio.com" required="">
                        </div>
                        <div class="form-group col-md-4">
                            <label for="inputPassword4">Repetir correo electrónico *</label>
                            <input type="email" class="form-control" name="rep_correo_elec" id="inputPassword4" placeholder="correo@dominio.com" required="">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-3">
                            <label for="inputEmail4">Dirección *</label>
                            <input type="text" class="form-control" name="direccion" placeholder="Calle 123" minlength="5" required="">
                        </div>
                        <div class="form-group col-md-3">
                            <label for="inputState">Region</label>
                            <select class="custom-select" name="region" id="region">
                                <option selected value="0">-- Seleccione --</option>
                            </select>
                        </div>                
                        <div class="form-group col-md-3">
                            <label for="inputState">Provincia</label>
                            <select class="custom-select" name="provincia" id="provincia">
                                <option selected value="0">-- Seleccione --</option>
                            </select>
                        </div>
                        <div class="form-group col-md-3">
                            <label for="inputState">Comuna</label>
                            <select class="custom-select" name="comuna" id="comuna">
                                <option selected value="0">-- Seleccione --</option>
                            </select>
                        </div> 
                    </div> 
                    <input type="submit" name="btn_registro_cliente" value="Crear nuevo usuario" class="btn btn-success py-3 px-5">
                </form>
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
    <script src="js/localidades.js" type="text/javascript"></script>
    <script src="js/main.js" type="text/javascript"></script>
</body>
</html>


