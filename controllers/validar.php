<?php 
session_start();
include "../models/ValidarUsuario.php";

$usuario = trim($_POST['username']);
$pass = trim($_POST['clave']);

$validar = new ValidarUsuario();
$data = $validar->Validar($usuario, $pass);

if($data["chk_usu"] == 1){

	if ($data['niv_usu'] != null)
	{
	 switch ($data['niv_usu']) {
		case '1':
			$_SESSION["admin"]=$data["id_personal"];
			header("location: ../moduloA/index.php");
			break;
		case '2':
		    $_SESSION["id_personal"]=$data['id_personal'];
	        header("location: ../moduloB/index.php");
		    break;
		case '3':
		    $_SESSION["personal"]=$data['id_personal'];
	        header("location: ../moduloC/index.php");
		    break;
		default:
			# code...
			break;
			}
	}else{
			echo "error";
			header("Location: ../index.html");
	}

}else{
	echo "Persona no autorizada";
}