<?php
require "../models/funciones.model.php";
$funciones = new Funciones();

$idpersonal = $_REQUEST['idpersonal'];
$funcion = trim(strtoupper($_REQUEST['funcion']));
$unidadMedida = $_REQUEST['unidadMedida'];
$frecuencia = $_REQUEST['frecuencia'];
$cantidad = trim($_REQUEST['cantidad']);

$res = $funciones->Duplicado($idpersonal,$funcion,$unidadMedida,$cantidad,$frecuencia);
if(!is_null($res))
{
	echo $res['idfunciones'];
}else{
	$funciones->Guardar($idpersonal,$funcion,$unidadMedida,$cantidad,$frecuencia);
	echo "Guardado";
}