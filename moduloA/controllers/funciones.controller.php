<?php
require "../models/funciones.model.php";

$funciones = new Funciones();

echo $id_personal = $_REQUEST['idpersonal'];
echo $funcion = $_REQUEST['funcion'];
echo $unimed = $_REQUEST['unidadMedida'];
echo $cantidad = $_REQUEST['cantidad'];
echo $frecuencia = $_REQUEST['frecuencia'];

$dat = $funciones->Duplicado($id_personal, $funcion, $unimed, $cantidad, $frecuencia);
if(!is_null($dat))
{
	echo "Duplicado";
}else{
	$funciones->Guardar($id_personal, $funcion, $unimed, $cantidad, $frecuencia);
}
header("Location: ../views/tablaFunciones.php");