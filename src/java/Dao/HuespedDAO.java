package Dao;

import Modelo.Queries;
import Modelo.Database;
import Modelo.Huesped;
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

public class HuespedDAO {

    Database db = new Database();
    String sql = "";
    Connection con;
    PreparedStatement pst;
    ResultSet rs;
    Queries queries = new Queries();
    List<Huesped> lista = new ArrayList<>();

    public List listaHuespedes(String nombre, String rut, String telefono) {

        Huesped huesped = new Huesped();
        huesped.setNombre(nombre);
        huesped.setRut(rut);
        huesped.setTelefono(telefono);
        lista.add(huesped);
        return lista;
    }

    public boolean insertarHuesped(String nombre, String rut, String telefono) {
        boolean accion = false;
        try {
            Class.forName(db.getDriver());
            con = DriverManager.getConnection(db.getUrl(), db.getUser(), db.getPass());
            CallableStatement cst = con.prepareCall("{CALL SP_INSERTAR_HUESPED(?,?,?)}");
            cst.setString(1, nombre);
            cst.setString(2, rut);
            cst.setString(3, telefono);
            accion = cst.execute();
            con.close();
        } catch (SQLException | ClassNotFoundException e) {
            Logger.getLogger(Acceso.class.getName()).log(Level.SEVERE, null, e);
        }
        return accion;
    }
}
