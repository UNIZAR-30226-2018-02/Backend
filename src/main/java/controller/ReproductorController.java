package main.java.controller;

import main.java.model.Usuario;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


@WebServlet(urlPatterns = "/reproductor_cont", name = "ReproductorController")
public class ReproductorController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        Usuario username = (Usuario) session.getAttribute("username");
username.setConexion(new java.sql.Timestamp(0)); // Actualiza estado de conexion del usuario
username.saveUser();
        session.setAttribute("ultimo_instante_reproduccion", request.getParameter("momento_cancion") );
        session.setAttribute("max_instante_reproduccion", request.getParameter("momento_cancion_max") );

        try {
            /* Cambiamos el instate de reproducción del usuario */
                //String user = (String) session.getAttribute("username");
                // Usuario u = Usuario.getUser(user);

            Usuario u = (Usuario) session.getAttribute("username");
            String mi_momento = request.getParameter("momento_cancion");
            Double mi_momento_double = Double.parseDouble(mi_momento);

            Usuario.guardarInstante(u,mi_momento_double.intValue());

            /* response.sendRedirect("/movil/explorar.jsp");
           /*  rd.forward(request,response); */
        } catch (Exception e) {
            /* e.printStackTrace(); */
           

        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
