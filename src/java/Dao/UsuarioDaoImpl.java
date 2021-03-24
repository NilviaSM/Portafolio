/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Modelo.ConexionDB;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Nilvia S Miranda
 */
public class UsuarioDaoImpl {

    //private static final String LOGIN = "SELECT nivel FROM Prueba WHERE username LIKE ? AND contrasena like ?";
   private static final String LOGIN = "SELECT U_ROL_ID FROM Usuario WHERE U_CORREO_ELECTRONICO LIKE ? AND U_CONTRASENA like ?";

    public int validarLogin(String username, String password) {
        int nivel = 0;
        try {
            PreparedStatement ps = ConexionDB.getConnection().prepareCall(LOGIN);
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                nivel = rs.getInt(1);
            }
            rs.close();
            ps.close();
        } catch (SQLException ex) {
            System.out.println("eror al consultar login " + ex);
        } finally {
            ConexionDB.closed();
        }
        return nivel;
    }
}
