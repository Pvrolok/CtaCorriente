package com.platinum.ctacorriente.test;

import static org.junit.Assert.*;
import org.junit.Test;
import java.sql.Connection;
import com.platinum.ctacorriente.util.ConexionBD;

public class ConexionBDTest {

  @Test
  public void testConexionExitosa() {
    try {
      Connection conn = ConexionBD.getConnection();
      assertNotNull("La conexión no debe ser null", conn);
    } catch (Exception e) {
      fail("No se pudo conectar a la BD: " + e.getMessage());
    }
  }
}
