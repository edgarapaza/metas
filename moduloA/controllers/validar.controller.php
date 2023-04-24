<?php
session_start();

require "../models/validar.model.php";

$validar = new Validar();

$user = $_REQUEST['txtusuario'];
$pass = $_REQUEST['txtpassword'];

$data = $validar->Verificar('edgar','edgar');

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