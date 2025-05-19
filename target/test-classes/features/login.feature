Feature: Login en el sistema

  Escenario: Login exitoso con credenciales válidas
    Dado que el usuario está en la página de login
    Cuando ingresa el usuario "admin" y la contraseña "1234"
    Entonces accede al sistema y visualiza la página de inicio
