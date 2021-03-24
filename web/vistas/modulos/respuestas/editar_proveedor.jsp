<%-- 
    Document   : editar
    Created on : 06-10-2020, 17:06:50
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
        
        <link href="../../../css/estilos.css" rel="stylesheet" type="text/css"/>        
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
                        <a class="nav-link py-4 px-4 boton-navbar" href="../../sesion_admin.jsp">Inicio</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link pagina-principal py-4 px-4" id="inicio" href="../registro_usuario.jsp">Registrar usuario <span class="sr-only">(current)</span></a>
                    </li>                   
                    <li class="nav-item">
                        <a class="nav-link py-4 px-4 boton-navbar" href="../facturacion.jsp">Facturación</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link py-4 px-4 boton-navbar" href="../servicio_comedor.jsp">Servicio comedor</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link py-4 px-4 boton-navbar" href="../estadisticas.jsp">Estadísticas</a>
                    </li>
                </ul>
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">                    
                        <label class="nav-link py-4 px-4 boton-navbar">Sesión: ADMINISTRADOR</label>
                    </li>
                    <li class="nav-item">                        
                        <a class="nav-link py-4 px-4 boton-navbar" href="../../../index.jsp">Cerrar sesión</a>
                    </li>  
                </ul>
            </div>
        </nav>
        <main class="fondo-principal text-light salto-linea">
            <section class="container border bg-secondary">
                <h1 class="display-3 py-3 text-capitalize font-italic text-center">
                    Editar proveedor
                </h1>
                <form>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="inputEmail4">Usuario</label>
                            <input type="text" class="form-control" placeholder="Se generará un usuario automáticamente" disabled>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputPassword4">Contraseña temporal</label>
                            <input type="password" class="form-control" id="inputPassword4" placeholder="Se generará una contraseña automáticamente" disabled>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="inputEmail4">Nombre o razón social</label>
                            <input type="text" class="form-control">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputPassword4">Rut empresa</label>
                            <input type="text" class="form-control" id="inputPassword4" placeholder="99.999.999-K">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="inputEmail4">Nombre representante legal</label>
                            <input type="text" class="form-control">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputPassword4">Rut representante legal</label>
                            <input type="text" class="form-control" id="inputPassword4" placeholder="99.999.999-K">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="inputEmail4">Teléfono</label>
                            <input type="text" class="form-control" placeholder="+569-12345678">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputPassword4">Correo electrónico</label>
                            <input type="email" class="form-control" id="inputPassword4" placeholder="correo@dominio.cl">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="inputEmail4">Dirección</label>
                            <input type="text" class="form-control" placeholder="Calle 123">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputState">Region</label>
                            <select id="inputState" class="form-control">
                                <option selected>Seleccione...</option>
                                <option>Region 1</option>
                                <option>Region 2</option>
                                <option>Region 3</option>
                                <option>Region 4</option>
                                <option>Region 5</option>
                            </select>
                        </div>                       
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="inputState">Ciudad</label>
                            <select id="inputState" class="form-control">
                                <option selected>Seleccione...</option>
                                <option>Ciudad 1</option>
                                <option>Ciudad 2</option>
                                <option>Ciudad 3</option>
                                <option>Ciudad 4</option>
                                <option>Ciudad 5</option>
                            </select>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputState">Comuna</label>
                            <select id="inputState" class="form-control">
                                <option selected>Seleccione...</option>
                                <option>Comuna 1</option>
                                <option>Comuna 2</option>
                                <option>Comuna 3</option>
                                <option>Comuna 4</option>
                                <option>Comuna 5</option>
                            </select>
                        </div>                       
                    </div>
                    <div class="my-3">
                        <a class="btn btn-success py-3 px-5" href="editar_usuario.jsp">Guardar</a>
                        <a class="btn btn-info py-3 px-5" href="listar_proveedor.jsp">Volver</a>
                    </div>
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

