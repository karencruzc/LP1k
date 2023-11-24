<%@page import="com.ladyshoes.model.Brand"%>
<%@page import="com.ladyshoes.dao.BrandDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>

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
    <h3 class="text-center">Listado de Marcas</h3>
    <table class="table">
        <thead>
            <tr>
                <th>ID</th>            
                <th>Nombre</th>
                <th>Descripción</th>
                <th>Estado</th>
            </tr>
        </thead>
        <tbody>
            <!-- Itera sobre la lista de productos y muestra cada uno en una fila de la tabla -->
            <%
            	BrandDao dao = new BrandDao();
               List<Brand> listBrand = dao.getListBrand();     	
                for (Brand brand : listBrand) {
            %>
            <tr>                
                <td><%= brand.getId() %></td>
                <td><%= brand.getName() %></td>
                <td><%= brand.getDescription() %></td>
                <td><%= brand.getState() %></td>                                
            </tr>
            <%
                }
            %>
        </tbody>
    </table>
    <hr>
    <div class="button-group">
			<a href="marcas.jsp">Volver</a>
		</div>
</div>

<!-- Bootstrap JS, jQuery, and Popper.js -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
