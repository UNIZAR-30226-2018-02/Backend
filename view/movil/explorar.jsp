<%@page contentType="text/html; UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>Explorar</title>
        <jsp:include page="includes/header.jsp"></jsp:include>
    </head>
    <body>
        <jsp:include page="includes/navbars.jsp"></jsp:include>
        <!-- CONTENIDO DE LA VISTA -->
        <div class="container mb-3">

            <!-- Titulo de la pantalla -->
            <h2 class="text-left pt-2">Explorar</h2>
            <div class="row pt-1">
                <div class="col">
                    <form class="search-button" action="resultados.html">
                        <div class="form-group">
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Buscar ...">
                                <span class="input-group-btn search-button">
                                    <button type="submit" class="btn btn-secondary">
                                        <span class="fa fa-search" style="font-size:20px;"  ></span>
                                    </button>
                                </span>
                            </div>
                        </div>
                    </form>
                </div>
            </div>

        <div class="row">
            <div class="col-auto mr-auto">
                <h4>Mis listas</h4>
            </div>
            <div class="float-right mr-3">
                <a href="listas.html"  class="btn btn-link" role="button" >
                    <span class="fa fa-chevron-right" style="font-size:20px;"></span>
                </a>
            </div>
        </div>
        <div class="row">
            <div class="col-4">
                <div class="img-thumbnail h-100">
                    <a href="lista.html" target="_self">
                        <img src="images/wolf.jpg" alt="" style="width:20%">
                        <div class="caption">
                            <p>Nombre lista 1</p>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-4">
                <div class="img-thumbnail h-100">
                    <a href="lista.html" target="_self">
                        <img src="images/wolf.jpg" alt="" style="width:20%">
                        <div class="caption">
                            <p>Nombre lista 2</p>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-4">
                <div class="img-thumbnail h-100">
                    <a href="lista.html" target="_self">
                        <img src="images/wolf.jpg" alt="" style="width:20%">
                        <div class="caption">
                            <p>Nombre lista 3</p>
                        </div>
                    </a>
                </div>
            </div>
        </div>

        <div class="row pt-3">
            <div class="col-auto mr-auto">
                <h4>Listas recomendadas</h4>
            </div>
            <div class="float-right mr-3">
                <a href="listas.html"  class="btn btn-link" role="button" >
                    <span class="fa fa-chevron-right" style="font-size:20px;"></span>
                </a>
            </div>
        </div>
        <div class="row">
            <div class="col-4">
                <div class="img-thumbnail h-100">
                    <a href="lista.html" target="_self">
                        <img src="images/wolf.jpg" alt="" style="width:20%">
                        <div class="caption">
                            <p>Nombre lista rec. 1</p>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-4">
                <div class="img-thumbnail h-100">
                    <a href="lista.html" target="_self">
                        <img src="images/wolf.jpg" alt="" style="width:20%">
                        <div class="caption">
                            <p>Nombre lista rec. 2</p>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-4">
                <div class="img-thumbnail h-100">
                    <a href="lista.html" target="_self">
                        <img src="images/wolf.jpg" alt="" style="width:20%">
                        <div class="caption">
                            <p>Nombre lista rec. 3</p>
                        </div>
                    </a>
                </div>
            </div>
        </div>

        <div class="row pt-3">
            <div class="col-auto mr-auto">
                <h4>Mi audio</h4>
            </div>
            <div class="float-right mr-3">
                <button type="submit" class="btn btn-link">
                    <span class="fa fa-chevron-right" style="font-size:20px;"></span>
                </button>
            </div>
        </div>
        <div class="row">
            <div class="col-4">
                <div class="img-thumbnail h-100">
                    <a href="cancion.html" target="_self">
                        <img src="images/wolf.jpg" alt="" style="width:20%">
                        <div class="caption">
                            <p>Nombre Mi audio 1</p>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-4">
                <div class="img-thumbnail h-100">
                    <a href="cancion.html" target="_self">
                        <img src="images/wolf.jpg" alt="" style="width:20%">
                        <div class="caption">
                            <p>Nombre Mi audio 2</p>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-4">
                <div class="img-thumbnail h-100">
                    <a href="cancion.html" target="_self">
                        <img src="images/wolf.jpg" alt="" style="width:20%">
                        <div class="caption">
                            <p>Nombre Mi audio 3</p>
                        </div>
                    </a>
                </div>
            </div>
        </div>

        <div class="row pt-3">
            <div class="col-auto mr-auto">
                <h4>Audio recomendado</h4>
            </div>
            <div class="float-right mr-3">
                <button type="submit" class="btn btn-link">
                    <span class="fa fa-chevron-right" style="font-size:20px;"></span>
                </button>
            </div>
        </div>
        <div class="row">
            <div class="col-4">
                <div class="img-thumbnail h-100">
                    <a href="cancion.html" target="_self">
                        <img src="images/wolf.jpg" alt="" style="width:20%">
                        <div class="caption">
                            <p>Nombre audio rec. 1</p>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-4">
                <div class="img-thumbnail h-100">
                    <a href="cancion.html" target="_self">
                        <img src="images/wolf.jpg" alt="" style="width:20%">
                        <div class="caption">
                            <p>Nombre audio rec. 2</p>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-4">
                <div class="img-thumbnail h-100">
                    <a href="cancion.html" target="_self">
                        <img src="images/wolf.jpg" alt="" style="width:20%">
                        <div class="caption">
                            <p>Nombre audio rec. 3</p>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>

    <jsp:include page="includes/footer.jsp"></jsp:include>
    </body>
</html>