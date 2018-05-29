package controller;

import model.Listarep;
import model.Usuario;
import util.FileOperations;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Random;

import static util.BCrypt.gensalt;
import static util.BCrypt.hashpw;

@WebServlet(name = "RegisterController", urlPatterns = "/register")
public class RegisterController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String user = request.getParameter("register_user");
        String pass = hashpw(request.getParameter("register_pass"),gensalt());   //Contraseña hasheada
        String email = request.getParameter("register_email");
        String UA = request.getHeader("User-Agent");
        HttpSession session = request.getSession(true);
        try {
            Usuario username = Usuario.addUser(user,pass,email);
            // TODO: sustituir por listas del usuario
            // List<String> listas = Arrays.asList("Lista 1", "Lista 2", "Lista 3");
            Collection<Listarep> aux = username.getListarepsByIdUser();
            List<Listarep> listas = new ArrayList<>(aux);
            System.out.println(listas);
            session.setAttribute("username", username);
            session.setAttribute("misListas", listas);
            Random rand = new Random();
            int  num = rand.nextInt(9) + 1;
            FileOperations.dup("/contenido/web/imagenes/wolf"+Integer.toString(num)+".png",
                    "/contenido/imagenes/usuarios/"+user+"Perfil.png" );
            // session.setAttribute("misAudios", listas);
            // session.setAttribute("listasRecomendadas", listas);
            // session.setAttribute("audiosRecomendados", listas);
            if (UA.contains("Mobile")){
                response.sendRedirect("/movil/explorar.jsp");
            }else{
                response.sendRedirect("/escritorio/explorar.jsp");
            }

        } catch (Exception e) {
            e.printStackTrace();
            RequestDispatcher rd;
            if (UA.contains("Mobile")){
                rd = request.getRequestDispatcher("/movil/wolfsound.jsp");
            }else{
                rd = request.getRequestDispatcher("/escritorio/explorar.jsp");
            }
            request.setAttribute("error", e.getMessage());
            rd.forward(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
