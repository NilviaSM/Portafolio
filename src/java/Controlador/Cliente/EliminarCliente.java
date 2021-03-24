/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador.Admin;

import Dao.ClienteDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author sebastian
 */
@WebServlet(name = "EliminarCliente", urlPatterns = {"/EliminarCliente"})
public class EliminarCliente extends HttpServlet {

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
       
        HttpSession sesion = request.getSession();
        ClienteDAO cliDAO = new ClienteDAO();
        String mensaje = "";
        request.setAttribute("valida", false);
        
        int cliente = (int) sesion.getAttribute("id_cliente");

        int eliminacion = cliDAO.eliminarCliente(cliente);    
        
        sesion.setAttribute("PRUEBA1", cliente);
        sesion.setAttribute("PRUEBA2", eliminacion);

        if (eliminacion > 0) {          
            mensaje += "Cliente eliminado correctamente...";
            request.setAttribute("valida", true);
            
        } else {
            mensaje += "Hubo un error, por favor inténtelo de nuevo más tarde...";
            System.out.println("NO ENTRA");
            request.setAttribute("valida", true);
        }
        
        request.setAttribute("mensajeEliminar", mensaje);
        request.getRequestDispatcher("vistas/modulos/respuestas/listar_clientes.jsp").forward(request, response);
        
        
        
        
    }

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

}
