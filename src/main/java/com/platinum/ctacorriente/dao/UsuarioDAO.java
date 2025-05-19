package com.platinum.ctacorriente.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import com.platinum.ctacorriente.util.ConexionBD;

public class UsuarioDAO {

    public boolean validar(String usuario, String password) {
        boolean resultado = false;
        try (Connection con = ConexionBD.getConnection()) {
            String sql = "SELECT * FROM usuario WHERE nombreUsuario = ? AND password = ?";
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString(1, usuario);
            stmt.setString(2, password);
            ResultSet rs = stmt.executeQuery();
            resultado = rs.next(); // devuelve true si encontró coincidencia
        } catch (Exception e) {
            e.printStackTrace();
        }
        return resultado;
    }
}
