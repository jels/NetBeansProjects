/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author PC-EDICION
 */
public class DAOUSUARIO extends conexionMySql {

    public usuario identificar(usuario user) throws Exception {
        usuario us = null;
        conexionMySql con;
        Connection cn = null;
        Statement st = null;
        ResultSet rs = null;
        System.out.println("esta en la consulta...");
        String sql = "SELECT u.idUsuario, u.cargoUsuario FROM usuario u "
                + "WHERE u.estadoUsuario = 1 "
                + "AND u.nombreUsuario='" + user.getNombreUsuario() + "' "
                + "AND u.passUsuario='" + user.getPassUsuario() + "'";
        con = new conexionMySql();
        try {
            cn = con.conectar();
            st = cn.createStatement();
            rs = st.executeQuery(sql);
            if (rs.next() == true) {
                us = new usuario();
                us.setIdUsuario(rs.getInt("idUsuario"));
                us.setNombreUsuario(user.getNombreUsuario());
                us.setCargoUsuario(rs.getString("cargoUsuario"));
                us.setEstadoUsuario(1);
            }
        } catch (Exception e) {
            System.out.println("Error en obtener usuario" + e);
        } finally {
            if (rs != null && rs.isClosed() == false) {
                rs.close();
            }
            rs = null;
            if (st != null && st.isClosed() == false) {
                st.close();
            }
            st = null;
            if (cn != null && cn.isClosed() == false) {
                cn.close();
            }
            cn = null;
        }
        return us;

    }

}
