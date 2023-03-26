<?php
session_start();
require "../models/asistencia.model.php";
$asistencia = new Asistencia();

$data = $asistencia->DevolverPassword($_SESSION['personal']);

@$passwd = $_REQUEST['pass1'];
@$idpersonal = $_SESSION['personal'];
@$fecha = date('Y-m-d');
@$hora = date('H:i:s');
echo $tipo = $_REQUEST['tipo'];

if(empty($tipo)){
	echo "alert('NO marco ni entrada ni salida');";
}else{
	if($passwd == $data['psw_usu']){
		// Si las contraseñas son iguales
		$asistencia->GuardarAsistencia($idpersonal,$fecha,$hora,$tipo);
		echo "Asistencia guardada";

	}else{
		echo "contraseña Errada";
	}
}



?>