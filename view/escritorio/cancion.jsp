<!-- TODO (JSP): "Lista" en el titulo es el nombre de la lista visitada -->
<% if(request.getParameter("ajax")==null){ %>
<!DOCTYPE html>
<html lang="es">
<head>
    <title>Wolfic - Cancion</title>
    <%@include file="includes/html_head.jsp" %>
</head>
<body>
    <div id="topbar-y-contenido" class="col-10 pl-0 pr-0">
        <%@include file="includes/topbar.jsp" %>
        <!-- CONTENIDO DE LA VISTA -->
        <div id="contenido">
                <% } //if%>
            <div id="tituloNuevo" value="Wolfic - Lista" style="display:none;"></div>
            <!-- CONTENIDO DE LA VISTA -->
            <div class="container mb-3">
                <!--Resto de la vista-->
                <div class="col-12 pt-3">
                    <h2 class="text-center">Titulo de la cancion</h2>
                    <div class="row">

                        <div class = "col-2 text-left ml-auto mr-auto pt-3">
                            <img class = "img-fluid" src="images/user.svg" alt="Usuario">
                        </div>

                    </div>
                    <div class="row">
                        <a href="usuarioPublico.html" class=" pt-4 ml-auto mr-auto">
                            <div class = "col">
                                <h4 class="text-center">Nombre Usuario</h4>
                            </div>
                        </a>
                    </div>

                </div>
                <br>

                <div class = "col-12 pl-0 pr-0 pb-3">
                        <form class="needs-validation form-row mr-auto ml-auto" action="cancion.jsp" novalidate >
                            <div class="row ml-auto mr-auto">
                                <div>
                                    <select class="custom-select"  id="añadirLista" required>
                                        <option value="1">Favoritos</option>
                                        <option value="2">Lista 1</option>
                                        <option value="3">Lista 2</option>
                                    </select>
                                </div>
                                <div class="pl-3">
                                    <button type="submit" class="btn btn-primary">Añadir</button>
                                </div>
                            </div>
                        </form>
                </div>
                <!--comentarios-->

                <div class="border-bottom border-dark w-100 px-3"></div>
                <div class="media mt-2 pt-2 pb-1">

                </div>
                <div class = "row align-items-center pb-3">
                    <div class="col-9 ml-auto mr-auto">
                        <form class="needs-validation form-row " action="cancion.jsp" novalidate >
                            <div class="col" required>
                                <div class="media-body">
                                    <h4 class="media-heading pb-1"> Comentarios </h4>
                                </div>
                                <textarea class="text form-control" id="comentario"  required></textarea>
                            </div>
                            <div class="col-auto pt-5 mt-auto mb-auto">
                                <button type="submit" class="btn btn-primary">Comentar</button>
                            </div>
                        </form>
                    </div>
                </div>

                <div class="list-group pt-2 col-9 ml-auto mr-auto">
                    <a href="usuarioPublico.html" class="list-group-item list-group-item-action">
                        <div class="media">
                            <div class="media-left" style="padding-right:15px">
                                <img src="images/wolf.jpg" style="width:30px;" alt="...">
                            </div>
                            <div class="media-body">
                                <h5 class="media-heading pt-1">Nombre  User</h5>
                                <h6 class="media-heading">Hola probando Probando soy un comentario lalalalalalalalalalalala</h6>
                            </div>
                        </div>
                    </a>
                    <a href="usuarioPublico.html" class="list-group-item list-group-item-action">
                        <div class="media">
                            <div class="media-left" style="padding-right:15px">
                                <img src="images/wolf.jpg" style="width:30px;" alt="...">
                            </div>
                            <div class="media-body">
                                <h5 class="media-heading pt-1">Nombre User 2</h5>
                                <h6 class="media-heading">En un lugar de la Mancha, de cuyo nombre no quiero acordarme, no ha mucho tiempo que vivía un hidalgo de los de lanza en astillero, adarga antigua, rocín flaco y galgo corredor. Una olla de algo más vaca que carnero, salpicón las más noches, duelos y quebrantos los sábados, lentejas los viernes, algún palomino de añadidura los domingos, consumían las tres partes de su hacienda. El resto della concluían sayo de velarte, calzas de velludo para las fiestas con sus pantuflos de lo mismo, los días de entre semana se honraba con su vellori de lo más fino. Tenía en su casa una ama que pasaba de los cuarenta, y una sobrina que no llegaba a los veinte, y un mozo de campo y plaza, que así ensillaba el rocín como tomaba la podadera. Frisaba la edad de nuestro hidalgo con los cincuenta años, era de complexión recia, seco de carnes, enjuto de rostro; gran madrugador y amigo de la caza. Quieren decir que tenía el sobrenombre de Quijada o Quesada (que en esto hay alguna diferencia en los autores que deste caso escriben), aunque por conjeturas verosímiles se deja entender que se llama Quijana; pero esto importa poco a nuestro cuento; basta que en la narración dél no se salga un punto de la verdad.</h6>
                            </div>
                        </div>
                    </a>
                </div>
            </div> <!-- Container -->
            <script>
                /* Derechos de autor  : https://getbootstrap.com/docs/4.0/components/forms/#validation */

                // Example starter JavaScript for disabling form submissions if there are invalid fields
                (function() {
                    'use strict';
                    window.addEventListener('load', function() {
                        // Fetch all the forms we want to apply custom Bootstrap validation styles to
                        var forms = document.getElementsByClassName('needs-validation');
                        // Loop over them and prevent submission
                        var validation = Array.prototype.filter.call(forms, function(form) {
                            form.addEventListener('submit', function(event) {
                                if (form.checkValidity() === false) {
                                    event.preventDefault();
                                    event.stopPropagation();
                                }
                                form.classList.add('was-validated');
                            }, false);
                        });
                    }, false);
                })();
            </script>
    <% if(request.getParameter("ajax")==null){ %>
        </div>
    </div>
    <%@include file="includes/socialbar.jsp" %>
    <%@include file="includes/reproductor.jsp" %>
</body>
</html>
<% } %>