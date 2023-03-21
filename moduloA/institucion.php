<?php

?>
	<div class="container">
		
			<h1>INSTITUCION</h1>
			<form action="controllers/institucion.controller.php" method="POST" role="form">
				<legend>Completa el formulario</legend>
			
				<div class="form-group">
					<label for="">Nombre institucion</label>
					<input type="text" class="form-control" id="" name="nom_institucion" placeholder="Nombre de la institucion">
				</div>
				<div class="form-group">
					<label for="">Direccion:</label>
					<input type="text" class="form-control" id="" name="direccion" placeholder="direccion">
				</div>
				
				<div class="form-group">
					<label for="">telefono:</label>
					<input type="text" class="form-control" id="" name="telefono" placeholder="telefono">
				</div>
				<div class="form-group">
					<label for="">RUC:</label>
					<input type="text" class="form-control" id="" name="RUC" placeholder="RUC">
				</div>
				<div class="form-group">
					<label for="">Email:</label>
					<input type="email" class="form-control" id="" name="Email" placeholder="Email">
				</div>
				<div class="form-group">
					<label for="">Pagina web:</label>
					<input type="text" class="form-control" id="" name="Pagina_web" placeholder="Pagina web">
				</div>
				<div class="form-group">
					<label for="">Fecha de creacion de la institucion:</label>
					<input type="date" class="form-control" id="" name="f_creacion_institucion" placeholder="Fecha de creacion de la institucion">
				</div>

				<div class="form-group">
					<label for="">Documento de creacion:</label>
					<input type="text" class="form-control" id="" name="N_resolucion" placeholder="Numero de resolucion">
				</div>
				
				
				<button type="submit" class="btn btn-primary">Guardar</button>
			
			</form>
		
	</div>