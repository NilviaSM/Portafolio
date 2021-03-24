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
                Realizar reserva
            </h1> 
            <section class="container border bg-light">
                <form action="/Login_Hostal/Reservap2" method="POST" accept-charset=utf-8>
                    <h4 class="display-5 pt-3 font-italic">
                        Ingrese fecha de la estadía
                    </h4>      
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label>Fecha desde</label>
                            <input type="date" class="form-control" name="fecha_inicio" required="">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Fecha hasta</label>
                            <input type="date" class="form-control" name="fecha_final" required="">
                        </div>                    
                    </div>
                    <c:set var = "verificar_fechas" value = "${validacion_fechas}"/>                    
                    <c:if test = "${verificar_fechas == true}">                    
                        <div class="py-3 mb-2 px-3 alert-danger"><c:out value = "${validar}"/></div>                                         
                    </c:if>
                    <h4 class="display-5 pt-3 font-italic text-dark">
                        Seleccione el tipo de servicio para la alimentación de los huéspedes
                    </h4>
                    <select class="custom-select custom-select-lg mb-3" name="select_menu" required>
                        <option selected>Seleccione</option>
                        <option value="1" class="alert alert-info">MENU EJECUTIVO - PRECIO $12.000</option>
                        <option value="2" class="alert alert-success">MENU PREMIUM - PRECIO $15.000</option>
                        <option value="3" class="alert alert-warning">MENU GLOTON - PRECIO $20.000</option>
                    </select>
                    <c:set var = "verificar_menu" value = "${validacion_menu}"/>
                    <c:if test = "${verificar_menu == true}">                    
                        <div class="py-3 mb-2 px-3 alert-danger"> <c:out value = "${validar}"/></div>                                         
                    </c:if>
                    <div class="mb-2 text-danger">${requestScope.validaMenu}</div>
                    <table class="table">
                        <thead class="thead-dark">
                            <tr>
                                <th scope="col">Nombre</th>
                                <th scope="col">Detalle</th>
                                <th scope="col">Precio</th>
                            </tr>
                        </thead>
                        <tbody>                            
                            <c:forEach var="listado" items="${lista_menu}">                          
                                <tr>                                       
                                    <td>${listado.getNombre()}</td>
                                    <td>${listado.getDescripcion()}</td> 
                                    <td>${listado.getPrecio()}</td>                                                                    
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                    <div class="form-group col-lg-12 my-3 text-right">
                        <input type="submit" name="btn_siguiente" value="Continuar" class="btn btn-primary py-3 px-5">                                                      
                    </div>
                </form>
            </section>
        </main>
        <footer class="bg-dark text-center text-light">            
            <h5 class="display-5 py-3">Hostal Doña Clarita 2020. &copy Todos los derechos reservados</h5>
        </footer>
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
        <script src="js/codigo.js" type="text/javascript"></script>
    </body>
</html>