package main.java.controller;

import main.java.model.Cancioneslista;
import main.java.model.Listarep;
import main.java.model.Usuario;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(urlPatterns = "/Reproductor_lista_v2", name = "Reproductor_lista_v2_controller")
public class Reproductor_lista_v2_controller extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(true);

        String text = "";
        response.setContentType("text/plain");  // Set content type of the response so that jQuery knows what it can expect.
        response.setCharacterEncoding("UTF-8"); // You want world domination, huh?


        try {
            Integer i =0;
            Integer max_num_historioal =  Integer.parseInt( request.getParameter("max_num_canciones") );
            Usuario u = (Usuario) session.getAttribute("username");
            Listarep mi_historial = Usuario.getLista(u,"historial");
            for (Cancioneslista mi_cancion : mi_historial.getCancioneslistasByIdLista()){
                text = text+mi_cancion.getCancionByIdCancion().getNombre()+",";
                text = text+mi_cancion.getCancionByIdCancion().getIdCancion()+",";
                if ( i<max_num_historioal ) i++;
                else { break; }
            }

            response.getWriter().write(text);       // Write response body.

        } catch (Exception e) {
            response.getWriter().write("Ninguna cancion");       // Write response body.
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}