/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Nilvia S Miranda
 */
class Conexion {

    private String url;
    private String user;
    private String pass;
    private String driver;

    public Conexion() {
        this.url = "jdbc:oracle:thin:@localhost:1521:XE";
        this.user = "hostal";
        this.pass = "hostal";
        this.driver = "oracle.jdbc.driver.OracleDriver";
    }
    
    

    public Conexion(String url, String user, String pass, String driver) {
        this.url = "jdbc:oracle:thin:@localhost:1521:XE";
        this.user = "hostal";
        this.pass = "hostal";
        this.driver = "oracle.jdbc.driver.OracleDriver";
    }

  

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getDriver() {
        return driver;
    }

    public void setDriver(String driver) {
        this.driver = driver;
    }
    
    
}


  
    /*
    boolean estadoConexion = false;
    
        public Connection conectar(){
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con=DriverManager.getConnection(url, user, pass);
            
            
            boolean resultadoTestConnection = testConnection("select 1 from dual");
    
    if(resultadoTestConnection){
                estadoConexion = true;
                System.out.println(" Conexion valida.");
            }
            else{
                System.out.println(" Error Conexion no valida.");
                //return false;
            }
        

        } catch (SQLException e1) {
                e1.printStackTrace();
                String errorMsg = e1.getMessage();
                int errorCode = e1.getErrorCode();
                System.out.println("Fallo Estado de conexion, error SQL [" + errorMsg + "] [" + errorCode + "]");
                //return false;            
        } catch (Exception e) {
        }
        return con;
    }
    public boolean testConnection(String query) {
	    ResultSet rs = null;
	    Statement stmt = null;
	    try {
	      stmt = con.createStatement();
	      if (stmt == null) {
	        return false;
	      }

	      rs = stmt.executeQuery(query);
	      if (rs == null) {
	        return false;
	      }

	      if (rs.next()) {
	        return true;
	      }

	      return false;
	    } catch (Exception e) {
	      return false;
	    } finally {
	      try {
	        rs.close();
	        stmt.close();        
	      } catch (SQLException e) {
	        e.printStackTrace();
	      }
	    }
	  }

    String getDriver() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    */

