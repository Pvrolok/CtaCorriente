package com.platinum.ctacorriente.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConexionBD {
  public static Connection getConnection() throws Exception {
    String url = "jdbc:mysql://localhost:3306/Cuentas_clientes";
    String user = "root";
    String pass = "admin";
    Class.forName("com.mysql.cj.jdbc.Driver");
    return DriverManager.getConnection(url, user, pass);
  }
}