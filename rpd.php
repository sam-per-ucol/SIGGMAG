<?php 	include ('php_inculdes/datos.php');
	include ('php_inculdes/funciones.php'); ?>


<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Bienvenido al sistema</title>
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/estilos.css">
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

			
		                <div id="cont_rpd">
							
		                	<div class="panel panel-default">	<!--Panel de reporte de caja-->
							  <!-- Default panel contents -->
							  <div class="panel-heading">Reporte de la Caja</div>
							  <div class="panel-body">
							    
								<table class="table table-bordered table-striped t_caja"> <!--Tabla de la caja-->
								    <thead>
								        <tr>
								            <th>Tipo</th>
								            <th>Folio</th>
								            <th>Entrada</th>
								        </tr>
								    </thead>
								    <tbody>
								        <tr>
								            <td>Nota</td>
								            <td>8002</td>
								            <td>20</td>
								        </tr>
								        <tr>
								            <td>Nota</td>
								            <td>8003</td>
								            <td>240</td>
								        </tr>
								        <tr>
								            <td>Orden</td>
								            <td>608</td>
								            <td>300</td>
								        </tr>
								        <tr>
								            <td></td>
								            <td>Total en caja:</td>
								            <td>530</td>
								        </tr>
								    </tbody>
								</table>	   

							  </div>
							</div>






							<div class="panel panel-default"> <!--Panel de inventario-->
							  <!-- Default panel contents -->
							  <div class="panel-heading">Reporte del Inventario</div>
							  <div class="panel-body">
							    
							    <p>Este es un reporte de gastos del inventario</p>
		                		<table class="table table-bordered table-striped t_inv"> <!--Tabla de gastos de inventario-->
								    <thead>
								        <tr>
								            <th>Letra</th>
								            <th>Nombe</th>
								            <th>Peso</th>
								            <th>Cant Inicial</th>
								            <th>Cant Gastada</th>
								            <th>Cant Actual</th>
								            <th>Cant Maxima</th>

								        </tr>
								    </thead>
								    <tbody>

													<?php 



														$query = "SELECT * FROM inventario";
														$result = $mysqli->query($query) or die($mysqli->error.__LINE__);

														if($result->num_rows > 0) {
															while($row = $result->fetch_assoc()) {
																
																echo "<tr>
																	<td>".$row['letra_inv']."</td>
																	<td>".$row['material']."</td>
																	<td>".$row['peso']."</td>
																	<td>Desconocido</td>
																	<td>Desconocido</td>
																	<td>".$row['cant_actual']."</td>
																	<td>".$row['cant_max']."</td>
																 </tr>";
															}
														}
														else {
															echo 'NO RESULTS';	
														}
														

													?>

								    </tbody>
								</table>



								<table class="table  t_inv"> <!--Tabla de porcentajes de inventario-->
									    <thead>
									        <tr>
									            <th>Letra</th>
									            <th>Nombe</th>
									            <th>Peso</th>
									            <th>Porcentaje</th>

									        </tr>
									    </thead>
									    <tbody>
									        
									        <?php 
												$query = "SELECT * FROM inventario";
												$result = $mysqli->query($query) or die($mysqli->error.__LINE__);


												if($result->num_rows > 0) {
													while($row = $result->fetch_assoc()) {

														$x=$row['cant_actual'];
														$y=$row['cant_max'];
														$porcent = porcentage($x,$y);
														echo '
														<tr>
															<td>'.$row['letra_inv'].'</td>
												            <td>'.$row['material'].'</td>
												            <td>'.$row['peso'].'</td>
												            <td>
												            	<div class="cant_percent"><p><b>'.$row['cant_actual'].'/'.$row['cant_max'].'</b></p></div>
													            	<div class="progress percenbars">
																	  <div class="'.css_status_color($porcent).'"  role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: '.porcentage($x,$y).'%">
																		    <span class="sr-only">45% Complete</span>
																	  </div>
																	</div>
													        </td>
													    </tr>';
														
														
													}
												}
												else {
													echo 'NO RESULTS';	
												}
									         ?>
									    </tbody>
									</table>


							  </div>
							</div>




		                </div>


		            </div>
		    </div>
	</div>
</body>
</html>
<?php mysqli_close($mysqli); ?>