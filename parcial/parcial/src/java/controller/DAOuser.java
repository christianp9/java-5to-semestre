/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import config.database;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author E201
 */
public class DAOuser {
    database con = new database();
    public boolean registrarUsuario( String nombre, String apellido, String email,
                          String lenguaje, String hobby){
    Connection conn;
    PreparedStatement pst = null;
    ResultSet rs = null;
    String query = "insert into desarrollo (nombre, apellido, email, lenguaje, hobby) values(?,?,?,?,?)";
    try {
        pst = con.getConexion().prepareStatement(query);
        pst.setString(1, nombre);
        pst.setString(2, apellido);
        pst.setString(3, email);
        pst.setString(4, lenguaje);
        pst.setString(5, hobby);

        if(pst.executeUpdate() == 1){
            return true;
        }
        System.out.println(nombre+apellido+email+lenguaje+hobby);
    } catch (Exception e) {
        System.out.println("ERROR: "+e);
    }finally{
            try {
                if(con.getConexion() != null) con.getConexion().close();
                if(pst != null) pst.close();
                if(rs != null) rs.close();
            } catch (SQLException e) {
            System.err.println("ERROR:"+e);
            }
        }
    return false;
   }
}
