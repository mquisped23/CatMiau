/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.autonoma.controller;

import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "SaveEditMascotaServlet", urlPatterns = {"/saveeditmascota"})
public class SaveEditMascotaServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Integer id = Integer.parseInt(request.getParameter("id"));
        String nombre = request.getParameter("nombre-mascota");
        String fecha = request.getParameter("fecha-mascota");
        String tiempo = request.getParameter("tiempo-mascota");


       


        Mascota mascota = new Mascota(id, nombre, fecha, tiempo);

        try {
            MascotaDao dao = new MascotaDao();
            dao.update(mascota);
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/showmascotasservlet");
        requestDispatcher.forward(request, response);

    }
        
        
    

}
