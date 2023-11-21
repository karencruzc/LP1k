<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Marcas - SISTEMA DE VENTAS - LADY'S SHOES</title>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-color: #f4f4f4;
	height: 80vh;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
}

header {
	background-color: #db76ef;
	color: #fff;
	text-align: center;
	padding: 10px;
	width: 80%;
	font-size: 20px;
}

nav {
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
	align-items: center;
	background-color: #f4f4f4;
	padding: 10px;
	width: 80%;
	box-sizing: border-box;
	margin-top: 20px;
}

.button-group {
	display: flex;
	justify-content: center;
	width: 100%;
	margin-bottom: 20px;
	height: 33%;
}

nav a {
	color: #db76ef;
	text-decoration: none;
	margin: 10px;
	padding: 10px;
	border-radius: 5px;
	transition: background-color 0.3s;
	width: 30%;
	display: flex;
	align-items: center;
	justify-content: center;
	text-align: center;
	font-size: 20px;
}

nav a:hover {
	background-color: #db76ef;
	color: #f4f4f4;
}
</style>
</head>
<body>

	<header>
		<h1>Marcas - LADY'S SHOES</h1>
	</header>

	<nav>
		<div class="button-group">
			<a href="nuevaMarca.jsp">Ingresar Nueva Marca</a>
		</div>
		<div class="button-group">
			<a href="ListadoMarcas.jsp">Listado de Marcas</a>
		</div>

		<div class="button-group">
			<a href="presentacion.jsp">Volver</a>
		</div>
	</nav>

</body>
</html>
</head>
