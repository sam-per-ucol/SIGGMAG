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
							  <li><a href="inv.php">Inventario</a></li>
							  <li ><a href="not.php">Notas</a></li>
							  <li class="active"><a href="#">Ordenes</a></li>
							</ul>
						</div>

			
		                <div id="cont_rpd">
							<div class="panel panel-default"> <!--Panel de inventario-->
							  <!-- Default panel contents -->
							  <div class="panel-heading">
									Notas menu

							  </div>
							  <div class="panel-body">
								<div class="tab-content">
								        
								        <div class="tab-pane active" id="tab_c">
								             
									<?php
										$flow ='Escuox ';

										echo "Le cuacuacua $flow ";


									?>
								<table class="table table-bordered table-striped t_caja">
								    <thead>
								        <tr>
								            <th>Folio</th>
								            <th>Fecha</th>
								            <th>Fecha entrega</th>
								            <th>Atendio</th>
								            <th></th>
								        </tr>
								    </thead>
								    <tbody>
								        <tr>
								            <td>602</td>
								            <td>24/07/2014</td>
								            <td>28/07/2014</td>
								            <td>Alejandra</td>
								            <td>
									           <button type="button" class="btn btn-info  " id="" data-toggle="modal" data-target="#myModal">
													Ver Orden
												</button>
								        	</td>
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



<!-- Esta es la ventana modal de las ordenes, aqui se pueden hacer operaciones de edicion de ordenes de trabajo -->


<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title" id="myModalLabel">Orden: 00000</h4>
      </div>
      <div class="modal-body">
				                
		                	
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
        <button type="button" class="btn btn-primary" name="peticion_new_cuenta" >Agregar</button>
      </div>
    </div>
  </div>
</div>
</body>
</html>