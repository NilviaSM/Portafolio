/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Modelo.Database;
import Modelo.Empleado;
import Modelo.Queries;
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
public class EmpleadoDAO {

    Database db = new Database();
    String sql = "";
    Connection con;
    PreparedStatement pst;
    ResultSet rs;
    Queries queries = new Queries();
    List<Empleado> lista = new ArrayList<>();

    public int insertarEmpleado(String nombre_usuario, String nombre, String telefono, String correo_electronico, String rut, String contrasena) {

        try {
            Class.forName(db.getDriver());
            con = DriverManager.getConnection(db.getUrl(), db.getUser(), db.getPass());
            CallableStatement cst = con.prepareCall("{call SP_INSERTAR_EMPLEADO(?,?,?,?,?,?)}");
            cst.setString(1, nombre_usuario);
            cst.setString(2, nombre);
            cst.setString(3, telefono);
            cst.setString(4, correo_electronico);
            cst.setString(5, rut);
            cst.setString(6, contrasena);

            int resultado = cst.executeUpdate();
            con.close();
            return resultado;
        } catch (SQLException | ClassNotFoundException e) {
            Logger.getLogger(Acceso.class.getName()).log(Level.SEVERE, null, e);
            return 0;
        }

    }

    public Empleado obtenerDatosEmpleado(int id_usuario) {
        Empleado emp = new Empleado();

        try {
            Class.forName(db.getDriver());
            con = DriverManager.getConnection(db.getUrl(), db.getUser(), db.getPass());
            pst = con.prepareStatement(sql);
            pst.setInt(1, id_usuario);
            rs = pst.executeQuery();
            while (rs.next()) {
                emp.setId_empleado(rs.getString(1));
                emp.setNombre_usuario(rs.getString(2));
                emp.setNombre(rs.getString(3));

            }
            con.close();
            rs.close();
            return emp;
        } catch (SQLException | ClassNotFoundException e) {
            Logger.getLogger(Acceso.class.getName()).log(Level.SEVERE, null, e);
            return emp;
        }
    }

    public List obtenerEmpleado() {
        List<Empleado> listaEmpleado = new ArrayList<>();

        try {
            Class.forName(db.getDriver());
            con = DriverManager.getConnection(db.getUrl(), db.getUser(), db.getPass());
            CallableStatement cst = con.prepareCall("{call SP_LISTAR_EMPLEADOS(?)}");
            cst.registerOutParameter(1, OracleTypes.CURSOR);
            cst.execute();
            rs = (ResultSet) cst.getObject(1);

            while (rs.next()) {
                Empleado emp = new Empleado();
 
              emp.setNombre(rs.getString("NOMBRE"));
                emp.setRut(rs.getString("RUT"));
                emp.setUserName(rs.getString("NOMBRE USUARIO"));
                 emp.setNombre_contacto(rs.getString("NOMBRE CONTACTO"));
                 emp.setCorreo_electronico(rs.getString("CORREO ELECTRONICO"));
                    emp.setTelefono(rs.getString("TELEFONO"));
                 

                listaEmpleado.add(emp);
            }
            con.close();
            rs.close();
        } catch (SQLException | ClassNotFoundException e) {
            Logger.getLogger(Acceso.class.getName()).log(Level.SEVERE, null, e);
        }
        return listaEmpleado;
    }

      public int eliminarEmpleado(int id_empleado) {

        try {
            Class.forName(db.getDriver());
            con = DriverManager.getConnection(db.getUrl(), db.getUser(), db.getPass());
            CallableStatement cst = con.prepareCall("{call SP_ELIMINAR_EMPLEADO(?)}");
            cst.setInt(1, id_empleado);            
            
            int res = cst.executeUpdate();            
            con.close();
            return res;
        } catch (SQLException | ClassNotFoundException e) {
            Logger.getLogger(Acceso.class.getName()).log(Level.SEVERE, null, e);
            return 0;
        }
    }
}
