<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="tu.paquete.Producto" %> <!-- Ajusta esto según tu estructura de paquetes -->

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Listado de Productos</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
    <h3 class="text-center">Listado de Productos</h3>
    <table class="table">
        <thead>
            <tr>
                <th>ID</th>
                <th>Descripción</th>
                <th>Color</th>
                <th>Modelo</th>
                <th>Talla</th>
                <th>Marca</th>
                <th>Precio de Venta</th>
                <th>Stock</th>
                <th>Proveedor</th>
                <th>Imagen</th>
            </tr>
        </thead>
        <tbody>
            <!-- Itera sobre la lista de productos y muestra cada uno en una fila de la tabla -->
            <%
                List<Producto> listaProductos = obtenerListaProductos(); // Ajusta esta llamada según tu lógica de obtención de productos
                for (Producto producto : listaProductos) {
            %>
            <tr>
                <td><%= producto.getIdProducto() %></td>
                <td><%= producto.getDescripcion() %></td>
                <td><%= producto.getColor() %></td>
                <td><%= producto.getModelo() %></td>
                <td><%= producto.getTalla() %></td>
                <td><%= producto.getMarca() %></td>
                <td><%= producto.getPrecioVenta() %></td>
                <td><%= producto.getStock() %></td>
                <td><%= producto.getProveedor() %></td>
                <td><img src="<%= producto.getRutaImagen() %>" alt="Imagen de Producto" style="max-width: 100px; max-height: 100px;"></td>
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
