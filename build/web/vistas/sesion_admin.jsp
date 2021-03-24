<%-- 
    Document   : sesion_admin
    Created on : 06-10-2020, 13:08:36
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
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/sign-in/">
 
        <!-- Bootstrap core CSS -->
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
                        <a class="nav-link pagina-principal py-4 px-4" id="inicio" href="/Login_Hostal/vistas/sesion_admin.jsp">Inicio <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link py-4 px-4 boton-navbar" href="/Login_Hostal/vistas/modulos/registro_usuario.jsp">Registrar usuario</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link py-4 px-4 boton-navbar" href="/Login_Hostal/vistas/modulos/facturacion.jsp">Facturación</a>                        
                    </li>
                    <li class="nav-item">
                        <a class="nav-link py-4 px-4 boton-navbar" href="/Login_Hostal/vistas/modulos/servicio_comedor.jsp">Servicio comedor</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link py-4 px-4 boton-navbar" href="/Login_Hostal/vistas/modulos/estadisticas.jsp">Estadísticas</a>
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
        <main class="fondo-principal text-center salto-linea">
            <section class="container border bg-secondary">
                <h1 class="display-3 text-light py-3 text-capitalize font-italic text-center">
                    Resumen de ventas
                </h1>
                <c:if test = "${cant_lista_facturaT == false}">
                    <div class="form-row bg-light text-center">
                        <div class="table-responsive">
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <!--<th scope="col">Seleccionar</th>-->
                                        <th scope="col">Id factura</th>
                                        <th scope="col">Nombre o razón social</th>
                                        <th scope="col">Rut empresa</th>                                
                                        <th scope="col">Dirección particular</th>
                                        <th scope="col">Fecha creación</th>                                                                      
                                        <th scope="col">Monto total</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="listafacT" items="${listadoFacturasT}">                          
                                        <tr>
                                            <!--<td><input type="checkbox"></td>-->
                                            <td>${listafacT.getId()}</td>
                                            <td>${listafacT.getRazon_social()}</td> 
                                            <td>${listafacT.getRut_empresa()}</td>
                                            <td>${listafacT.getDireccion()}</td> 
                                            <td>${listafacT.getFecha_creacion()}</td>                                              
                                            <td>${listafacT.getMonto_total()}</td>  
                                        </tr>
                                    </c:forEach>
                                </tbody>
                               
                            </table>
                        </div>                        
                    </div>
                </c:if>
                <c:if test = "${cant_lista_facturaT == true}">
                    <div class="largo_ventana">
                        <h1 class="alert alert-success">No existen facturas asociadas.</h1>
                    </div>
                </c:if>               
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