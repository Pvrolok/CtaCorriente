<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Inicio - Banco Platinum</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #eef2f3;
            padding: 40px;
        }
        h1 {
            color: #003366;
        }
        .opciones {
            margin-top: 30px;
        }
        .opciones a {
            display: inline-block;
            padding: 12px 20px;
            margin: 10px;
            background-color: #003366;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
        .opciones a:hover {
            background-color: #005599;
        }
    </style>
</head>
<body>
    <h1>Bienvenido al sistema Banco Platinum</h1>
    <p>Seleccione una opción:</p>
    <div class="opciones">
        <a href="transferencia.jsp">Realizar Transferencia</a>
        <a href="logout.jsp">Cerrar sesión</a>
    </div>
</body>
</html>
