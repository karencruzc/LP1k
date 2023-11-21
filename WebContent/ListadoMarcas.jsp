<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="tu.paquete.Producto" %> <!-- Ajusta esto según tu estructura de paquetes -->

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Listado de Marcas</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
    <h3 class="text-center">Listado de Marcas</h3>
    <table class="table">
        <thead>
            <tr>
                <th>IdMarca</th>
                <th>Descripción</th>
                <th>Estado</th>
                                
            </tr>
        </thead>
        <tbody>
            <!-- Itera sobre la lista de productos y muestra cada uno en una fila de la tabla -->
            <%
                List<Empleado> listaProductos = obtenerListaEmpleados(); // Ajusta esta llamada según tu lógica de obtención de productos
                for (Empleado empleado : listaEmpleados) {
            %>
            <tr>
                <td><%= empleado.getIdMarca() %></td>
                <td><%= empleado.getDescripcion() %></td>
                <td><%= empleado.getEstado() %></td>
                                
            </tr>
            <%
                }
            %>
        </tbody>
    </table>
</div>

<!-- Bootstrap JS, jQuery, and Popper.js -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
