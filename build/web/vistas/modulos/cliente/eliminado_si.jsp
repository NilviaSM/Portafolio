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
                        <a class="nav-link py-4 px-4 btn color-btn-cliente" href="">Facturas</a>                        
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


