package Dao;

import Modelo.Queries;
import Modelo.Database;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.ArrayList;
import java.util.List;
import Modelo.Huesped;

public class Acceso {

    Database db = new Database();
    String sql = "";
    Connection con;
    PreparedStatement pst;
    ResultSet rs;
    Queries queries = new Queries();
    List<Huesped> lista = new ArrayList<>();

    public Acceso() {
    }

    public int validarNivelAcceso(String usuario, String contrasena) {
        int nivel = 0;
        try {
            Class.forName(db.getDriver());
            con = DriverManager.getConnection(db.getUrl(), db.getUser(), db.getPass());
            CallableStatement cst = con.prepareCall("{? = call FN_INICIAR_SESION(?,?)}");
            cst.registerOutParameter(1, java.sql.Types.INTEGER);
            cst.setString(2, usuario);
            cst.setString(3, contrasena);
            cst.execute();
            nivel = cst.getInt(1);
            con.close();
            return nivel;
        } catch (SQLException | ClassNotFoundException e) {
            return nivel;
        }
    }

    public int obtenerPrecioHabitacion() {
        int precio = 0;
        try {
            Class.forName(db.getDriver());
            con = DriverManager.getConnection(db.getUrl(), db.getUser(), db.getPass());
            sql = "select h_precio from habitacion where h_id = 1";
            pst = con.prepareStatement(sql);
            rs = pst.executeQuery();
            while (rs.next()) {
                precio = rs.getInt(1);
            }
            con.close();
            rs.close();
            return precio;
        } catch (SQLException | ClassNotFoundException e) {
            Logger.getLogger(Acceso.class.getName()).log(Level.SEVERE, null, e);
            return precio;
        }
    }
}
