<?php 	

	include ($_SERVER["DOCUMENT_ROOT"].'/php_inculdes/datos.php');
	include ($_SERVER["DOCUMENT_ROOT"].'/php_inculdes/funciones.php');
	include ($_SERVER["DOCUMENT_ROOT"].'/config.php');
	$permisos = 0;

?>


<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Bienvenido al sistema</title>
	<link rel="stylesheet" href="/css/bootstrap.css">
	<link rel="stylesheet" href="/css/estilos.css">
</head>
<body>
	<div class="container">
		    <div class="row">
		            <div class="account-wall">

						<div class="top_menu">
							<ul class="nav nav-tabs" role="tablist">
							  <li class="active"><a href="#">Reporte diario</a></li>
							  <li><a href="inv.php">Inventario</a></li>
							  <li><a href="not.php">Notas</a></li>
							  <li><a href="ord.php">Ordenes</a></li>
							</ul>
						</div>

<?php mysqli_close($mysqli); ?>