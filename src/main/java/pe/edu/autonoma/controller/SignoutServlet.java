package pe.edu.autonoma.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "SignoutServlet", urlPatterns = "/signout")
public class SignoutServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.getSession().removeAttribute("idUsuario");
        request.getSession().removeAttribute("username");
        request.getSession().invalidate();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getSession().removeAttribute("idUsuario");
        request.getSession().removeAttribute("username");
        request.getSession().invalidate();
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        request.setAttribute("message", "Se ha cerrado la sesión de forma correcta.");
        response.sendRedirect(request.getContextPath() + "/login.jsp");

    }
}
