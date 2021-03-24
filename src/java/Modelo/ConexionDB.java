/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Nilvia S Miranda
 */
public class ConexionDB {
    
    private  static Connection con;
    
    private ConexionDB(){
        
    }
    
    public static Connection getConnection(){
        
        try {
            String url = "jdbc:oracle:thin:@localhost:1521:XE";
            String user = "hostal";
            String pass = "hostal";
            String driver = "oracle.jdbc.driver.OracleDriver";
            
            Class.forName(driver);
            
            con = DriverManager.getConnection(url,user, pass);
            
            if(con!=null){
                System.out.println("conectado");
            }            
        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println(ex);
        }
        return con;
    }


    public static void closed(){
        try {
            if(!con.isClosed()){
                con.close();
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }
}
