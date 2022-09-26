/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controllers;

import java.sql.*;

/**
 *
 * @author Elias
 */
public class ConexionMySql {

    Connection con;

    public ConexionMySql() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/registro", "root", "");
        } catch (ClassNotFoundException | SQLException e) {
            System.err.println("Error" + e);
        }
    }

    public Connection getConnection() {
        return con;
    }

}
