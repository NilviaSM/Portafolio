package Controlador.Cliente;

import Dao.ClienteDAO;
import Dao.UsuarioDAO;
import Modelo.Cliente;
import Modelo.Usuario;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegistroCliente extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("alertaRegistro", false);
        request.getRequestDispatcher("vistas/registrarse.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("alertaRegistro", false);
        request.getRequestDispatcher("vistas/registrarse.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("alertaRegistro", false);
        Usuario usu = new Usuario();
        UsuarioDAO usudao = new UsuarioDAO();
        Cliente cli = new Cliente();
        ClienteDAO clidao = new ClienteDAO();
        String m_alert = "";
        
        String razon_social = request.getParameter("razon_social");
        String rut_empresa = request.getParameter("rut_empresa");
        String nom_rep_legal = request.getParameter("nom_rep_legal");
        String rut_rep_legal = request.getParameter("rut_rep_legal");
        String nombre_usuario = request.getParameter("nombre_usuario");
        String contrasena = request.getParameter("contrasena");
        String rep_contrasena = request.getParameter("rep_contrasena");
        String telefono = request.getParameter("telefono");
        String correo_electronico = request.getParameter("correo_electronico");
        String rep_correo_elec = request.getParameter("rep_correo_elec");
        String direccion = request.getParameter("direccion");;
        String region = request.getParameter("region");
        String provincia = request.getParameter("provincia");
        String comuna = request.getParameter("comuna");
        String direccionCompleta;
        int estadoInsertCliente;

        if (request.getParameter("btn_registro_cliente") != null) {

            if (razon_social.replaceAll(" ", "").equals("") || razon_social.length() < 3) {
                m_alert += "El nombre de la empresa debe tener un mínimo de 3 caracteres";
                request.setAttribute("alertaRegistro", true);
                request.setAttribute("m_alert", m_alert);
            } else if (rut_empresa.replaceAll(" ", "").equals("") || rut_empresa.length() > 10) {
                m_alert += "El rut de empresa no es válido. (12345678-9)";
                request.setAttribute("alertaRegistro", true);
                request.setAttribute("m_alert", m_alert);
            } else if (nom_rep_legal.replaceAll(" ", "").equals("") || nom_rep_legal.length() < 3) {
                m_alert += "El nombre del representante legal debe tener un mínimo de 3 caracteres";
                request.setAttribute("alertaRegistro", true);
                request.setAttribute("m_alert", m_alert);
            } else if (nombre_usuario.replaceAll(" ", "").equals("") || nombre_usuario.length() < 5) {
                m_alert += "El nombre de la empresa debe tener un mínimo de 3 caracteres";
                request.setAttribute("alertaRegistro", true);
                request.setAttribute("m_alert", m_alert);
            } else if (contrasena.replaceAll(" ", "").equals("") || contrasena.length() < 8) {
                m_alert += "La contraseña debe tener un mínimo de 8 caracteres";
                request.setAttribute("alertaRegistro", true);
                request.setAttribute("m_alert", m_alert);
            } else if (rep_contrasena.replaceAll(" ", "").equals("") || !rep_contrasena.equals(contrasena)) {
                m_alert += "Las contraseñas no coinciden";
                request.setAttribute("alertaRegistro", true);
                request.setAttribute("m_alert", m_alert);
            } else if (telefono.replaceAll(" ", "").equals("") || telefono.length() < 8) {
                m_alert += "El número de teléfono tiene un mínimo de 8 dígitos";
                request.setAttribute("alertaRegistro", true);
                request.setAttribute("m_alert", m_alert);
            } else if (correo_electronico.replaceAll(" ", "").equals("")) {
                m_alert += "Debe ingresar un correo electrónico";
                request.setAttribute("alertaRegistro", true);
                request.setAttribute("m_alert", m_alert);
            } else if (rep_correo_elec.replaceAll(" ", "").equals("") || !rep_correo_elec.equals(correo_electronico)) {
                m_alert += "El correo electrónico no coincide";
                request.setAttribute("alertaRegistro", true);
                request.setAttribute("m_alert", m_alert);
            } else if (rep_correo_elec.replaceAll(" ", "").equals("") || !rep_correo_elec.equals(correo_electronico)) {
                m_alert += "El correo electrónico no coincide";
                request.setAttribute("alertaRegistro", true);
                request.setAttribute("m_alert", m_alert);
            } else if (direccion.replaceAll(" ", "").equals("") || direccion.length() < 5) {
                m_alert += "La dirección debe tener un mínimo de 5 caracteres";
                request.setAttribute("alertaRegistro", true);
                request.setAttribute("m_alert", m_alert);
            } else {
                usu.setRazon_social(razon_social);
                usu.setRut(rut_empresa);
                usu.setNombre_contacto(nom_rep_legal);
                cli.setRut_rep_legal(rut_rep_legal);
                usu.setNombre_usuario(nombre_usuario);
                usu.setContrasena(contrasena);
                usu.setTelefono(telefono);
                usu.setCorreo_electronico(correo_electronico);
                direccionCompleta = direccion + " " + comuna + " " + provincia + " " + region;
                cli.setDireccion(direccionCompleta);
                estadoInsertCliente = clidao.insertarCliente(usu.getRazon_social(), usu.getRut(), usu.getNombre_usuario(), usu.getContrasena(), usu.getNombre_contacto(), usu.getCorreo_electronico(), usu.getTelefono(), cli.getRut_rep_legal(), cli.getDireccion());
                if (estadoInsertCliente == 1) {
                    Usuario usu2 = usudao.obtenerDatosUsuario(usu.getCorreo_electronico(), usu.getContrasena());
                    request.setAttribute("nombre_usuario", usu2.getNombre_usuario());
                    request.setAttribute("contrasena", usu2.getContrasena());
                    request.setAttribute("razon_social", usu2.getRazon_social());
                    request.setAttribute("registrado", estadoInsertCliente);
                    request.setAttribute("correo_registro", usu2.getCorreo_electronico());
                    request.getRequestDispatcher("vistas/registro_exitoso.jsp").forward(request, response);
                } else {                    
                    request.getRequestDispatcher("vistas/error_registro.jsp").forward(request, response);
                }
            }
        }
    }
}
