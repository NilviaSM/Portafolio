package Controlador.Cliente;

import Dao.HuespedDAO;
import Modelo.Huesped;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Reservap1 extends HttpServlet {

    HuespedDAO dao = new HuespedDAO();   

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession sesion = request.getSession();
        sesion.setAttribute("cantidad_huespedes", 0);
        request.getRequestDispatcher("vistas/modulos/cliente/reserva.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession sesion = request.getSession();
        request.setAttribute("mensaje_correcto", false);
        request.setAttribute("alerta", false);
        sesion.setAttribute("v_lista_vacia", false);
        List<Huesped> datos;

        String nombre = request.getParameter("nom_huesped");
        String rut = request.getParameter("rut_huesped");
        String telefono = request.getParameter("telefono_huesped");
        String validaciones = "";
        String mensaje = "";
        sesion.setAttribute("cantidad_huespedes", 0);

        if (nombre.replaceAll(" ", "").equals("") || nombre.length() < 3) {
            validaciones += "El nombre debe tener un mínimo de 3 caracteres";
            request.setAttribute("alerta", true);
        } else if (rut.replaceAll(" ", "").equals("") || rut.length() > 10) {
            validaciones += "El rut ingresado no es válido. (12345678-9)";
            request.setAttribute("alerta", true);
        } else if (telefono.replaceAll(" ", "").equals("") || telefono.length() < 8) {
            validaciones += "El telefono tiene un minimo de 8 digitos";
            request.setAttribute("alerta", true);
        } else {
            datos = dao.listaHuespedes(nombre, rut, telefono);
            mensaje += "Huésped Agregado...";
            sesion.setAttribute("lista_huespedes", datos);
            sesion.setAttribute("cantidad_huespedes", datos.size());
            request.setAttribute("mensaje_correcto", true);
        }

        request.setAttribute("validaciones", validaciones);
        request.setAttribute("mensaje", mensaje);
        request.getRequestDispatcher("vistas/modulos/cliente/reserva.jsp").forward(request, response);
    }
}
