package Controlador;

import Dao.Acceso;
import Dao.ClienteDAO;
import Dao.ProveedorDAO;
import Dao.UsuarioDAO;
import Modelo.Cliente;
import Modelo.Proveedor;
import Modelo.Usuario;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ControladorLogin extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("validarInicioSesion", false);
        request.getRequestDispatcher("vistas/inicio_sesion.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession sesion = request.getSession();
        
        Cliente cli;
        Acceso acc = new Acceso();
        Proveedor pro;
        UsuarioDAO usudao = new UsuarioDAO();
        ClienteDAO clidao = new ClienteDAO();
        ProveedorDAO prodao= new ProveedorDAO();
        RequestDispatcher rd = null;
        int nivel;
        String validaSesion = "";
        request.setAttribute("validarInicioSesion", false);
        Usuario usu = usudao.obtenerDatosUsuario(request.getParameter("correo_electronico"), request.getParameter("contrasena"));

        if (request.getParameter("btn_entrar") != null) {
            nivel = acc.validarNivelAcceso(request.getParameter("correo_electronico"), request.getParameter("contrasena"));
            if (nivel > 0) {                
                sesion.setAttribute("nivel_sesion", nivel);
                sesion.setAttribute("nombre_sesion", usu.getNombre_usuario());
                sesion.setAttribute("Atributo_rut", usu.getRut());
                sesion.setAttribute("id_usuario", usu.getId());
                if (nivel == 1) {
                    request.getRequestDispatcher("vistas/sesion_admin.jsp").forward(request, response);
                }
                if (nivel == 2) {
                    cli = clidao.obtenerDatosCliente(usu.getId());
                    sesion.setAttribute("id_cliente", cli.getId());
                    request.getRequestDispatcher("vistas/sesion_cliente.jsp").forward(request, response);
                }
                 if (nivel == 4) {
                    pro = prodao.obtenerDatosProveedor(usu.getId());
                    sesion.setAttribute("id_proveedor", pro.getId());
                    request.getRequestDispatcher("vistas/sesion_proveedor.jsp").forward(request, response);
                }
            } else {
                validaSesion += "Nombre de usuario o contraseña incorrecta...";
                request.setAttribute("validaSesion", validaSesion);
                request.setAttribute("validarInicioSesion", true);
                request.getRequestDispatcher("vistas/inicio_sesion.jsp").forward(request, response);
            }            
        }
    }
}
