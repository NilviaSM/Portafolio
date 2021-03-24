/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador.Admin;

import Dao.FacturaDAO;
import Modelo.Factura;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Nilvia S Miranda
 */
public class ListarTotalFacturas extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
   
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
             HttpSession sesion = request.getSession();
        FacturaDAO dao = new FacturaDAO();
        request.setAttribute("valida", false);
        String n_rut = request.getParameter("validationCustom01");
        //String id_cliente = (String) sesion.getAttribute("id_cliente");
        List<Factura> listaFactura = dao.obtenerFacturas(n_rut);
        request.setAttribute("listadoFacturasT", listaFactura);
        request.setAttribute("cant_lista_facturaT", listaFactura.isEmpty()); 
        
        request.getRequestDispatcher("vistas/sesion_admin.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
         FacturaDAO dao = new FacturaDAO();
        request.setAttribute("valida", false);
        //String id_cliente = (String) sesion.getAttribute("id_cliente");
        String n_rut = request.getParameter("validationCustom01");
        List<Factura> listaFactura = dao.obtenerFacturas(n_rut);
      
        request.setAttribute("listadoFacturasT", listaFactura);
        request.setAttribute("cant_lista_facturaT", listaFactura.isEmpty()); 
        
        request.getRequestDispatcher("vistas/modulos/facturacion/sesion_admin.jsp").forward(request, response);
   
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

    
     protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       
    }
}
