<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Document</title>	
	<!-- Latest compiled and minified CSS & JS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
	<script src="//code.jquery.com/jquery.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
</head>
<body>
	<CENTER><h1>personal</h1></CENTER
>		<form action="controllers/ad_personal.controller.php" method="POST" role="form">
			<legend>Completa el formulario</legend>
		
			<div class="form-group">
				<label for="">profesion</label>
				<input type="text" class="form-control" id="" name="profesion" placeholder="profesion">
			</div>
			<div class="form-group">
				<label for="">tiempo de servicio:</label>
				<input type="text" class="form-control" id="" name="tiempo_servicio" placeholder="tiempos_servicio">
			</div>
			<div class="form-group">
				<label for="">condicion:</label>
				<input type="text" class="form-control" id="" name="condicion" placeholder="condicion">
			</div>
			<div class="form-group">
				<label for="">seguro social:</label>
				<input type="text" class="form-control" id="" name="seguro_social" placeholder="seguro_social">
			</div>
			<div class="form-oto for=">Grupo sanguineo:</label>
				<input type="text" class="form-control" id="" name="grupo_sanguineo" placeholder="grupo_sanguineo">
			</div>
			
			<div class="form-group">
				<label for="">fecha de ingreso:</label>
				<input type="date" class="form-control" id="" name="f_ingreso" placeholder="fecha_ingreso">
			</div>
			<div class="form-group">
				<label for="">fecha de deceso:</label>
				<input type="date" class="form-control" id="" name="f_deceso" placeholder="fecha_deceso">
			</div>
				
			<button type="submit" class="btn btn-primary">enviar</button>
          	
		</form>
</body>
</html>