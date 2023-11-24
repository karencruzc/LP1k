<%@page import="com.ladyshoes.model.Empleado"%>
<%@page import="com.ladyshoes.dao.EmpleadoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Listado de Empleados</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
    <h3 class="text-center">Listado de Empleados</h3>
    <table class="table">
        <thead>
            <tr>
                <th>IdEmpleado</th>
                <th>Nombres</th>
                <th>Apellidos</th>               
                <th>Sexo</th>
                <th>Dirección</th>
                <th>Email</th>
                 <th>Edad</th>
                 <th>Horas</th>
                <th>Sueldo</th>           
                
            </tr>
        </thead>
        <tbody>
            <!-- Itera sobre la lista de productos y muestra cada uno en una fila de la tabla -->
            <%
            EmpleadoDao dao = new EmpleadoDao();
            List<Empleado> listEmpleado = dao.getListEmpleado();     	
             for (Empleado empleado : listEmpleado) {
            %>
            <tr>
                <td><%= empleado.getIdEmpleado() %></td>
                <td><%= empleado.getNombres() %></td>
                <td><%= empleado.getApellidos() %></td>                
                <td><%= empleado.getSexo() %></td>
                <td><%= empleado.getDireccion() %></td>
                <td><%= empleado.getEmail() %></td>
                <td><%= empleado.getEdad() %></td>               
                <td><%= empleado.getHoras() %></td>
                 <td><%= empleado.getSueldo() %></td>
                
            </tr>
            <%
                }
            %>
        </tbody>
    </table>
    <hr>
    <div class="button-group">
			<a href="empleados.jsp">Volver</a>
		</div>
</div>

<!-- Bootstrap JS, jQuery, and Popper.js -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
