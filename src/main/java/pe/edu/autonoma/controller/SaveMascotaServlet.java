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
import javax.servlet.http.HttpSession;

import pe.edu.autonoma.dao.MascotaDao;
import pe.edu.autonoma.entity.Mascota;

/**
 *
 * @author andro
 */
@WebServlet(name = "SaveMascotaServlet", urlPatterns = {"/savemascota"})
public class SaveMascotaServlet extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession sesion = request.getSession();
        int id = (int) sesion.getAttribute("idUsuario");
        String nombre = request.getParameter("nombre-mascota");
        String fecha = request.getParameter("fecha-mascota");
        String tiempo = request.getParameter("tiempo-mascota");
        
                //Creo un objeto
        
         Mascota mascota =new Mascota(nombre,fecha,tiempo, id);
        
         
          //Ahora lo almacenamos en la base de datos
        
        try {
           MascotaDao dao=new MascotaDao();
            dao.insert(mascota);
        } catch (Exception e) {
        }
        
        request.setAttribute("mascota", mascota);
        
        
         RequestDispatcher RequestDispatcher = request.getRequestDispatcher("/showmascotasservlet");
        RequestDispatcher.forward(request,response);
        
    }



}
