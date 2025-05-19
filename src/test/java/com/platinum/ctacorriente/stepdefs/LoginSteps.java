package com.platinum.ctacorriente.stepdefs;

import io.cucumber.java.en.*;
import org.openqa.selenium.*;
import org.openqa.selenium.chrome.ChromeDriver;
import static org.junit.Assert.*;

public class LoginSteps {

    WebDriver driver;

    @Given("que el usuario está en la página de login")
    public void usuario_en_login() {
        driver = new ChromeDriver();
        driver.get("http://localhost:8080/CtaCorriente/login.jsp");
    }

    @When("ingresa el usuario {string} y la contraseña {string}")
    public void ingresa_usuario_y_contraseña(String usuario, String clave) {
        driver.findElement(By.name("usuario")).sendKeys(usuario);
        driver.findElement(By.name("password")).sendKeys(clave);
        driver.findElement(By.cssSelector("input[type='submit']")).click();
    }

    @Then("accede al sistema y visualiza la página de inicio")
    public void accede_al_sistema() {
        assertTrue(driver.getPageSource().contains("Bienvenido"));
        driver.quit();
    }
}
