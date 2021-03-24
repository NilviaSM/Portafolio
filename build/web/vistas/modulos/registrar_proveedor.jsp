<%-- 
    Document   : registrar_proveedor
    Created on : 06-10-2020, 15:25:49
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
                    <li class="nav-item active">
                        <a class="nav-link pagina-principal py-4 px-4" id="inicio" href="registro_usuario.jsp">Registrar usuario <span class="sr-only">(current)</span></a>
                    </li>                   
                    <li class="nav-item">
                        <a class="nav-link py-4 px-4 boton-navbar" href="facturacion.jsp">Facturación</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link py-4 px-4 boton-navbar" href="servicio_comedor.jsp">Servicio comedor</a>
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
                        <a class="nav-link py-4 px-4 boton-navbar" href="/Login_Hostal/index.jsp">Cerrar sesión</a>
                    </li>  
                </ul>
            </div>
        </nav>
        <main class="fondo-principal text-light salto-linea">
            <section class="container border bg-secondary">
                <h1 class="display-3 py-3 text-capitalize font-italic text-center">
                    Registrar Proveedor
                </h1>              
                  <form class="py-5 px-5" method="POST" action="/Login_Hostal/RegistroProveedor" accept-charset=utf-8>
                  
                    
                    <div class="form-row">
                        <div class="form-group col-md-4">
                            <label for="inputEmail4">Rubro*</label>
                            <input type="text" class="form-control" name="rubro" minlength="3" required="">
                        </div>
                        <div class="form-group col-md-4">
                            <label for="inputEmail4">Razón social*</label>
                            <input type="text" class="form-control" name="razon_social" minlength="3" required="">
                        </div>
                        <div class="form-group col-md-4">
                            <label for="inputPassword4">Rut empresa *</label>
                            <input type="text" class="form-control" name="rut_empresa" id="inputPassword4" placeholder="99.999.999-K" minlength="8" maxlength="10" required="">
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
                         <div class="form-group col-md-4">
                            <label for="inputPassword4">Nombre contacto *</label>
                            <input type="text" class="form-control" name="nombre_contacto" id="inputPassword4" required="">
                        </div>
                    </div>
                  
                    <input type="submit" name="btn_registro_proveedor" value="Crear nuevo proveedor" class="btn btn-success py-3 px-5">
                </form>
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
