<%@page contentType="text/html; UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
	<head>
		<title>Bienvenido a Wolfic</title>
		<jsp:include page="includes/header.jsp"></jsp:include>
	</head>
	<body>
        <jsp:include page="includes/navbars.jsp"></jsp:include>

        <!-- CONTENIDO DE LA VISTA -->
        <div class="container mb-3">
            <!--Meter Reproductor aqui-->
            <div class="col">
                <div class="img-fluid" >
                    <img class = "img-fluid" src="images/placeholder.png" alt="Placeholder" max-width= 100% height= auto;>
                </div>
            </div>
            <br>
            <!--Resto de la vista-->

            <div class="row">
                <div class="col">
                    <h3>Titulo de la cancion</h3>
                </div>
            </div>
            <div class="row">

                <div class = "col-2 text-left">
                    <img class = "img-fluid" src="images/user.svg" alt="Usuario">
                </div>

                <a href="usuarioPublico.jsp">
                <div class = "col">
                    <h5>Nombre Usuario</h5>
                </div>
                </a>

            </div>
            <br>

            <div class = "col">
            <div class="row align-items-center">
                    <form class="needs-validation form-row" action="cancion.jsp" novalidate >
                        <div class="col-auto my-1">
                            <select class="custom-select mr-sm-2"  id="añadirLista" required>
                                <option value="1">Favoritos</option>
                                <option value="2">Lista 1</option>
                                <option value="3">Lista 2</option>
                            </select>
                        </div>
                        <div class="col-auto my-1">
                            <button type="submit" class="btn btn-primary">Añadir</button>
                        </div>
                    </form>
                <div class = "col">
                <button type="button" class="btn btn-default " data-toggle="modal" data-target="#modalCrear">
                    <span class="glyphicon glyphicon-plus" style="font-size:20px; "></span>
                </button>
                </div>
            </div>
            </div>
            <!--comentarios-->

            <div class="border-bottom border-dark w-100 px-3"></div>
            <div class="media mt-2">
                <div class="media-body">
                    <h4 class="media-heading"> Comentarios </h4>
                </div>

            </div>
            <div class = "row align-items-center">
                <div class="col ">
                    <form class="needs-validation form-row " action="cancion.jsp" novalidate >
                        <div class="col" required>
                            <textarea class="text form-control" id="comentario"  required></textarea>
                        </div>
                        <div class="col-auto my-1">
                            <button type="submit" class="btn btn-primary">Comentar</button>
                        </div>
                    </form>
                </div>
                </div>
            </div>


            <div class="list-group pt-2">
                <a href="usuarioPublico.jsp" class="list-group-item list-group-item-action">
                    <div class="media">
                        <div class="media-left" style="padding-right:15px">
                            <img src="images/wolf.jpg" style="width:30px;" alt="...">
                        </div>
                        <div class="media-body">
                            <h5 class="media-heading" ">Nombre  User</h5>
                            <h6 class="media-heading">Hola probando Probando soy un comentario lalalalalalalalalalalala</h6>
                        </div>
                    </div>
                </a>
                <a href="usuarioPublico.jsp" class="list-group-item list-group-item-action">
                    <div class="media">
                        <div class="media-left" style="padding-right:15px">
                            <img src="images/wolf.jpg" style="width:30px;" alt="...">
                        </div>
                        <div class="media-body">
                            <h5 class="media-heading">Nombre User 2</h5>
                            <h6 class="media-heading">En un lugar de la Mancha, de cuyo nombre no quiero acordarme, no ha mucho tiempo que vivía un hidalgo de los de lanza en astillero, adarga antigua, rocín flaco y galgo corredor. Una olla de algo más vaca que carnero, salpicón las más noches, duelos y quebrantos los sábados, lentejas los viernes, algún palomino de añadidura los domingos, consumían las tres partes de su hacienda. El resto della concluían sayo de velarte, calzas de velludo para las fiestas con sus pantuflos de lo mismo, los días de entre semana se honraba con su vellori de lo más fino. Tenía en su casa una ama que pasaba de los cuarenta, y una sobrina que no llegaba a los veinte, y un mozo de campo y plaza, que así ensillaba el rocín como tomaba la podadera. Frisaba la edad de nuestro hidalgo con los cincuenta años, era de complexión recia, seco de carnes, enjuto de rostro; gran madrugador y amigo de la caza. Quieren decir que tenía el sobrenombre de Quijada o Quesada (que en esto hay alguna diferencia en los autores que deste caso escriben), aunque por conjeturas verosímiles se deja entender que se llama Quijana; pero esto importa poco a nuestro cuento; basta que en la narración dél no se salga un punto de la verdad.</h6>
                        </div>
                    </div>
                </a>
            </div>
        </div>
        <!-- Modal1 -->
        <div class="modal fade" id="modalCrear" tabindex="-1" role="dialog" aria-labelledby="modalCrear" aria-hidden="true">
            <div class= "modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">

                    <div class="modal-body">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <form action = "cancion.jsp">
                            <div class="form-group">
                                <label for="nombreSus">Crear Lista y añadir</label>
                                <div class="input-group">
                                    <input type="text" class="form-control" id="nombreSus" placeholder="Nueva Lista" required>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary">Añadir</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>


   <jsp:include page="includes/footer.jsp"></jsp:include>
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
    </body>
</html>