package pe.edu.autonoma.controller;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Optional;
import pe.edu.autonoma.dao.UsuarioDao;
import pe.edu.autonoma.entity.Registro;
import pe.edu.autonoma.entity.Usuario;

@WebServlet(name = "SignInServlet", urlPatterns = "/signin")
public class SignInServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession sesion = request.getSession(true);

        RequestDispatcher requestDispatcher;
        
        //Llamamos al dao Usuario y lo declaramos en un objeto usuarioDao
        UsuarioDao usuarioDao = new UsuarioDao();

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        Integer id =0;
        Optional<Usuario> optionalUsuario = usuarioDao.findByUsername( username );
        
        if(optionalUsuario.isPresent()) {
            Usuario usuario = optionalUsuario.get();
            
            
            if( usuario.getPassword().equals(password) && usuario.getNivel().equals("2") ) {
                id = usuario.getId();
                sesion.setAttribute("username", username);
                sesion.setAttribute("idUsuario", id);
                
                sesion.setAttribute("key", "dsjhf.FDS!543|5G*DFgfdrhd%#454GDfgDb"+username);

                requestDispatcher = request.getRequestDispatcher("indexLogeado.html");
                requestDispatcher.forward(request, response);
            }else{
                id = usuario.getId();
                sesion.setAttribute("username", username);
                sesion.setAttribute("idUsuario", id);
                sesion.setAttribute("key", "dsjhf.FDS!543|5G*DFgfdrhd%#454GDfgDb"+username);
                 requestDispatcher = request.getRequestDispatcher("IndexAdmin.jsp");
                requestDispatcher.forward(request, response);
            }
        }
        request.setAttribute("username", username);
        request.setAttribute("message", "El usuario y/o contraseña son incorrectos");
        requestDispatcher = request.getRequestDispatcher("login.jsp");
        requestDispatcher.forward(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
