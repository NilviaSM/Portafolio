package Controlador.Cliente;

import Dao.Acceso;
import Dao.ClienteDAO;
import Dao.HuespedDAO;
import Dao.ReservaDAO;
import Modelo.Cliente;
import Modelo.Huesped;
import Modelo.Reserva;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Reservap3 extends HttpServlet {

    Acceso acc = new Acceso();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Reserva reserva;
        ReservaDAO resdao = new ReservaDAO();
        HuespedDAO huesdao = new HuespedDAO();
        ClienteDAO clidao = new ClienteDAO();
        
        HttpSession sesion = request.getSession();
        //Se captura la cantidad de huespesdes desde el servlet Reservap1
        int cant_lista_huespedes = (int) sesion.getAttribute("cantidad_huespedes");
        String fecha_inicio = (String)sesion.getAttribute("fecha_inicio");
        String fecha_final = (String)sesion.getAttribute("fecha_final");
        int total_reserva = (int)sesion.getAttribute("total_reserva");
                
        String menu = (String) sesion.getAttribute("menu_seleccion");
        int id_menu = Integer.parseInt(menu);
        int id_usuario = (int)sesion.getAttribute("id_usuario");
        Cliente cliente = clidao.obtenerDatosCliente(id_usuario);
        boolean estadoInsertHuesped = false;
        boolean estadoInsertReserva;

        if (request.getParameter("btn_aceptar_reserva") != null) {
            List<Huesped> lista = (ArrayList<Huesped>) sesion.getAttribute("lista_huespedes");
            
            estadoInsertReserva = resdao.insertarOrdenCompra(cant_lista_huespedes,cant_lista_huespedes,fecha_inicio,fecha_final,id_menu,total_reserva,cliente.getId());
            
            for (Huesped huesped : lista) {
                estadoInsertHuesped = huesdao.insertarHuesped(huesped.getNombre(),huesped.getRut(),huesped.getTelefono());
            }

            if (estadoInsertReserva == false && estadoInsertHuesped == false) {
                reserva = resdao.obtenerUltimaReserva();
                
                sesion.setAttribute("id_reserva", reserva.getId());
                sesion.setAttribute("f_reserva", reserva.getFecha());
                sesion.setAttribute("c_hues", reserva.getCant_huespedes());
                sesion.setAttribute("c_habi", reserva.getCant_habitaciones());
                sesion.setAttribute("fi_reserva", reserva.getFecha_ingreso());
                sesion.setAttribute("fs_reserva", reserva.getFecha_salida());
                sesion.setAttribute("nm_reserva", reserva.getNombre_menu());
                sesion.setAttribute("fact_reserva", reserva.getFacturado());
                sesion.setAttribute("mt_reserva", reserva.getMonto_total());
                sesion.setAttribute("oc_id_cliente", reserva.getId_cliente());
                
                request.getRequestDispatcher("vistas/modulos/cliente/orden_creada.jsp").forward(request, response);
            } else {
                request.getRequestDispatcher("vistas/modulos/cliente/error.jsp").forward(request, response);
            }
        }
    }
}
