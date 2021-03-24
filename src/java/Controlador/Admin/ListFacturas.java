package Controlador.Admin;

import Dao.FacturaDAO;
import Modelo.Factura;


import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ListFacturas extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession sesion = request.getSession();
        FacturaDAO dao = new FacturaDAO();
        request.setAttribute("valida", false);
        String n_rut = request.getParameter("validationCustom01");
        //String id_cliente = (String) sesion.getAttribute("id_cliente");
        List<Factura> listaFactura = dao.obtenerFacturas(n_rut);
        request.setAttribute("listadoFacturas", listaFactura);
        request.setAttribute("cant_lista_factura", listaFactura.isEmpty()); 
        
        request.getRequestDispatcher("vistas/modulos/facturacion/listar_facturas.jsp").forward(request, response);
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        FacturaDAO dao = new FacturaDAO();
        request.setAttribute("valida", false);
        //String id_cliente = (String) sesion.getAttribute("id_cliente");
        String n_rut = request.getParameter("validationCustom01");
        List<Factura> listaFactura = dao.obtenerFacturas(n_rut);
        int totalpendiente = 0;
        for(Factura fac: listaFactura)
            totalpendiente += fac.getMonto_total();
        request.setAttribute("totalpendiente", totalpendiente);
        request.setAttribute("listadoFacturas", listaFactura);
        request.setAttribute("cant_lista_factura", listaFactura.isEmpty()); 
        
        request.getRequestDispatcher("vistas/modulos/facturacion/listar_facturas.jsp").forward(request, response);
    }
    
    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       
    }
}
