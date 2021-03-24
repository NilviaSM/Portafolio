package Controlador.Cliente;

import Dao.FacturaDAO;
import Modelo.Factura;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ListarFacturas extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
               HttpSession sesion = request.getSession();
        FacturaDAO dao = new FacturaDAO();
        request.setAttribute("valida", false);
        String id_cliente = (String) sesion.getAttribute("id_cliente");
        List<Factura> listaFactura = dao.obtenerFacturas(id_cliente);
        request.setAttribute("listadoFacturas", listaFactura);
        request.setAttribute("cant_lista_factura", listaFactura.isEmpty()); 
        
        request.getRequestDispatcher("vistas/modulos/cliente/listado_ordenes.jsp").forward(request, response);
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        
    }
}
