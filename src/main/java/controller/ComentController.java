package main.java.controller;

import main.java.model.Cancion;
import main.java.model.Comentario;
import main.java.model.Usuario;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(urlPatterns = "/Coment", name = "ComentController")
public class ComentController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        Usuario username = (Usuario) session.getAttribute("username");
        username.setConexion(); // Actualiza estado de conexion del usuario
        username.saveUser();
        Usuario usuario = username;
        Integer cancionI = Integer.parseInt(request.getParameter("cancion"));
        String texto = request.getParameter("texto");

        String UA = request.getHeader("User-Agent");
        RequestDispatcher rd = null;
        try {
            if (usuario != null) {
                Cancion cancion = Cancion.getCancion(cancionI);
                Comentario.addComentario(usuario, cancion, texto);
            }

            if (UA.contains("Mobile")) {
                response.sendRedirect("/song?id=" + Integer.toString(cancionI));
            } else {
                response.setStatus(HttpServletResponse.SC_OK);
            }

        } catch (Exception e) {
            e.printStackTrace();
            /*rd = request.getRequestDispatcher("/movil/usuario.jsp");
            request.setAttribute("error", e.getMessage());
            rd.forward(request,response);*/
            response.setStatus(HttpServletResponse.SC_FORBIDDEN);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
