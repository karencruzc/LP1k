<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registrar Nuevo Empleado</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha3841BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">>
</head>
<body>

<div class="container mt-5">
<div class="row">
	<!-- Formulario -->
    <div class="col-lg-6 mx-auto">
        <h3 class="text-center">Registrar Nuevo Empleado</h3>

        <form action="<%=request.getContextPath() %>/registerEmpleado" method="post">
        
            <div class="form-group">
                <label for="txtNombres">Nombres</label>
                <input class="form-control" type="text" name="nombres" required>
            </div>

            <div class="form-group">
                <label for="txtApellidos">Apellidos</label>
                <input class="form-control" type="text" name="apellidos" required>
            </div>

            
            
            <div class="form-group mt-2">
            <label for="txtSexo">Sexo</label>
                <input class="form-control" type="text" name="sexo" required>
                             
            </div>
            
            
            <div class="form-group mt-2">
                <label for="txtDireccion">Dirección</label>
                <input class="form-control" type="text" name="direccion" required>
            </div>
            
            <div class="form-group">
                <label for="txtEmail">Email</label>
                <input class="form-control" type="text" name="email" required>
            </div>
            <div class="form-group">
                <label for="txtEdad">Edad</label>
                <input class="form-control" type="text" name="edad" required>
            </div>
            
            
            <div class="form-group">
                <label for="txtHoras">Horas</label>
                <input class="form-control" type="text" name="horas" required>
            </div>
            
            <div class="form-group">
                <label for="txtSueldo">Sueldo</label>
                <input class="form-control" type="text" name="sueldo" required>
            </div>

            <div class="text-center">
                <button type="submit" class="btn btn-primary">Guardar</button>
            </div>
            <div class="button-group">
			<a href="presentacion.jsp">Volver</a>
		</div>
        </form>
        </div>
        
        <!-- Imagen -->
        
        
    </div>
    
</div>

<!-- Bootstrap JS, jQuery, and Popper.js -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"></script>
<script>
    function previewImage(input) {
        var vistaPrevia = document.getElementById('vistaPrevia');
        var archivoInput = input.files[0];
        var lector = new FileReader();

        lector.onload = function (e) {
            vistaPrevia.src = e.target.result;
        };

        lector.readAsDataURL(archivoInput);
    }
</script>
</body>
</html>
