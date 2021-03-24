/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador.Proveedor;

import Dao.ProveedorDAO;
import Dao.UsuarioDAO;
import Modelo.Cliente;
import Modelo.Proveedor;
import Modelo.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Nilvia S Miranda
 */
public class RegistroProveedor extends HttpServlet {

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
        request.setAttribute("alertaRegistro", false);
        request.getRequestDispatcher("vistas/modulos/registrar_proveedor.jsp").forward(request, response);
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
        request.setAttribute("alertaRegistro", false);
        request.getRequestDispatcher("vistas/modulos/registrar_proveedor.jsp").forward(request, response);
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
        request.setAttribute("alertaRegistro", false);
        Usuario usu = new Usuario();
        UsuarioDAO usudao = new UsuarioDAO();
        Proveedor prov = new Proveedor();
        ProveedorDAO provDao = new ProveedorDAO();

        String m_alert = "";

        String rubro = request.getParameter("rubro");
        String razon_social = request.getParameter("razon_social");
        String rut_empresa = request.getParameter("rut_empresa");
        String nombre_usuario = request.getParameter("nombre_usuario");
        String contrasena = request.getParameter("contrasena");
        String rep_contrasena = request.getParameter("rep_contrasena");
        String telefono = request.getParameter("telefono");
        String correo_electronico = request.getParameter("correo_electronico");
        String rep_correo_elec = request.getParameter("rep_correo_elec");
        String comuna = request.getParameter("comuna");
        String region = request.getParameter("region");
        String provincia = request.getParameter("provincia");

        String nombre_contacto = request.getParameter("nombre_contacto");
        String direccionCompleta;
        int estadoInsertProveedor = 0;
        
        System.out.println("Dopost");

        if (request.getParameter("btn_registro_proveedor") != null) {
System.out.println("boton");
            if (rubro.replaceAll(" ", "").equals("") || rubro.length() < 3) {
                m_alert += "El rubro de la empresa debe tener un mínimo de 3 caracteres";
                request.setAttribute("alertaRegistro", true);
                request.setAttribute("m_alert", m_alert);
                System.out.println("rubro");
            } else if (rut_empresa.replaceAll(" ", "").equals("") || rut_empresa.length() > 10) {
                m_alert += "El rut de empresa no es válido. (12345678-9)";
                request.setAttribute("alertaRegistro", true);
                request.setAttribute("m_alert", m_alert);
                System.out.println("rut");
            } else if (nombre_usuario.replaceAll(" ", "").equals("") || nombre_usuario.length() < 5) {
                m_alert += "El nombre de la empresa debe tener un mínimo de 3 caracteres";
                request.setAttribute("alertaRegistro", true);
                request.setAttribute("m_alert", m_alert);
                System.out.println("nombre");
            } else if (contrasena.replaceAll(" ", "").equals("") || contrasena.length() < 8) {
                m_alert += "La contraseña debe tener un mínimo de 8 caracteres";
                request.setAttribute("alertaRegistro", true);
                request.setAttribute("m_alert", m_alert);
                System.out.println("contra");
            } else if (rep_contrasena.replaceAll(" ", "").equals("") || !rep_contrasena.equals(contrasena)) {
                m_alert += "Las contraseñas no coinciden";
                request.setAttribute("alertaRegistro", true);
                request.setAttribute("m_alert", m_alert);
                System.out.println("repcontra");
            } else if (telefono.replaceAll(" ", "").equals("") || telefono.length() < 8) {
                m_alert += "El número de teléfono tiene un mínimo de 8 dígitos";
                request.setAttribute("alertaRegistro", true);
                request.setAttribute("m_alert", m_alert);
                System.out.println("telefono");
            } else if (correo_electronico.replaceAll(" ", "").equals("")) {
                m_alert += "Debe ingresar un correo electrónico";
                request.setAttribute("alertaRegistro", true);
                request.setAttribute("m_alert", m_alert);
                System.out.println("correo");
            } else if (rep_correo_elec.replaceAll(" ", "").equals("") || !rep_correo_elec.equals(correo_electronico)) {
                m_alert += "El correo electrónico no coincide";
                request.setAttribute("alertaRegistro", true);
                request.setAttribute("m_alert", m_alert);
                System.out.println("repcorreo");
            } else {
                System.out.println("validado");
                
                
                /*usu.setRazon_social(razon_social);
                prov.setRubro(rubro);
                usu.setNombre_usuario(nombre_usuario);
                prov.setRut(rut_empresa);
                usu.setNombre_usuario(nombre_usuario);
                usu.setContrasena(contrasena);
                prov.setTelefono(telefono);
                usu.setCorreo_electronico(correo_electronico);
                */
                estadoInsertProveedor = provDao.insertarProveedor2(razon_social, rubro, rut_empresa, nombre_usuario, contrasena, correo_electronico, telefono, nombre_contacto);
                
                if (estadoInsertProveedor == 1) {
                    //Usuario usu2 = usudao.obtenerDatosUsuario(correo_electronico, contrasena);
                    request.setAttribute("nombre_usuario", nombre_usuario);
                    request.setAttribute("contrasena", contrasena);
                    request.setAttribute("registrado", estadoInsertProveedor);
                    request.setAttribute("correo_registro", correo_electronico);
                    System.out.println("Registro");
                    request.getRequestDispatcher("vistas/registro_exitoso_proveedor.jsp").forward(request, response);
                } else {
                    request.getRequestDispatcher("vistas/error_registro.jsp").forward(request, response);
                    System.out.println("No Registro");
                }
            }
        }
    }
}
