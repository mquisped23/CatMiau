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

/**
 *
 * @author andro
 */
@WebServlet(name = "DelMascotaServlet", urlPatterns = {"/delmascota"})
public class DelMascotaServlet extends HttpServlet {

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
            Integer id = Integer.parseInt(request.getParameter("id"));

      
        RequestDispatcher requestDispatcher = null;

        try {
            MascotaDao dao = new MascotaDao();
            dao.deleteId(id);
            requestDispatcher = request.getRequestDispatcher("/showmascotasservlet");
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
        requestDispatcher.forward(request, response);
    }
        
        
        
    

 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }


}
