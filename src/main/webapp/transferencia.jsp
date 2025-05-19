<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Transferencia - Banco Platinum</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f9f9f9;
            padding: 40px;
        }
        h2 {
            color: #003366;
        }
        form {
            width: 400px;
            margin: auto;
            background: white;
            padding: 25px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            border-radius: 8px;
        }
        label, input, select {
            display: block;
            width: 100%;
            margin-top: 10px;
        }
        input, select {
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        button {
            margin-top: 20px;
            padding: 10px;
            background: #003366;
            color: white;
            border: none;
            border-radius: 5px;
            width: 100%;
        }
        button:hover {
            background: #005599;
        }
    </style>
</head>
<body>
    <h2>Registrar Transferencia</h2>
    <form action="TransferenciaServlet" method="post">
        <label for="rutCliente">RUT Cliente Origen:</label>
        <input type="text" name="rutCliente" required>

        <label for="idCuenta">ID Cuenta Origen:</label>
        <input type="number" name="idCuenta" required>

        <label for="rutDueno">RUT Cliente Destinatario:</label>
        <input type="text" name="rutDueno" required>

        <label for="monto">Monto a transferir:</label>
        <input type="number" name="monto" step="0.01" required>

        <label for="cuentaTransferencia">Cuenta Destino:</label>
        <input type="text" name="cuentaTransferencia" required>

        <label for="tipoCuenta">Tipo de Cuenta Destino:</label>
        <select name="tipoCuenta" required>
            <option value="Corriente">Corriente</option>
            <option value="Vista">Vista</option>
            <option value="Ahorro">Ahorro</option>
        </select>

        <button type="submit">Registrar Transferencia</button>
    </form>
</body>
</html>

