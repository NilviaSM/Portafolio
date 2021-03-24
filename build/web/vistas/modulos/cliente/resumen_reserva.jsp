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
        <link href="Login_Hostal/css/estilos.css" rel="stylesheet" type="text/css"/>
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
        <%-- Cuerpo del inicio --%>       
        <main class="fondo-principal text-center salto-linea">
            <h1 class="display-3 py-3 text-capitalize font-italic text-center bg-light container">
                Resumen de la reserva
            </h1>           
            <section class="container border bg-light">
                <form action="/Login_Hostal/Reservap3" method="POST" accept-charset=utf-8>
                    <div class="form-row bg-light">
                        <h4 class="display-5 pt-3 font-italic text-dark">
                            Servicio de alimentación:
                        </h4>
                        <table class="table table-striped">
                            <thead class="alert alert-success">
                                <tr>
                                    <th scope="col">Nombre</th>
                                    <th scope="col">Detalle</th>
                                    <th scope="col">Precio</th>
                                </tr>
                            </thead>
                            <tbody class="alert alert-success">                            
                                <c:forEach var="listado" items="${menu_seleccionado}">                        
                                    <tr>                         
                                        <td>${listado.getNombre()}</td>
                                        <td>${listado.getDescripcion()}</td> 
                                        <td>${listado.getPrecio()}</td>                                                                    
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>                            
                    </div>
                    <div>
                        <h4 class="display-5 pt-3 font-italic text-dark">
                            Listado de huéspedes:
                        </h4>
                        <div class="form-row bg-light">
                            <table class="table table-striped">
                                <thead class="alert alert-success">
                                    <tr>
                                        <c:set var = "num" value = "${cantidad_huespedes}"/>
                                        <c:if test = "${num > 0}">
                                            <th scope="col">#</th>
                                            <th scope="col">Nombre</th>
                                            <th scope="col">Rut</th>
                                            <th scope="col">Telefono</th> 
                                        </c:if>                                        
                                    </tr>
                                </thead>
                                <tbody class="alert alert-success">
                                    <c:set var = "canti_hues" value = "${0}"/>
                                    <c:forEach var="dato" items="${lista_huespedes}">
                                        <c:if test = "${canti_hues < num}">
                                            <c:set var = "canti_hues" value = "${canti_hues + 1}"/>
                                            <tr>
                                                <th scope="row"><c:out value = "${canti_hues}"/></th>
                                                <td>${dato.getNombre()}</td>
                                                <td>${dato.getRut()}</td>
                                                <td>${dato.getTelefono()}</td>                                    
                                            </tr>
                                        </c:if>
                                    </c:forEach>
                                </tbody>
                            </table>                            
                        </div>
                    </div>
                    <div>
                        <h4 class="display-5 pt-3 font-italic text-dark">
                            Fecha de ingreso y salida:
                        </h4>
                        <div class="form-row bg-light text-center">
                            <table class="table table-striped">
                                <thead class="alert alert-success">
                                    <tr>                                    
                                        <th scope="col">Fecha entrada</th>
                                        <th scope="col">Fecha salida</th>
                                        <th scope="col">Cantidad días</th>                                                                        
                                    </tr>
                                </thead>
                                <tbody class="alert alert-success">
                                    <tr>                                    
                                        <td><c:out value = "${fecha_inicio}"/></td>
                                        <td><c:out value = "${fecha_final}"/></td>
                                        <td><c:out value = "${cant_dias}"/></td>                                  
                                    </tr>                                
                                </tbody>
                            </table>                            
                        </div>
                    </div>
                    <div>
                        <h4 class="display-5 pt-3 font-italic text-dark">
                            Precio servicio habitaciones:
                        </h4>
                        
                        <div class="form-row bg-light text-center">
                            <table class="table table-striped">
                                <thead class="alert alert-primary">
                                    <tr>                                    
                                        <th scope="col">Precio habitación</th>
                                        <th scope="col">Cantidad habitaciones</th>
                                        <th scope="col">Cantidad días</th>
                                        <th scope="col">Subtotal</th>                                    
                                    </tr>
                                </thead>
                                <tbody class="alert alert-primary">
                                    <tr>                                    
                                        <td>$<c:out value = "${precio_habitacion}"/></td>
                                        <td><c:out value = "${cantidad_huespedes}"/></td>
                                        <td><c:out value = "${cant_dias}"/></td>
                                        <td>$<c:out value = "${subtotal_hab}"/></td>
                                    </tr>                                
                                </tbody>
                            </table>                            
                        </div>
                    </div>
                    <div>
                        <h4 class="display-5 pt-3 font-italic text-dark">
                            Precio servicio alimentación:
                        </h4>
                        <div class="form-row bg-light text-center">
                            <table class="table table-striped">
                                <thead class="alert alert-primary">
                                    <tr>                                    
                                        <th scope="col">Menú</th>
                                        <th scope="col">Precio menú</th>
                                        <th scope="col">Cantidad huéspedes</th>
                                        <th scope="col">Cantidad días</th>
                                        <th scope="col">Subtotal</th>                                    
                                    </tr>
                                </thead>
                                <tbody class="alert alert-primary">
                                    <tr>                                    
                                        <td><c:out value = "${nombre_menu}"/></td>
                                        <td>$<c:out value = "${precio_menu}"/></td>
                                        <td><c:out value = "${cantidad_huespedes}"/></td>
                                        <td><c:out value = "${cant_dias}"/></td>
                                        <td>$<c:out value = "${subtotal_ali}"/></td>
                                    </tr>                                
                                </tbody>
                            </table>                            
                        </div>
                    </div>
                    <div>
                        <h4 class="display-5 pt-3 font-italic text-dark">
                            Total:
                        </h4>
                        <div class="form-row bg-light text-center">
                            <table class="table table-striped">
                                <thead class="alert alert-danger">
                                    <tr>
                                        <th scope="row">#</th>
                                        <th scope="col">Subtotal habitaciones</th>
                                        <th scope="col">Subtotal alimentación</th>
                                        <th scope="col">Neto</th>
                                        <th scope="col">IVA</th>
                                        <th scope="col">Total</th> 
                                    </tr>
                                </thead>
                                <tbody class="alert alert-danger">
                                    <tr>
                                        <th scope="row">1</th>
                                        <td>$<c:out value = "${subtotal_hab}"/></td>
                                        <td>$<c:out value = "${subtotal_ali}"/></td>
                                        <td>$<c:out value = "${neto}"/></td>
                                        <td>$<c:out value = "${iva}"/></td>
                                        <td>$<c:out value = "${total_reserva}"/></td>                             
                                    </tr>                                
                                </tbody>
                            </table>                            
                        </div>
                    </div>
                    <div class="form-group col-lg-12 my-3 text-right">
                        <input type="button" name="btn_cancelar" value="Cancelar" class="btn btn-danger py-3 px-5">
                        <input type="submit" name="btn_aceptar_reserva" value="Crear reserva" class="btn btn-primary py-3 px-5">
                    </div>
                </form>
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
