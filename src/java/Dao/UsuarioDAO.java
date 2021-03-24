package Dao;

import Modelo.Queries;
import Modelo.Database;
import Modelo.Usuario;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class UsuarioDAO {

    Database db = new Database();
    String sql = "";
    Connection con;
    PreparedStatement pst;
    ResultSet rs;
    Queries queries = new Queries();

    public Usuario obtenerDatosUsuario(String nombre_usuario, String contasena) {
        Usuario usu = new Usuario();
        try {
            Class.forName(db.getDriver());
            con = DriverManager.getConnection(db.getUrl(), db.getUser(), db.getPass());
            //LLamado del procedimiento al estilo pl/sql
            sql = queries.getObtenerUsuario();
            pst = con.prepareStatement(sql);
            pst.setString(1, nombre_usuario);
            pst.setString(2, contasena);
            rs = pst.executeQuery();
            while (rs.next()) {
                usu.setId(rs.getInt(1));
                usu.setRazon_social(rs.getString(2));
                usu.setRut(rs.getString(3));
                usu.setNombre_usuario(rs.getString(4));
                usu.setContrasena(rs.getString(5));
                usu.setNombre_contacto(rs.getString(6));
                usu.setCorreo_electronico(rs.getString(7));
                usu.setTelefono(rs.getString(8));
                usu.setRol(rs.getInt(9));
            }
            con.close();
            rs.close();
        } catch (SQLException | ClassNotFoundException e) {
            Logger.getLogger(Acceso.class.getName()).log(Level.SEVERE, null, e);
        }
        return usu;
    }
}
