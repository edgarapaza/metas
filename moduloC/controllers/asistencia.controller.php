<?php
session_start();
require "../models/asistencia.model.php";
$asistencia = new Asistencia();

$data = $asistencia->DevolverPassword($_SESSION['personal']);
echo $data['psw_usu'];
echo "<br>";
echo $passwd = $_REQUEST['pass1'];

echo "<br>";
echo "<br>";

if($passwd == $data['psw_usu']){
	// Si las contraseñas son iguales

	$idpersonal = $_SESSION['personal'];
	$fecha = date('Y-m-d');
	$hora = date('H:i:s');
	$tipo = $_REQUEST['tipo']; //Entrada o Salida

	$asistencia->GuardarAsistencia($idpersonal,$fecha,$hora,$tipo);
	echo "Asistencia guardada";

}else{
	echo "contraseña Errada";
}

?>