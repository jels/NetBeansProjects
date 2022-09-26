/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author PC-EDICION
 */
public class conexionMySql {

    private final String baseDatos = "sisasistencia";
    private final String user = "root";
    private final String pass = "majo.te.amo";
    private final String host = "localhost";
    private final String port = "3306";
    private final String servidor = "jdbc:mysql://" + host + ":" + port + "/" + baseDatos;

    public Connection conectar() {

        Connection cn = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            cn = DriverManager.getConnection(servidor, user, pass);
        } catch (Exception e) {
            System.out.println("Error en la conexion con el servidor MySql " + e);
        }
        return cn;
    }

}
