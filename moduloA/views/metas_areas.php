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
	<CENTER><h1>METAS AREAS</h1></CENTER>
		<form action="" method="POST" role="form">
			<legend>Registro de Metas Areas</legend>

			<div class="form-group">
				<label for="">Metas:</label>
				<select name="idmetas" id="" class="form-control">
					<option value="0" selected="selected">Select</option>}
					option
				</select>
			</div>
			<div class="form-group">
				<label for="">Areas:</label>
				<select name="idareas" id="" class="form-control">
					<option value="0" selected="selected">Select</option>}
					option
				</select>
			</div>
			<div class="form-group">
				<label for="">Fecha Reporte:</label>
				<input type="date" class="form-control" id="" name="fecha_reporte" placeholder="Fecha Reporte">
			</div>
			<div class="form-group">
				<label for="">Cantidad Avance:</label>
				<input type="text" class="form-control" id="" name="cantidad_avance" placeholder="Cantidad Avance">
			</div>
			<button type="submit" class="btn btn-primary">enviar</button>
		</form>
</body>
</html>