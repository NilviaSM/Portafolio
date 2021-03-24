/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador.Cliente;


import Dao.ClienteDAO;
import Modelo.Cliente;
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
public class ListarClientes extends HttpServlet {

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
         
        HttpSession sesion = request.getSession();
        ClienteDAO dao = new ClienteDAO();
        request.setAttribute("valida", false);
        int id_cliente = (int) sesion.getAttribute("id_cliente");
        List<Cliente> listacliente = dao.obtenerClientes();
        request.setAttribute("listado_cliente", listacliente);
        request.setAttribute("cant_lista_cliente", listacliente.isEmpty());   

        request.getRequestDispatcher("vistas/modulos/respuestas/listar_clientes.jsp").forward(request, response);
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
        /*HttpSession sesion = request.getSession();
        request.setAttribute("valida", false);
        int id_cliente = (int) sesion.getAttribute("id_cliente");*/
        ClienteDAO dao = new ClienteDAO();
        List<Cliente> listacliente = dao.obtenerClientes();
        request.setAttribute("listado_cliente", listacliente);
        request.setAttribute("cant_lista_cliente", listacliente.isEmpty());   

        request.getRequestDispatcher("vistas/modulos/respuestas/listar_clientes.jsp").forward(request, response);
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
