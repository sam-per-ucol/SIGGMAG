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
							  <li><a href="rpd.php">Reporte diario</a></li>
							  <li class="active"><a href="#">Inventario</a></li>
							  <li><a href="not.php">Notas</a></li>
							  <li><a href="ord.php">Ordenes</a></li>
							</ul>
						</div>

			
		                <div id="cont_rpd">
							<div class="panel panel-default"> <!--Panel de inventario-->
							  <!-- Default panel contents -->
							  <div class="panel-heading">
									<ul class="nav nav-pills nav-justified">
									  <li ><a href="#tab_a" data-toggle="pill">Materiales</a></li>
									  <li class="active"><a href="#tab_b" data-toggle="pill">Estado Actual</a></li>
									  <li><a href="#tab_c" data-toggle="pill">Reporte de gastos</a></li>
									</ul>

							  </div>
							  <div class="panel-body">
								<div class="tab-content">
								        <div class="tab-pane " id="tab_a">
											<table class="table table-bordered table-striped t_inv">
											    <thead>
											        <tr>
											            <th>Letra</th>
											            <th>Nombe</th>
											            <th>Peso</th>
											            <th>Cant Actual</th>
											            <th>Cant Maxima</th>

											        </tr>
											    </thead>
											    <tbody>


													<?php 

														include ('php_inculdes/datos.php');
														include ('php_inculdes/funciones.php');

														$query = "SELECT * FROM inventario";
														$result = $mysqli->query($query) or die($mysqli->error.__LINE__);

														if($result->num_rows > 0) {
															while($row = $result->fetch_assoc()) {
																
																echo "<tr>
																	<td>".$row['letra_inv']."</td>
																	<td>".$row['material']."</td>
																	<td>".$row['peso']."</td>
																	<td>".$row['cant_actual']."</td>
																	<td>".$row['cant_max']."</td>
																 </tr>";
															}
														}
														else {
															echo 'No existen elementos dentro del inventario';	
														}
														

													?>

											    </tbody>
											</table>
								        </div>




								        <div class="tab-pane active" id="tab_b">
								            

											<table class="table  t_inv">
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

													// GOING THROUGH THE DATA
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





								        <div class="tab-pane" id="tab_c">
								             
		                		<table class="table table-bordered table-striped t_inv">
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
								        <tr>
								            <td>A</td>
								            <td>Couche</td>
								            <td>150</td>
								            <td>3500</td>
								            <td>950</td>
								            <td>4050</td>
								            <td>5000</td>
								        </tr>

								     	<tr>
								            <td>B</td>
								            <td>Opalina</td>
								            <td>150</td>
								            <td>2103</td>
								            <td>103</td>
								            <td>2000</td>
								            <td>5000</td>
								        </tr>
								        
								        <tr>
								            <td>C</td>
								            <td>Sulfatada</td>
								            <td>350</td>
								            <td>1009</td>
								            <td>203</td>
								            <td>805</td>
								            <td>5000</td>
								        </tr>

								    </tbody>
								</table>


								        </div>



								</div><!-- tab content -->
							  </div>
						</div>
						    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
						    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
						    <!-- Include all compiled plugins (below), or include individual files as needed
								http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.0-rc2/js/bootstrap.min.js
						     -->
						     <script src="js/bootstrap.min.js"> </script>




		                </div>
		            </div>
		    </div>
	</div>
</body>
</html>

<?php mysqli_close($mysqli); ?>