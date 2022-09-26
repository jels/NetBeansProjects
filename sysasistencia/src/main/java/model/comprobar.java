/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author PC-EDICION
 */
public class comprobar {

    public static void main(String[] args) {
        conexionMySql con = new conexionMySql();
        if (con.conectar() != null) {
            System.out.println("Conexion Exitosa");
        } else {
            System.out.println("Error al conectar");
        }
    }

}
