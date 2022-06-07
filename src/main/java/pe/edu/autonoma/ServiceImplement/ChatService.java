
package pe.edu.autonoma.ServiceImplement;


public class ChatService {
    public String agregar(java.lang.String nombre, java.lang.String mensaje){
        services.Servicios_Service service = new services.Servicios_Service();
        services.Servicios port = service.getServiciosPort();
        return port.agregar(nombre ,mensaje);
    }
}
