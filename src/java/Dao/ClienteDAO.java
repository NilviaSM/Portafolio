package Dao;

import Modelo.Queries;
import Modelo.Database;
import Modelo.Cliente;
import Modelo.Factura;
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
import oracle.jdbc.OracleTypes;

public class ClienteDAO {

    Database db = new Database();
    String sql = "";
    Connection con;
    PreparedStatement pst;
    ResultSet rs;
    Queries queries = new Queries();
    List<Huesped> lista = new ArrayList<>();

    public int insertarCliente(String nombre_empresa_cliente, String rut_empresa_cliente, String nombre_usuario, String contrasena, String nom_contacto, String correo, String telefono, String rut_rep_legal, String direccion) {
        
        try {
            Class.forName(db.getDriver());
            con = DriverManager.getConnection(db.getUrl(), db.getUser(), db.getPass());
            CallableStatement cst = con.prepareCall("{call SP_INSERTAR_CLIENTE(?,?,?,?,?,?,?,?,?)}");
            cst.setString(1, nombre_empresa_cliente);
            cst.setString(2, rut_empresa_cliente);
            cst.setString(3, nombre_usuario);
            cst.setString(4, contrasena);
            cst.setString(5, nom_contacto);
            cst.setString(6, correo);
            cst.setString(7, telefono);
            cst.setString(8, rut_rep_legal);
            cst.setString(9, direccion);
            int resultado = cst.executeUpdate();          
            con.close();
            return resultado;
        } catch (SQLException | ClassNotFoundException e) {
            Logger.getLogger(Acceso.class.getName()).log(Level.SEVERE, null, e);
            return 0;
        }
    }

    public Cliente obtenerDatosCliente(int id_usuario) {
        Cliente cli = new Cliente();
        try {
            Class.forName(db.getDriver());
            con = DriverManager.getConnection(db.getUrl(), db.getUser(), db.getPass());
            sql = queries.getObtenerClienteCompleto();
            pst = con.prepareStatement(sql);
            pst.setInt(1, id_usuario);
            rs = pst.executeQuery();
            while (rs.next()) {
                cli.setId(rs.getInt(1));
                cli.setRut_rep_legal(rs.getString(2));
                cli.setDireccion(rs.getString(3));
            }
            con.close();
            rs.close();
            return cli;
        } catch (SQLException | ClassNotFoundException e) {
            Logger.getLogger(Acceso.class.getName()).log(Level.SEVERE, null, e);
            return cli;
        }
    }
    
    public List obtenerClientes() {
        List<Cliente> listaCliente = new ArrayList<>();
        try {
            Class.forName(db.getDriver());
            con = DriverManager.getConnection(db.getUrl(), db.getUser(), db.getPass());
            CallableStatement cst = con.prepareCall("{call SP_LISTAR_CLIENTES(?)}");     
            cst.registerOutParameter(1, OracleTypes.CURSOR);
            cst.execute();
            rs = (ResultSet) cst.getObject(1);

            while (rs.next()) {
                Cliente cli = new Cliente();
                cli.setId(rs.getInt("ID USUARIO"));
                cli.setNombre(rs.getString("NOMBRE"));
                cli.setRut_rep_legal(rs.getString("RUT"));
                cli.setNombre_empresa(rs.getString("NOMBRE USUARIO"));
                cli.setNombre_representante_legal(rs.getString("NOMBRE CONTACTO"));
                cli.setCorreo_electronico(rs.getString("CORREO ELECTRONICO"));
                cli.setTelefono(rs.getInt("TELEFONO"));
                cli.setDireccion(rs.getString("DIRECCION"));
                listaCliente.add(cli);
            }
            con.close();
            rs.close();
        } catch (SQLException | ClassNotFoundException e) {
            Logger.getLogger(Acceso.class.getName()).log(Level.SEVERE, null, e);
        }
        return listaCliente;
    }
    
     public int eliminarCliente(int id_cliente) {

        try {
            Class.forName(db.getDriver());
            con = DriverManager.getConnection(db.getUrl(), db.getUser(), db.getPass());
            CallableStatement cst = con.prepareCall("{call SP_ELIMINAR_CLIENTE(?)}");
            cst.setInt(1, id_cliente);            
            
            int res = cst.executeUpdate();            
            con.close();
            return res;
        } catch (SQLException | ClassNotFoundException e) {
            Logger.getLogger(Acceso.class.getName()).log(Level.SEVERE, null, e);
            return 0;
        }
    }
    
}
