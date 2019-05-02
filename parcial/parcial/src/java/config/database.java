/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package config;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author E201
 */
public class database {
    private String USERNAME = "root";
    private String PASSWORD = "estudiante";
    private String HOST = "localhost";
    private String PORT = "3306";
    private String DATABASE = "parcial";
    private String CLASSNAME = "com.mysql.jdbc.Driver";
    private String URL = "jdbc:mysql://"+HOST+":"+PORT+"/"+DATABASE;
    private Connection con;
    
    public database() {
        try {
            Class.forName(CLASSNAME);
            con = DriverManager.getConnection(URL,USERNAME,PASSWORD);
        } catch (Exception e) {
            System.err.println("ERROR: "+ e);
        } 
    }    
    public Connection getConexion(){
        return con;
    }
}
