package main.java.controller;

import main.java.model.Suscribir;
import main.java.model.Usuario;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(urlPatterns = "/Suscribe", name = "SuscribeController")
public class SuscribeController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        String suscriptor = (String)session.getAttribute("username");
        String suscrito = request.getParameter("name");
        RequestDispatcher rd = null;
        try {
            Suscribir.addSuscripcion(suscriptor,suscrito);
            response.sendRedirect("/movil/usuarioPublico.jsp?name="+suscrito);

        } catch (Exception e) {
            e.printStackTrace();
            rd = request.getRequestDispatcher("/movil/usuario.jsp");
            request.setAttribute("error", e.getMessage());
            rd.forward(request,response);
        }
    }
}
