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
        <main class="bg-secondary text-dark">
            <h1 class="display-3 py-3 text-capitalize font-italic text-center bg-light container">
                Realizar reserva
            </h1>
            <section class="container border bg-light">
                <h4 class="display-5 pt-3 font-italic">
                    Ingrese los datos personales de los huéspedes
                </h4>                
                <form action="/Login_Hostal/Reservap1" method="POST" accept-charset=utf-8>
                    <div class="form-row">
                        <div class="form-group col-md-4">
                            <label for="inputEmail4">Nombre</label>
                            <input type="text" class="form-control" placeholder="Nombre completo" name="nom_huesped" id="nom_huesped">
                        </div>
                        <div class="form-group col-md-4">
                            <label for="inputPassword4">Rut</label>
                            <input type="text" class="form-control" placeholder="99.999.999-K" name="rut_huesped">
                        </div>
                        <div class="form-group col-md-4">
                            <label for="inputEmail4">Teléfono</label>
                            <input type="text" class="form-control" placeholder="+56912345678" name="telefono_huesped">
                        </div>
                    </div>
                    <c:set var = "mensajeOK" value = "${mensaje_correcto}"/>                    
                    <c:if test = "${mensajeOK == true}">                  
                        <div class="py-3 mb-2 px-3 alert-success"><c:out value = "${mensaje}"/></div>                                         
                    </c:if>
                    <c:set var = "alerta" value = "${alerta}"/>                    
                    <c:if test = "${alerta == true}">                  
                        <div class="py-3 mb-2 px-3 alert-danger"><c:out value = "${validaciones}"/></div>                                         
                    </c:if>
                    <c:set var = "l_vacia" value = "${v_lista_vacia}"/>
                    <c:if test = "${l_vacia == true}">                       
                        <div class="py-3 mb-2 px-3 alert-danger"> Por favor ingrese al menos 1 huésped</div>                                     
                    </c:if>
                    <div class="form-row">
                        <div class="form-group col-lg-12">
                            <input type="submit" name="btn_agregar_huesped" value="Agregar" class="btn btn-warning py-3 px-5">                                                      
                        </div>                
                    </div>
                    <div class="form-row bg-light">
                        <table class="table table-striped">
                            <thead>
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
                            <tbody>
                                <c:set var = "contador" value = "${0}"/>
                                <c:forEach var="dato" items="${lista_huespedes}">
                                    <c:if test = "${contador < num}">
                                        <c:set var = "contador" value = "${contador + 1}"/>
                                        <tr>
                                            <th scope="row"><c:out value = "${contador}"/></th>
                                            <td class="text-capitalize">${dato.getNombre()}</td>
                                            <td>${dato.getRut()}</td>
                                            <td>${dato.getTelefono()}</td>                                    
                                        </tr>
                                    </c:if>
                                </c:forEach>
                            </tbody>
                        </table>                            
                    </div>
                </form>
            </section>
            <section class="container border bg-light">
                <h4 class="display-5 font-italic pt-3">
                    O si lo desea, descargue la planilla excel para ingresar a sus empleados y luego adjuntarla en el siguiente enlace... 
                </h4>
                <div class="my-4">
                    <a href="archivos/planilla_ejemplo.xlsx" download="planilla_ejemplo.xlsx" class="alert alert-warning my-5">Descargar planilla de ejemplo</a>          
                </div>                    
                <form class="mb-5" name="formulario" method="post" enctype="multipart/form-data">
                    <div class="custom-file">
                        <input type="file" onchange="cargarArchivo(this)" name="archivo" class="custom-file-input">
                        <label class="custom-file-label" for="inputGroupFile01">Una vez completada la planilla debe adjuntarla aquí</label>
                    </div>
                    <input type="hidden" name="nombre" value=""/>
                </form>                
            </section>
            <section class="container border bg-light">
                <form class="form-row text-right" method="GET" action="/Login_Hostal/Reservap2">            
                    <div class="form-group col-lg-12 my-3">
                        <input type="submit" name="btn_sig_p2" value="Continuar" class="btn btn-primary py-3 px-5">                                                      
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
        <script src="js/codigo.js" type="text/javascript"></script>
    </body>
</html>