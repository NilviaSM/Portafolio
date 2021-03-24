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

public class ListarOrdenesCompra extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession sesion = request.getSession();
        ReservaDAO dao = new ReservaDAO();
        request.setAttribute("valida", false);
        int id_cliente = (int) sesion.getAttribute("id_cliente");
        List<Reserva> listaReserva = dao.obtenerReservas(id_cliente);
        request.setAttribute("listado_orden_compra", listaReserva);
        request.setAttribute("cant_lista_ordenes_compra", listaReserva.isEmpty());   

        request.getRequestDispatcher("vistas/modulos/cliente/listado_ordenes.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession sesion = request.getSession();
        ReservaDAO dao = new ReservaDAO();
        request.setAttribute("valida", false);
        int id_cliente = (int) sesion.getAttribute("id_cliente");
        List<Reserva> listaReserva = dao.obtenerReservas(id_cliente);
        request.setAttribute("listado_orden_compra", listaReserva);
        request.setAttribute("cant_lista_ordenes_compra", listaReserva.isEmpty());

        request.getRequestDispatcher("vistas/modulos/cliente/listado_ordenes.jsp").forward(request, response);
    }
}
