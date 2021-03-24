<%-- 
    Document   : detalle_comedor
    Created on : 06-10-2020, 17:15:41
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
                    <li class="nav-item">
                        <a class="nav-link py-4 px-4 boton-navbar" href="../registro_usuario.jsp">Registrar usuario</a>
                    </li>                 
                    <li class="nav-item">
                        <a class="nav-link py-4 px-4 boton-navbar" href="../facturacion.jsp">Facturación</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link pagina-principal py-4 px-4" id="inicio" href="../servicio_comedor.jsp">Servicio comedor <span class="sr-only">(current)</span></a>
                    </li>                    
                    <li class="nav-item">
                        <a class="nav-link py-4 px-4 boton-navbar" href="../estadisticas.jsp ">Estadísticas</a>
                    </li>
                </ul>
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">                    
                        <label class="nav-link py-4 px-4 boton-navbar">Sesión: ADMINISTRADOR</label>
                    </li>
                    <li class="nav-item">                        
                        <a class="nav-link py-4 px-4 boton-navbar" href="../../index.jsp">Cerrar sesión</a>
                    </li>  
                </ul>
            </div>
        </nav>
        <main class="fondo-principal">
            <section class="container border bg-secondary">
                <h1 class="display-3 text-light text-center py-3 text-capitalize font-italic">
                    Editar Menú
                </h1>
                <div class="accordion text-center" id="accordionExample">
                    <div class="card">
                        <img src="../../../img/menu1.jpg" class="img-fluid img-thumbnail rounded mx-auto d-block" style="height: 300px; width: 300px">
                        <div class="card-header" id="headingOne">
                            <h2 class="mb-0">
                                <button class="btn btn-link btn-block text-left" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                    Desayuno
                                </button>
                            </h2>
                        </div>
                        <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                            <div class="card-body">
                                <div class="form-group text-left">
                                    <label for="exampleFormControlTextarea1" class="font-weight-bold">INDIQUE LOS DETALLES DEL MENÚ</label>
                                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="1"></textarea>
                                </div>
                                <ul class="list-group list-group-horizontal">
                                    <li class="list-group-item">
                                        <div class="form-group row">                                            
                                            <div class="col-sm-10">
                                                <div class="form-check text-center">                                                                                                        
                                                    <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                    <label>Pan</label>                                             
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="form-group row">                                            
                                            <div class="col-sm-10">
                                                <div class="form-check text-center">                                                                                                        
                                                    <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                    <label>Queso</label>                                             
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="form-group row">                                            
                                            <div class="col-sm-10">
                                                <div class="form-check text-center">                                                                                                        
                                                    <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                    <label>Jamón</label>                                             
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="form-group row">                                            
                                            <div class="col-sm-10">
                                                <div class="form-check text-center">                                                                                                        
                                                    <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                    <label>Huevo</label>                                             
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="form-group row">                                            
                                            <div class="col-sm-10">
                                                <div class="form-check text-center">                                                                                                        
                                                    <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                    <label>Palta</label>                                             
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header" id="headingTwo">
                            <h2 class="mb-0">
                                <button class="btn btn-link btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                    Almuerzo
                                </button>
                            </h2>
                        </div>
                        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                            <div class="card-body">
                                <div class="form-group text-left">
                                    <label for="exampleFormControlTextarea1" class="font-weight-bold">INDIQUE LOS DETALLES DEL MENÚ</label>
                                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="1"></textarea>
                                </div>
                                <ul class="list-group list-group-horizontal">
                                    <li class="list-group-item">
                                        <div class="form-group row">                                            
                                            <div class="col-sm-10">
                                                <div class="form-check text-center">                                                                                                        
                                                    <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                    <label>Arroz</label>                                             
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="form-group row">                                            
                                            <div class="col-sm-10">
                                                <div class="form-check text-center">                                                                                                        
                                                    <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                    <label>Tomate</label>                                             
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="form-group row">                                            
                                            <div class="col-sm-10">
                                                <div class="form-check text-center">                                                                                                        
                                                    <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                    <label>Cebolla</label>                                             
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="form-group row">                                            
                                            <div class="col-sm-10">
                                                <div class="form-check text-center">                                                                                                        
                                                    <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                    <label>Fideos</label>                                             
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="form-group row">                                            
                                            <div class="col-sm-10">
                                                <div class="form-check text-center">                                                                                                        
                                                    <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                    <label>Papas</label>                                             
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header" id="headingThree">
                            <h2 class="mb-0">
                                <button class="btn btn-link btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                    Cena
                                </button>
                            </h2>
                        </div>
                        <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
                            <div class="card-body">
                                <div class="form-group text-left">
                                    <label for="exampleFormControlTextarea1" class="font-weight-bold">INDIQUE LOS DETALLES DEL MENÚ</label>
                                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="1"></textarea>
                                </div>
                                <ul class="list-group list-group-horizontal">
                                    <li class="list-group-item">
                                        <div class="form-group row">                                            
                                            <div class="col-sm-10">
                                                <div class="form-check text-center">                                                                                                        
                                                    <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                    <label>Pan</label>                                             
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="form-group row">                                            
                                            <div class="col-sm-10">
                                                <div class="form-check text-center">                                                                                                        
                                                    <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                    <label>Queso</label>                                             
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="form-group row">                                            
                                            <div class="col-sm-10">
                                                <div class="form-check text-center">                                                                                                        
                                                    <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                    <label>Jamón</label>                                             
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="form-group row">                                            
                                            <div class="col-sm-10">
                                                <div class="form-check text-center">                                                                                                        
                                                    <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                    <label>Huevo</label>                                             
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="form-group row">                                            
                                            <div class="col-sm-10">
                                                <div class="form-check text-center">                                                                                                        
                                                    <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                    <label>Palta</label>                                             
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header" id="headingfour">
                            <h2 class="mb-0">
                                <button class="btn btn-link btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapsefour" aria-expanded="false" aria-controls="collapsefour">
                                    Precio
                                </button>
                            </h2>
                        </div>
                        <div id="collapsefour" class="collapse" aria-labelledby="headingfour" data-parent="#accordionExample">
                            <div class="card-body">                                
                                <table class="table table-borderless">
                                    <thead>
                                        <tr>                                            
                                            <th scope="col">Precio actual</th>
                                            <th scope="col">Nuevo precio</th>                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th scope="row">$12.000</th>
                                            <td>
                                                <div class="input-group mb-3">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text">$</span>
                                                    </div>
                                                    <input type="text" class="form-control" aria-label="Amount (to the nearest dollar)">
                                                    <div class="input-group-append">
                                                        <span class="input-group-text">Pesos</span>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                
                                            </td>
                                            <td>
                                                
                                            </td>
                                            <td>
                                                
                                            </td>
                                        </tr>                                        
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="py-3">
                    <a class="btn btn-success py-3 px-5" href="editar_menu.jsp">Guardar</a>
                    <a class="btn btn-info py-3 px-5" href="../servicio_comedor.jsp">Volver</a>
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