/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Modelo.Database;
import Modelo.Factura;
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
public class FacturaDAO {
  
    Database db = new Database();
    String sql = "";
    Connection con;
    PreparedStatement pst;
    ResultSet rs;
    Queries queries = new Queries();
    List<Factura> lista = new ArrayList<>();  
    
   public List obtenerFacturas(String n_rut) {
        List<Factura> listaFactura = new ArrayList<>();
        try {
            Class.forName(db.getDriver());
            con = DriverManager.getConnection(db.getUrl(), db.getUser(), db.getPass());
            CallableStatement cst = con.prepareCall("{call SP_LISTAR_FACTURAS_RUT(?, ?)}");     
            cst.setString(1, n_rut);
            cst.registerOutParameter(2, OracleTypes.CURSOR);
            cst.execute();
            rs = (ResultSet) cst.getObject(2);

            while (rs.next()) {
                Factura f = new Factura();
                f.setId(rs.getInt(1));
                f.setRazon_social(rs.getString(2));
                f.setRut_empresa(rs.getString(3));
                f.setDireccion(rs.getString(4));
                f.setFecha_creacion(rs.getString(5));
                f.setMonto_total(rs.getInt(6));
                f.setCantidad_huespedes(Integer.parseInt(rs.getString(7)));
                listaFactura.add(f);
            }
            con.close();
            rs.close();
        } catch (SQLException | ClassNotFoundException e) {
            Logger.getLogger(Acceso.class.getName()).log(Level.SEVERE, null, e);
        }
        return listaFactura;
    }
   
   public List obtenerFacturasT(String n_rut) {
        List<Factura> listaFacturaT = new ArrayList<>();
        try {
            Class.forName(db.getDriver());
            con = DriverManager.getConnection(db.getUrl(), db.getUser(), db.getPass());
            CallableStatement cst = con.prepareCall("{call SP_LISTAR_TOTAL_FACTURAS(?)}");             
            cst.registerOutParameter(1, OracleTypes.CURSOR);
            cst.execute();
            rs = (ResultSet) cst.getObject(2);

            while (rs.next()) {
                Factura ft = new Factura();
                ft.setId(rs.getInt(1));
                ft.setRazon_social(rs.getString(2));
                ft.setRut_empresa(rs.getString(3));
                ft.setDireccion(rs.getString(4));
                ft.setFecha_creacion(rs.getString(5));
                ft.setMonto_total(rs.getInt(6));         
                listaFacturaT.add(ft);
            }
            con.close();
            rs.close();
        } catch (SQLException | ClassNotFoundException e) {
            Logger.getLogger(Acceso.class.getName()).log(Level.SEVERE, null, e);
        }
        return listaFacturaT;
    }
}
