/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package pe.edu.autonoma.controller;

import java.io.IOException;
import java.util.Optional;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import pe.edu.autonoma.dao.RegistroDao;
import pe.edu.autonoma.entity.Registro;

/**
 *
 * @author andro
 */
public class InformacionPersonal extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);

        try {

            HttpSession sesion = request.getSession();
            int id = (int) sesion.getAttribute("idUsuario");

            if (sesion.getAttribute("idUsuario") == null) {
                response.sendRedirect(request.getContextPath() + "/login.jsp");
            }

            System.out.println("mi id es: " + id);
            RegistroDao registro = new RegistroDao();
            //guardo los datos optenidos por el id en dato
            Optional<Registro> dato = registro.findId(id);
            sesion.setMaxInactiveInterval(30);
            if (dato.isPresent()) {
                Registro reg = dato.get();
                String nombreUsuario = reg.getNombreUsuario();
                String apellidoUsuario = reg.getApellidoUsuario();
                String fechaUsuario = reg.getFechaUsuario();
                int numeroUsuario = reg.getNumeroTelefonico();
                String direccionUsuario = reg.getDireccion();
                String usuario = reg.getUsuario();
                String contra = reg.getContra();
                System.out.println("Mi nombre es: " + nombreUsuario);
                Registro datos = new Registro(nombreUsuario, apellidoUsuario, fechaUsuario, numeroUsuario, direccionUsuario, usuario, contra);
                request.setAttribute("datos", datos);
                request.getRequestDispatcher("MiInformacion.jsp").forward(request, response);
                //response.sendRedirect(request.getContextPath() + "/MiInformacion.jsp");
            }

        } catch (NullPointerException e) {
            response.sendRedirect(request.getContextPath() + "/login.jsp");
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
