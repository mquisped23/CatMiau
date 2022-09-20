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
import pe.edu.autonoma.dao.RegistroDao;
import pe.edu.autonoma.encriptamiento.EncriptacionContra;
import pe.edu.autonoma.entity.Registro;

/**
 *
 * @author andro
 */
@WebServlet(name = "SaveUsuarioServlet", urlPatterns = {"/saveusuario"})
public class SaveRegistroServlet extends HttpServlet {
    EncriptacionContra encriptacion = new EncriptacionContra();

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String nombreUsuario = request.getParameter("Nombres");
        String apellidoUsuario = request.getParameter("Apellidos");
        String fechaUsuario = request.getParameter("fechadenacimiento");
        int telefono = Integer.parseInt(request.getParameter("telefono"));
        String direccion = request.getParameter("direccion");
        String usuarioPersona = request.getParameter("Usuario");
        String Contra = request.getParameter("Contra-usua");
        String nivel  ="2";

        //encripto la contrasena



        //Creo un objeto
        String contraencriptada = encriptacion.Encriptar(Contra);
        //-------------------------------------------------------------

        Registro registro = new Registro(nombreUsuario, apellidoUsuario, fechaUsuario,telefono,direccion, usuarioPersona, contraencriptada , nivel);

        //Ahora lo almacenamos en la base de datos
        try {
            RegistroDao dao = new RegistroDao();
            dao.insert(registro);
        } catch (Exception e) {
        }

        request.setAttribute("registro", registro);

        RequestDispatcher RequestDispatcher = request.getRequestDispatcher("login.jsp");
        RequestDispatcher.forward(request, response);

    }

}
