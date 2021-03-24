package Dao;

import Modelo.Queries;
import Modelo.Database;
import Modelo.Huesped;
import Modelo.Menu;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class MenuDAO {

    Database db = new Database();
    String sql = "";
    Connection con;
    PreparedStatement pst;
    ResultSet rs;
    Queries queries = new Queries();
    List<Huesped> lista = new ArrayList<>();

    public List obtenerMenu() {
        List<Menu> listaMenu = new ArrayList<>();
        try {
            Class.forName(db.getDriver());
            con = DriverManager.getConnection(db.getUrl(), db.getUser(), db.getPass());
            //LLamado del procedimiento al estilo pl/sql
            sql = "SELECT m_nombre,m_precio,m_descripcion FROM MENU";
            pst = con.prepareStatement(sql);
            rs = pst.executeQuery();
            while (rs.next()) {
                Menu menu = new Menu();
                menu.setNombre(rs.getString(1));
                menu.setPrecio(rs.getInt(2));
                menu.setDescripcion(rs.getString(3));
                listaMenu.add(menu);
            }
            con.close();
            rs.close();
        } catch (SQLException | ClassNotFoundException e) {
            Logger.getLogger(Acceso.class.getName()).log(Level.SEVERE, null, e);
        }
        return listaMenu;
    }

    public List obtenerMenuSeleccionado(String seleccion) {
        List<Menu> listaMenu = new ArrayList<>();
        try {
            Class.forName(db.getDriver());
            con = DriverManager.getConnection(db.getUrl(), db.getUser(), db.getPass());
            //LLamado del procedimiento al estilo pl/sql
            sql = "SELECT m_nombre,m_precio,m_descripcion FROM MENU WHERE M_ID = ?";
            pst = con.prepareStatement(sql);
            pst.setString(1, seleccion);
            rs = pst.executeQuery();
            while (rs.next()) {
                Menu menu = new Menu();
                menu.setNombre(rs.getString(1));
                menu.setPrecio(rs.getInt(2));
                menu.setDescripcion(rs.getString(3));
                listaMenu.add(menu);
            }
            con.close();
            rs.close();
        } catch (SQLException | ClassNotFoundException e) {
            Logger.getLogger(Acceso.class.getName()).log(Level.SEVERE, null, e);
        }
        return listaMenu;
    }
}
