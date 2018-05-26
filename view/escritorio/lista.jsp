<%@page contentType="text/html; UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% if(request.getParameter("ajax")==null){ %>
<!DOCTYPE html>
<html lang="es">
<head>
    <title>WolfSound - ${lista.getNombre()}</title>
    <%@include file="includes/html_head.jsp" %>
</head>
<body>
<div id="topbar-y-contenido" class="col-10 pl-0 pr-0">
    <%@include file="includes/topbar.jsp" %>
    <!-- CONTENIDO DE LA VISTA -->
    <div id="contenido">
        <% } //if%>
        <div id="tituloNuevo" value="WolfSound - ${lista.getNombre()}" style="display:none;"></div>
        <div class="container mb-3">
            <div class="row pt-3">
                <div class="col-4">
                    <img src="<c:choose>
                        <c:when test="${canciones.isEmpty()}">
                            ${pageContext.request.contextPath}/contenido/web/imagenes/wolf.jpg
                        </c:when>
                        <c:otherwise>
                            ${pageContext.request.contextPath}/contenido/imagenes/canciones/${canciones.get(0).getIdCancion()}.png
                        </c:otherwise>
                    </c:choose>
                    " class="img-thumbnail" style="max-width: 100%;max-height: 500px" alt="Imagen lista">
                    <div class="pt-2 pl-2">
                        <h3 class="media-heading">${lista.getNombre()}</h3>
                        <h5>De&nbsp;<a href="${pageContext.request.contextPath}/user?id=${lista.getUsuarioByIdUser().getIdUser()}" style="color: black; text-underline: none;">${lista.getUsuarioByIdUser().getUsername()}</a></h5>
                        ${canciones.size()} elementos
                    </div>
                    <div class="pl-2">
                        <button type="button" class="btn btn-primary mt-1"><i class="fa fa-play"></i>&nbsp;Reproducir</button>
                        <button type="button" class="btn btn-primary mt-1"><i class="fa fa-random"></i>&nbsp;Aleatorio</button><br />
                        <button type="button" class="btn btn-primary mt-1"><i class="fa fa-rss"></i>&nbsp;Seguir</button>
                    </div>
                </div>
                <div class="col-8">
                    <div class="list-group">
                        <c:forEach items="${canciones}" var="cancion">
                            <a href="${pageContext.request.contextPath}/song?id=${cancion.getIdCancion()}">
                                <div class="list-group-item list-group-item-action">
                                    <div class="media pt-2 pb-1 mt-auto">
                                        <div class="media-left" style="padding-right:15px">
                                            <img src="${pageContext.request.contextPath}/contenido/imagenes/canciones/${cancion.getIdCancion()}.png" style="width:64px;" alt="...">
                                        </div>
                                        <div class="media-body mt-auto">
                                            <h6 class="media-heading pl-5">${cancion.getNombre()}</h6>
                                            <h6 class="media-heading pl-5">${cancion.getUsuarioByIdUser().getIdUser()}</h6>
                                        </div>
                                        <div class="media-body mt-auto">
                                            <h6 class="media-heading pl-3">${cancion.getAlbumByIdAlbum().getNombre()}</h6>
                                        </div>
                                        <div class="media-body mt-auto">
                                            <h6 class="media-heading pl-3">${cancion.getFechaSubida()}</h6>
                                        </div>
                                        <div class="media-right">
                                            <c:if test="${sessionScope.username.getIdUser() == lista.getUsuarioByIdUser().getIdUser()}">
                                                <button type="button" class="btn btn-default " data-toggle="modal" data-target="#modalOrden">
                                                    <span class="fa fa-list-ol" style="font-size:20px; "></span>
                                                </button>
                                                <button type="button" class="btn btn-default ">
                                                    <span class="fa fa-trash" style="font-size:20px; "></span>
                                                </button>
                                            </c:if>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div> <!-- Container -->
        <c:if test="${sessionScope.username.getIdUser() == lista.getUsuarioByIdUser().getIdUser()}">
            <!-- Modal1 -->
            <div class="modal fade" id="modalOrden" tabindex="-1" role="dialog" aria-labelledby="modalOrden" aria-hidden="true">
                <div class= "modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">

                        <div class="modal-body">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                            <form action = "lista.jsp">
                                <div class="form-group">
                                    <label for="posicion">Nueva posicion de la cancion</label>
                                    <div class="input-group">
                                        <input type="number" class="form-control" id="posicion" placeholder="3" required>
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-primary">Aceptar</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </c:if>
        <% if(request.getParameter("ajax")==null){ %>
    </div>
</div>
<%@include file="includes/socialbar.jsp" %>
<%@include file="includes/reproductor.jsp" %>
</body>
</html>
<% } %>