<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registrar Nueva Marca</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
<div class="row">
	<!-- Formulario -->
    <div class="col-lg-6 mx-auto">
        <h3 class="text-center">Registrar Nuevo Producto</h3>

        <form action="<%= request.getContextPath() %>/registerBrand" method="post">                 
			<div class="form-group">
                <label for="name">Nombre</label>
                <input class="form-control" type="text" name="name" required>
            </div>     
            <div class="form-group">
                <label for="description">Descripción</label>
                <input class="form-control" type="text" name="description" required>
            </div>            
            <div class="form-group">
                <label for="state">Estado</label>
                <input class="form-control" type="text" name="state" required>
            </div>

            <div class="text-center">
                <button type="submit" class="btn btn-primary">Guardar</button>
            </div>
        </form>
        </div>
        
        <!-- Imagen -->
        
        <!--<div class="col-lg-6 d-flex align-items-center">
            <div class="mx-auto">
          
                <div class="form-group">
                    <label for="txtImagen">Imagen del Calzado</label>
                    <input type="file" class="form-control" id="txtImagen" name="txtImagen" accept="image/*" onchange="previewImage(this);">
                </div>
                 <div id="imagenVistaPrevia" class="text-center" style="max-width: 100%; max-height: 500px; overflow: hidden;">
                    <img id="vistaPrevia" src="#" alt="Vista Previa de la Imagen" style="object-fit: cover; width: 400px; height: 500px;" />
                </div>
            </div>-->
        </div>
    </div>
    
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"></script>
<!-- <script>
    function previewImage(input) {
        var vistaPrevia = document.getElementById('vistaPrevia');
        var archivoInput = input.files[0];
        var lector = new FileReader();

        lector.onload = function (e) {
            vistaPrevia.src = e.target.result;
        };

        lector.readAsDataURL(archivoInput);
    }
</script>-->
</body>
</html>
