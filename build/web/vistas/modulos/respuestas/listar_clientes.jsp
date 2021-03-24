<%-- 
    Document   : listar_cliente
    Created on : 06-10-2020, 15:34:59
    Author     : Nilvia S Miranda
--%>
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
        <main class="fondo-principal text-light salto-linea">
            <section class="container border bg-secondary">
                <h1 class="display-3 py-3 text-capitalize font-italic text-center">
                    Lista de clientes
                </h1>
                <section class="container border bg-light">                
                    <h4 class="display-5 pt-3 font-italic">
                        Detalles
                    </h4>
                    <c:if test = "${valida == true}">           
                        <div>
                            <h1 class="alert alert-danger"><c:out value = "${mensajeEliminar}"/></h1>
                        </div>
                        <form action="/Login_Hostal/ListarClientes" method="POST" accept-charset=utf-8>
                            <div class="form-group col-lg-12 my-3 text-right">                                                               
                            </div>
                        </form>
                    </c:if>
                    <c:if test = "${cant_lista_cliente == false}">
                        <div class="form-row bg-light text-center">
                            <div class="table-responsive">
                                <table class="table table-striped">
                                    <thead> 
                                        <tr>
                                            <th scope="col">Usuario</th>
                                            <th scope="col">Nombre representante legal</th>
                                            <th scope="col">Rut representante legal</th>
                                            <th scope="col">Dirección</th>
                                            <th scope="col">Correo electronico</th>
                                            <th scope="col">Télefono</th>
                                            <th scope="col"></th>
                                            <th scope="col"></th>
                                            <th scope="col"></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="listaCLI" items="${listado_cliente}">                          
                                        <tr>                                       
                                            <td><c:out value="${listaCLI.nombre_empresa}" /></td>
                                            <td>${listaCLI.nombre_representante_legal}</td> 
                                            <td>${listaCLI.rut_rep_legal}</td> 
                                            <td>${listaCLI.direccion}</td>
                                            <td>${listaCLI.correo_electronico}</td>
                                            <td>${listaCLI.telefono}</td>
                                            <td>
                                                <form method="GET" action="/Login_Hostal/EliminarCliente">
                                                    <button type="submit" name="btn_eliminar_CLI" class="btn btn-danger" value="${listaCLI.id}">Eliminar</button>
                                                </form>
                                            </td>                                     
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>   
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
