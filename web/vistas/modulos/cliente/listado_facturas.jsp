<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page session="true"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<c:set var = "nivel_sesion" value = "${nivel_sesion}"/>
<c:if test = "${nivel_sesion != 2}">
    <c:redirect url="/index.jsp"></c:redirect>                                            
</c:if>
<!doctype html>
<html lang="es-ES">
    <head>
        <!-- Required meta tags -->
        <meta charset="UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <title>Hostal Clarita</title>
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
        <link href="css/estilos2.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark">
            <img src="img/HOSTALCLARITA.jpg" alt=""/>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">                
                <ul class="navbar-nav mr-auto">                    
                    <li class="nav-item">
                        <a class="nav-link py-4 px-4 btn color-btn-cliente" href="/Login_Hostal/Reservap1">Realizar reserva</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link py-4 px-4 btn color-btn-cliente" href="/Login_Hostal/ListarOrdenesCompra">Ordenes de compra</a>                      
                    </li>
                    <li class="nav-item">
                        <a class="nav-link py-4 px-4 btn color-btn-cliente" href="/Login_Hostal/ListarFacturas">Facturas</a>                        
                    </li>                    
                </ul>
                <ul class="navbar-nav ml-auto">                    
                    <li class="nav-item">
                        <h5 class="nav-item py-4 px-4 mx-1 text-light">Usuario: <label class="text-capitalize"><c:out value = "${nombre_sesion}"/></label></h5>                        
                    </li>
                    <li class="nav-item">                        
                        <a class="nav-link py-4 px-4 mx-1 btn color-btn-cliente" name="cerrar_sesion" href="/Login_Hostal/CerrarSesion">Cerrar Sesión</a>                
                    </li>
                </ul>
            </div>
        </nav>
        <main class="bg-secondary text-dark">
            <h1 class="display-3 py-3 text-capitalize font-italic text-center bg-light container">
                Mis Facturas
            </h1> 
            <section class="container border bg-light">
                <h4 class="display-5 pt-3 font-italic">
                    Detalles
                </h4>
                <c:if test = "${valida == true}">           
                    <div>
                        <h1 class="alert alert-danger"><c:out value = "${mensajeEliminar}"/></h1>
                    </div>
                    <form action="/Login_Hostal/ListarOrdenesCompra" method="POST" accept-charset=utf-8>
                        <div class="form-group col-lg-12 my-3 text-right">
                            <input type="submit" name="btn_aceptar" value="Aceptar" class="btn btn-primary py-3 px-5">                                                      
                        </div>
                    </form>
                </c:if>

                <div class="form-row bg-light text-center">
                    <div class="table-responsive">
                        <table class="table table-striped">
                            <thead>
                                <tr>                                
                                    <th scope="col">Id factura</th>
                                    <th scope="col">Nombre o razón social</th>
                                    <th scope="col">Rut empresa</th>                                
                                    <th scope="col">Dirección particular</th>
                                    <th scope="col">Fecha creación</th>                                
                                    <th scope="col">Monto total</th>
                                    <th scope="col"></th>
                                </tr>
                            </thead>
                             <tbody>
                                    <c:forEach var="listafac" items="${listadoFacturas}">                          
                                        <tr>                                       
                                            <td>${listafac.getId()}</td>
                                            <td>${listafac.getRazon_social()}</td> 
                                            <td>${listafac.getRut()}</td>
                                            <td>${listafac.getDireccion()}</td> 
                                            <td>${listafac.getFecha()}</td> 
                                            <td>${listafac.getTotal()}</td>                            
                                        </tr>
                                    </c:forEach>
                                </tbody>

                        </table>
                    </div>                        
                </div>      
            </section>            
        </main>        
        <footer class="text-center text-light">            
            <h5 class="display-5 py-3">Hostal Doña Clarita 2020. &copy Todos los derechos reservados</h5>
        </footer>
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    </body>
</html>

