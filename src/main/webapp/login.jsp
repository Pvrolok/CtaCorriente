<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login - Banco Platinum</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f7;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .login-container {
            background: white;
            padding: 30px;
            width: 350px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            border-radius: 10px;
        }

        h2 {
            text-align: center;
            color: #003366;
        }

        input[type=text], input[type=password] {
            width: 100%;
            padding: 10px;
            margin-top: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        input[type=submit] {
            width: 100%;
            background-color: #003366;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type=submit]:hover {
            background-color: #005599;
        }

        .error {
            color: red;
            text-align: center;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h2>Ingreso Ejecutivo</h2>

        <!-- Mostrar mensaje de error si existe -->
        <c:if test="${not empty error}">
            <p class="error">${error}</p>
        </c:if>

        <!-- Formulario de login -->
        <form action="login" method="post">
            <label for="usuario">Usuario:</label>
            <input type="text" id="usuario" name="usuario" required />

            <label for="password">Contraseña:</label>
            <input type="password" id="password" name="password" required />

            <input type="submit" value="Ingresar" />
        </form>
    </div>
</body>
</html>
