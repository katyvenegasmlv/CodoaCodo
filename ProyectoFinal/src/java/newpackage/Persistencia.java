/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;

import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.DriverManager;
import javax.swing.JOptionPane;

/**
 *
 * @author kvenegas3
 */
public class Persistencia {

    private Connection cn;
    private ResultSet rs;
    private PreparedStatement ps;
    private Statement s;
    private ResultSetMetaData rsm;

    public String servidor, basededatos, usuario, clave, ejecutar;

    public Connection conectarse() {

        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            servidor = "localhost:3306/";
            basededatos = "codoacodo";
            usuario = "root";
            clave = "";
            cn = DriverManager.getConnection("jdbc:mysql://" + servidor + basededatos, usuario, clave);
        } catch (Exception ex) {
            Logger.getLogger(Persistencia.class.getName()).log(Level.SEVERE, null, ex);           
        }
        return cn;
    }

    //********
    public ResultSet consultaSQL(String busqueda) {
        try {
            ps = conectarse().prepareStatement(busqueda);
            rs = ps.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(Persistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    public void insertarSQL(String busqueda) {
        try {
            ps = conectarse().prepareStatement(busqueda);
            ps.execute();
        } catch (SQLException ex) {
            Logger.getLogger(Persistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
