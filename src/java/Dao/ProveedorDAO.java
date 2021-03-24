/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Modelo.Database;
import Modelo.Proveedor;
import Modelo.Queries;
import Modelo.Usuario;
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

/**
 *
 * @author Nilvia S Miranda
 */
public class ProveedorDAO {

    Database db = new Database();
    String sql = "";
    Connection con;
    PreparedStatement pst;
    ResultSet rs;
    Queries queries = new Queries();
    List<Proveedor> lista = new ArrayList<>();

    public int insertarProveedor2(String razon_social, String rubro, String num_rut, String nombre_usuario, String contrasena, String correo, String telefono, String nom_contacto) {

        try {
            Class.forName(db.getDriver());
            con = DriverManager.getConnection(db.getUrl(), db.getUser(), db.getPass());
            CallableStatement cst = con.prepareCall("{call SP_INSERTAR_PROVEEDOR(?,?,?,?,?,?,?,?)}");
            cst.setString(1, razon_social);
            cst.setString(2, num_rut);
            cst.setString(3, nombre_usuario);
            cst.setString(4, contrasena);
            cst.setString(5, nom_contacto);
            cst.setString(6, correo);
            cst.setString(7, telefono);
            cst.setString(8, rubro);
            int resultado = cst.executeUpdate();
            con.close();
            return resultado;
        } catch (SQLException | ClassNotFoundException e) {
            Logger.getLogger(Acceso.class.getName()).log(Level.SEVERE, null, e);
            return 0;
        }
    }

    public Proveedor obtenerDatosProveedor(int id_usuario) {
        Proveedor pro = new Proveedor();

        try {
            Class.forName(db.getDriver());
            con = DriverManager.getConnection(db.getUrl(), db.getUser(), db.getPass());
            pst = con.prepareStatement(sql);
            pst.setInt(1, id_usuario);
            rs = pst.executeQuery();
            while (rs.next()) {
                pro.setId(rs.getString(1));
                pro.setRubro(rs.getString(2));
                pro.setNombre(rs.getString(3));

            }
            con.close();
            rs.close();
            return pro;
        } catch (SQLException | ClassNotFoundException e) {
            Logger.getLogger(Acceso.class.getName()).log(Level.SEVERE, null, e);
            return pro;
        }
    }

    public List obtenerProveedor() {
        List<Proveedor> listaProveedor = new ArrayList<>();

        try {
            Class.forName(db.getDriver());
            con = DriverManager.getConnection(db.getUrl(), db.getUser(), db.getPass());
            CallableStatement cst = con.prepareCall("{call SP_LISTAR_PROVEEDORES(?)}");
            cst.registerOutParameter(1, OracleTypes.CURSOR);
            cst.execute();
            rs = (ResultSet) cst.getObject(1);

            while (rs.next()) {
                Proveedor pro = new Proveedor();

                pro.setId(rs.getString("ID PROVEEDOR"));
                pro.setUserName(rs.getString("ID USUARIO"));
                pro.setNombre(rs.getString("NOMBRE"));
                pro.setRut(rs.getString("RUT"));
                pro.setUserName(rs.getString("NOMBRE USUARIO"));
                pro.setNombre_contacto(rs.getString("NOMBRE CONTACTO"));
                pro.setEmail(rs.getString("CORREO ELECTRONICO"));
                pro.setTelefono(rs.getString("TELEFONO"));
                pro.setRubro(rs.getString("RUBRO"));
                
           
                listaProveedor.add(pro);
            }
            con.close();
            rs.close();
        } catch (SQLException | ClassNotFoundException e) {
            Logger.getLogger(Acceso.class.getName()).log(Level.SEVERE, null, e);
        }
        return listaProveedor;
    }

}
