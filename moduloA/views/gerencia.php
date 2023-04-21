<?php
require("../moduloA/models/institucion.model.php");

$institucion = new Institucion();
$fila = $institucion->MostrarInstitucion();
?>

	<form action="controllers/gerencia.controller.php" method="POST" role="form">
			<legend>Registro de Nueva Gerencia</legend>

			<div class="form-group">
				<label for="">Nombre Institucion:</label>
				<input type="text" name="txtidinstitucion" value="<?php echo $fila['id']; ?>" required>
				<label for=""><?php echo $fila['nombre_inst'];?></label> <br>
				<label>Direccion: <?php echo $fila['direccion'];?></label> <br>
				<label>Telefono: <?php echo $fila['telefono'];?></label> <br>
				<label>Email: <?php echo $fila['email'];?></label> <br>
			</div>
			<br>
			<div class="form-group">
				<label for="">Nombre Gerencia:</label>
				<input type="text" class="form-control" required id="txtgerencia" name="txtgerencia" placeholder="Gerencia">
			</div>

			<button type="submit" class="btn btn-primary">Guardar</button>


