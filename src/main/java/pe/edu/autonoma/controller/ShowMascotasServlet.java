/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.autonoma.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pe.edu.autonoma.dao.MascotaDao;
import pe.edu.autonoma.entity.Mascota;

/**
 *
 * @author andro
 */
@WebServlet(name = "ShowMascotasServlet", urlPatterns = {"/showmascotasservlet"})
public class ShowMascotasServlet extends HttpServlet {



    protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<Mascota> mascotas = new ArrayList<>();
        HttpSession sesion = request.getSession();
        //id del usuario que se registro
        int id = (int)sesion.getAttribute("idUsuario");
        try {
            MascotaDao dao = new MascotaDao();
            mascotas = dao.list(id);
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }

        request.setAttribute("mascotas", mascotas);
        sesion.setMaxInactiveInterval(20);
        
        if (sesion.getAttribute("idUsuario") == null && sesion.getAttribute("username") == null) {
            request.getSession().invalidate();
             response.sendRedirect(request.getContextPath() + "/login.jsp");
        }
        

        

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("show-mascota.jsp");
        requestDispatcher.forward(request, response);

    }
    
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          this.doProcess(request, response);
      
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          this.doProcess(request, response);

    }

  
}
