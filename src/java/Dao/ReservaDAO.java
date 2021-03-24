package Dao;

import Modelo.Queries;
import Modelo.Database;
import Modelo.Reserva;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import oracle.jdbc.OracleTypes;

public class ReservaDAO {

    Database db = new Database();
    String sql = "";
    Connection con;
    PreparedStatement pst;
    ResultSet rs;
    Queries queries = new Queries();

    public boolean insertarOrdenCompra(int cant_huesped, int cant_habi, String fecha_ingreso, String fecha_salida, int id_menu, int monto_total, int id_cliente) {
        boolean accion = false;
        try {
            Class.forName(db.getDriver());
            con = DriverManager.getConnection(db.getUrl(), db.getUser(), db.getPass());
            CallableStatement cst = con.prepareCall("{CALL SP_INSERTAR_ORDEN_COMPRA(?,?,?,?,?,?,?)}");
            cst.setInt(1, cant_huesped);
            cst.setInt(2, cant_habi);
            cst.setString(3, fecha_ingreso);
            cst.setString(4, fecha_salida);
            cst.setInt(5, id_menu);
            cst.setInt(6, monto_total);
            cst.setInt(7, id_cliente);
            accion = cst.execute();
            con.close();
        } catch (SQLException | ClassNotFoundException e) {
            Logger.getLogger(Acceso.class.getName()).log(Level.SEVERE, null, e);
        }
        return accion;
    }

    public Reserva obtenerUltimaReserva() {
        int id_max = validarMaxId();
        Reserva res = new Reserva();
        try {
            Class.forName(db.getDriver());
            con = DriverManager.getConnection(db.getUrl(), db.getUser(), db.getPass());
            CallableStatement cst2 = con.prepareCall("{CALL SP_ULTIMA_RESERVA(?,?)}");
            cst2.setInt(1, id_max);
            cst2.registerOutParameter(2, OracleTypes.CURSOR);
            cst2.execute();
            rs = (ResultSet) cst2.getObject(2);
            while (rs.next()) {
                res.setId(rs.getInt(1));
                res.setFecha(rs.getString(2));
                res.setCant_huespedes(rs.getInt(3));
                res.setCant_habitaciones(rs.getInt(4));
                res.setFecha_ingreso(rs.getString(5));
                res.setFecha_salida(rs.getString(6));
                res.setNombre_menu(rs.getString(7));
                res.setFacturado(rs.getInt(8));
                res.setMonto_total(rs.getInt(9));                
            }
            rs.close();
            con.close();
        } catch (SQLException | ClassNotFoundException e) {
            Logger.getLogger(Acceso.class.getName()).log(Level.SEVERE, null, e);
        }
        return res;
    }

    public int validarMaxId() {
        int nivel = 0;
        try {
            Class.forName(db.getDriver());
            con = DriverManager.getConnection(db.getUrl(), db.getUser(), db.getPass());
            CallableStatement cst = con.prepareCall("{? = call FN_OBT_MAX_ID_RESERVA()}");
            cst.registerOutParameter(1, java.sql.Types.INTEGER);
            cst.execute();
            nivel = cst.getInt(1);
            con.close();
            return nivel;
        } catch (SQLException | ClassNotFoundException e) {
            return nivel;
        }
    }

    public List obtenerReservas(int id_cliente) {
        List<Reserva> listaReserva = new ArrayList<>();
        try {
            Class.forName(db.getDriver());
            con = DriverManager.getConnection(db.getUrl(), db.getUser(), db.getPass());
            CallableStatement cst = con.prepareCall("{call SP_ORDENES_COMPRA_WEB(?,?)}");
            cst.setInt(1, id_cliente);
            cst.registerOutParameter(2, OracleTypes.CURSOR);
            cst.execute();
            rs = (ResultSet) cst.getObject(2);

            while (rs.next()) {
                Reserva reserva = new Reserva();
                reserva.setId(rs.getInt(1));
                reserva.setFecha(rs.getString(2));
                reserva.setCant_huespedes(rs.getInt(3));
                reserva.setCant_habitaciones(rs.getInt(4));
                reserva.setFecha_ingreso(rs.getString(5));
                reserva.setFecha_salida(rs.getString(6));
                reserva.setNombre_menu(rs.getString(7));
                reserva.setFacturado(rs.getInt(8));
                reserva.setMonto_total(rs.getInt(9));                

                listaReserva.add(reserva);
            }
            con.close();
            rs.close();
        } catch (SQLException | ClassNotFoundException e) {
            Logger.getLogger(Acceso.class.getName()).log(Level.SEVERE, null, e);
        }
        return listaReserva;
    }

    public int eliminarReserva(int id) {

        try {
            Class.forName(db.getDriver());
            con = DriverManager.getConnection(db.getUrl(), db.getUser(), db.getPass());
            CallableStatement cst = con.prepareCall("{call SP_ELIMINAR_ORDEN_COMPRA(?)}");
            cst.setInt(1, id);            
            
            int res = cst.executeUpdate();            
            con.close();
            return res;
        } catch (SQLException | ClassNotFoundException e) {
            Logger.getLogger(Acceso.class.getName()).log(Level.SEVERE, null, e);
            return 0;
        }
    }
}
