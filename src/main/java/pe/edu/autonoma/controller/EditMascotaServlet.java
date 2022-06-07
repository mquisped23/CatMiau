package pe.edu.autonoma.controller;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Optional;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import pe.edu.autonoma.dao.MascotaDao;
import pe.edu.autonoma.entity.Mascota;

/**
 *
 * @author andro
 */
@WebServlet(name = "EditTrabajadorServlet",urlPatterns = {"/editmascota"})
public class EditMascotaServlet extends HttpServlet {


 
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
         Integer id = Integer.parseInt( request.getParameter("id") );

       
        RequestDispatcher requestDispatcher = null;
        

        try {
            MascotaDao dao = new MascotaDao();
            Optional<Mascota> optional = dao.findId(id);

            if( optional.isPresent() ) {
                // Obtener la lista de actividades
          

                request.setAttribute("mascota", optional.get());
                requestDispatcher = request.getRequestDispatcher("edit-mascota.jsp");
            } else {
                requestDispatcher = request.getRequestDispatcher("/showmascotasservlet");
            }
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
        requestDispatcher.forward(request, response);
    }
        
        
        
    


    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }



}
