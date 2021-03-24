package Controlador.Cliente;

import Dao.ReservaDAO;
import Modelo.Reserva;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class EliminarReserva extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession sesion = request.getSession();

        String id_reserva = request.getParameter("btn_eliminar_oc");
        int id_enviado = Integer.parseInt(id_reserva);
        sesion.setAttribute("id_reserva", id_enviado);

        request.getRequestDispatcher("vistas/modulos/cliente/eliminar_orden.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession sesion = request.getSession();
        ReservaDAO resdao = new ReservaDAO();
        String mensaje = "";
        request.setAttribute("valida", false);
  
        int reserva = (int) sesion.getAttribute("id_reserva");

        int eliminacion = resdao.eliminarReserva(reserva);    
        
        sesion.setAttribute("PRUEBA1", reserva);
        sesion.setAttribute("PRUEBA2", eliminacion);

        if (eliminacion > 0) {          
            mensaje += "Orden de compra eliminada correctamente...";
            request.setAttribute("valida", true);
            
        } else {
            mensaje += "Hubo un error, por favor inténtelo de nuevo más tarde...";
            request.setAttribute("valida", true);
        }
        
        request.setAttribute("mensajeEliminar", mensaje);
        request.getRequestDispatcher("vistas/modulos/cliente/listado_ordenes.jsp").forward(request, response);
    }
}
