<%--TODO: Terminar de implementar funcionalidad--%>
<%@page contentType="text/html; UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <c:if test="${usuario.getIdUser() == username.getIdUser()}">
        <title>Mis listas - ${username.getIdUser()}</title>
    </c:if>
    <c:if test="${usuario.getIdUser() != username.getIdUser()}">
        <title> Listas de ${usuario.getIdUser()}</title>
    </c:if>
    <jsp:include page="includes/header.jsp"></jsp:include>
</head>
<body>
<jsp:include page="includes/navbars.jsp"></jsp:include>
<!-- CONTENIDO DE LA VISTA -->
<div class="container mb-3">

    <div class="media mt-2">
        <div class="media-body">
            <h4 class="media-heading">Listas de ${usuario.getIdUser()}</h4>
        </div>

    </div>

    <div class="list-group pt-2">
        <!--TODO: Esto tiene que servir para las listas de otros usuarios tambien no¿?-->
        <c:forEach items="${listas}" var="lista">
            <div class="list-group-item list-group-item-action">
                <div class="media">
                    <div class="media-left" style="padding-right:15px">
                        <a href="/list?id=${lista.getIdLista()}">
                            <%--TODO: poner aqui imagen de la primera cancion de la lista--%>
                            <img src="/contenido/imagenes/canciones/.jpg" style="width:64px;" alt="...">
                        </a>
                    </div>
                    <div class="media-body">
                        <h6 class="media-heading">${lista.getNombre()}</h6>
                    </div>
                    <div class="media-right">
                        <button type="button" class="btn btn-default ">
                            <span class="fa fa-trash" style="font-size:20px; "></span>
                        </button>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div> <!-- Container -->
<jsp:include page="includes/footer.jsp"></jsp:include>
</body>
</html>

