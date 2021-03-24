<%-- 
    Document   : seleccion_ordenes
    Created on : 06-10-2020, 17:50:15
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
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>       
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
                    <li class="nav-item">
                        <a class="nav-link py-4 px-4 boton-navbar" href="../registro_usuario.jsp">Registrar usuario</a>                        
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link pagina-principal py-4 px-4" id="inicio" href="../facturacion.jsp">Facturación <span class="sr-only">(current)</span></a>
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
                    Ordenes de compras pendientes
                </h1>
                <div class="my-3">                    
                    <table class="table bg-light pt-2">
                        <thead class="thead-dark">
                            <tr>
                                <th scope="col">Seleccionar</th>
                                <th scope="col">Id orden</th>
                                <th scope="col">Nombre o razón social</th>
                                <th scope="col">Rut empresa</th>                                
                                <th scope="col">Dirección particular</th>
                                <th scope="col">Fecha creación</th>
                                <th scope="col">Cantidad huéspedes</th>
                                <th scope="col">Monto total</th> 
                                <th scope="col">Lista huéspedes</th>                                
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td scope="col">
                                    <div class="form-group row">
                                        <div class="col-sm-10">
                                            <div class="form-check text-center">
                                                <input class="form-check-input" type="checkbox" id="gridCheck1">                                                
                                            </div>
                                        </div>
                                    </div>
                                </td>
                                <td scope="col">10</td>
                                <td scope="col">Nombre empresa</td>
                                <td scope="col">99.888.777-6</td>                                
                                <td scope="col">Dirección particular</td>
                                <td scope="col">01/01/2001</td>
                                <td scope="col">05</td>
                                <td scope="col">$100.000</td>
                                <td scope="col"><a href="planilla_huespedes.jsp" class="text-center">Listado</a></td>                                
                            </tr>
                            <tr>
                                <td scope="col">
                                    <div class="form-group row">
                                        <div class="col-sm-10">
                                            <div class="form-check text-center">
                                                <input class="form-check-input" type="checkbox" id="gridCheck1">                                                
                                            </div>
                                        </div>
                                    </div>
                                </td>
                                <td scope="col">20</td>
                                <td scope="col">Nombre empresa</td>
                                <td scope="col">99.888.777-6</td>                                
                                <td scope="col">Dirección particular</td>
                                <td scope="col">01/01/2001</td>
                                <td scope="col">05</td>
                                <td scope="col">$100.000</td>
                                <td scope="col"><a href="planilla_huespedes.jsp" class="text-center">Listado</a></td>
                            </tr>
                            <tr>
                                <td scope="col">
                                    <div class="form-group row">
                                        <div class="col-sm-10">
                                            <div class="form-check text-center">
                                                <input class="form-check-input" type="checkbox" id="gridCheck1">                                                
                                            </div>
                                        </div>
                                    </div>
                                </td>
                                <td scope="col">30</td>
                                <td scope="col">Nombre empresa</td>
                                <td scope="col">99.888.777-6</td>                                
                                <td scope="col">Dirección particular</td>
                                <td scope="col">01/01/2001</td>
                                <td scope="col">05</td>
                                <td scope="col">$100.000</td>
                                <td scope="col"><a href="planilla_huespedes.jsp" class="text-center">Listado</a></td>                                
                            </tr>                            
                        </tbody>
                    </table>
                   
                </div>  
                 <div class="my-3">
                        <a class="btn btn-success py-3 px-5" href="crear_factura.jsp">Crear</a>
                        <a class="btn btn-info py-3 px-5" href="generar_factura.jsp">Volver</a>
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

