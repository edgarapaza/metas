<?php
session_start();
require "../models/ValidarUsuario.php";
$validar = new ValidarUsuario();
$user = $_REQUEST['txtusuario'];
$pass = $_REQUEST['txtpassword'];

$data = $validar->Validar($user, $pass);

if($data['chk_usu'] == 1)
{
	if($data['niv_usu'] == 1)
	{
		$_SESSION['admin'] = $data['id_personal'];
		header("Location: ../views/dashboard.php");
	}else{
		//echo "NO activo";
		header("Location: ../index.html");
	}
}else{
	echo "No activo";
}
?>