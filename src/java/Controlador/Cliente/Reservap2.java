package Controlador.Cliente;

import Dao.Acceso;
import Dao.MenuDAO;
import Modelo.Menu;
import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Reservap2 extends HttpServlet {

    Acceso acc = new Acceso();
    MenuDAO dao = new MenuDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession sesion = request.getSession();
        sesion.setAttribute("v_lista_vacia", false);

        List<Menu> listaMenu = dao.obtenerMenu();
        request.setAttribute("lista_menu", listaMenu);
        int lista_vacia = (int) sesion.getAttribute("cantidad_huespedes");        
        if (lista_vacia == 0) {
            sesion.setAttribute("v_lista_vacia", true);
            request.getRequestDispatcher("vistas/modulos/cliente/reserva.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("vistas/modulos/cliente/reserva2.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession sesion = request.getSession();
        request.setAttribute("validacion_fechas", false);
        request.setAttribute("validacion_menu", false);
        

        List<Menu> listaMenu = dao.obtenerMenu();
        request.setAttribute("lista_menu", listaMenu);

        String validar = "";
        String menu_seleccion = request.getParameter("select_menu");
        Date fecha_inicio = (Date.valueOf(request.getParameter("fecha_inicio")));
        Date fecha_final = (Date.valueOf(request.getParameter("fecha_final")));

        //Se verifica si la fecha de inicio es mayor a la fecha final
        int calculo = fecha_inicio.compareTo(fecha_final);

        if (calculo > 0) {
            validar += "Hubo un problema: La fecha de inicio no puede ser mayor a la fecha final";
            request.setAttribute("validacion_fechas", true);
            request.setAttribute("validar", validar);
            request.getRequestDispatcher("vistas/modulos/cliente/reserva2.jsp").forward(request, response);
        }

        if (menu_seleccion.equals("1") || menu_seleccion.equals("2") || menu_seleccion.equals("3")) {
            List<Menu> listaMenuSeleccionado = dao.obtenerMenuSeleccionado(menu_seleccion);
            sesion.setAttribute("menu_seleccionado", listaMenuSeleccionado);
            sesion.setAttribute("menu_seleccion", menu_seleccion);
            validar = "";
        } else {
            validar += "Debe seleccionar el menú";
            request.setAttribute("validacion_menu", true);
            request.setAttribute("validar", validar);
            request.getRequestDispatcher("vistas/modulos/cliente/reserva2.jsp").forward(request, response);
        }

        if (validar.equals("")) {

            //Se capturan las fechas y se le da formato
            SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
            String f_inicio = formatter.format(fecha_inicio);
            String f_final = formatter.format(fecha_final);
            sesion.setAttribute("fecha_inicio", f_inicio);
            sesion.setAttribute("fecha_final", f_final);

            //Se obtiene la cantidad de días a partir de las 2 fechas capturadas
            int dias = ((int) ((fecha_final.getTime() - fecha_inicio.getTime())) / 86400000);
            sesion.setAttribute("cant_dias", dias);

            //Se obtiene el precio de la habitacion
            int precio_hab = acc.obtenerPrecioHabitacion();
            request.setAttribute("precio_habitacion", precio_hab);

            //Se captura la cantidad de huespesdes desde el servlet Reservap1
            int cant_lista_huespedes = (int) sesion.getAttribute("cantidad_huespedes");

            //Se calcula el subtotal de las habitaciones
            int subtotal_hab = precio_hab * cant_lista_huespedes * dias;
            sesion.setAttribute("subtotal_hab", subtotal_hab);

            //Se calcula el subtotal de la alimentacion
            List<Menu> listaMenuSeleccionado = dao.obtenerMenuSeleccionado(menu_seleccion);
            Menu menu;
            menu = listaMenuSeleccionado.get(0);
            sesion.setAttribute("nombre_menu", menu.getNombre());
            sesion.setAttribute("precio_menu", menu.getPrecio());
            int subtotal_ali = menu.getPrecio() * cant_lista_huespedes * dias;
            sesion.setAttribute("subtotal_ali", subtotal_ali);

            //Se calcula el total
            int neto = subtotal_hab + subtotal_ali;
            sesion.setAttribute("neto", neto);
            int iva = neto * 19 / 100;
            sesion.setAttribute("iva", iva);
            int total_reserva = neto + iva;
            sesion.setAttribute("total_reserva", total_reserva);

            request.getRequestDispatcher("vistas/modulos/cliente/resumen_reserva.jsp").forward(request, response);
        }
    }
}
