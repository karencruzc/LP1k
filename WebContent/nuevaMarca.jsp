<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registrar Nueva Marca</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha3841BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">>
</head>
<body>

<div class="container mt-5">
<div class="row">
	<!-- Formulario -->
    <div class="col-lg-6 mx-auto">
        <h3 class="text-center">Registrar Nueva Marca</h3>

        <form action="SubjectServlet" method="post">
        
            <div class="form-group mt-2">
                <label for="txtCode">IdMarca</label>
                <input class="form-control" type="text" id="txtCode" name="txtCode" required>
            </div>

            <div class="form-group mt-2">
                <label for="txtDescripcion">Descripcion</label>
                <input class="form-control" type="text" id="txtDescripcion" name="txtDescripcion" required>
            </div>

            <div class="form-group campo mt-4">
                <label for="txtEstado">Estado</label>
               <select name="" id="txtEstado">
                <option value="">--Seleccione--</option>
                <option value="">Baja</option>
                <option value="">Alta</option>
                </select>
            </div>

           
            <div class="text-center">
                <button type="submit" class="btn btn-primary mt-2">Guardar</button>
            </div>
            <div class="button-group">
			<a href="presentacion.jsp">Volver</a>
		   </div>         
            
        </form>
        </div>        
        
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
