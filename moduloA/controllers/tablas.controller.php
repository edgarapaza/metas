<?php 
session_start();
//trabajar aqui para que funcione las actualizaciones de activado o desactivado, una vez terminado preguntar como mostrar por pantalla
//
require "../models/ValidarUsuario.php";
//instancia de la clase-consulta

//Recoger el IDPersonal de la pagina
$idpersonal = $_REQUEST['idper'];


$login = new ValidarUsuario();
//consulta a los datos de login
$datos = $login->Tablas($idpersonal);

$user = $datos['nom_usu'];
$nivel = $datos['niv_usu'];
$actividad = $datos['chk_usu'];

$_SESSION['nombre'] = $user;
$_SESSION['nivel'] = $nivel;



if($datos['chk_usu'] == 1 ){
    echo 'aqui se debe cambiar el status del empleado ';
    $status1 = 0;//va ser igual al cambio
    $login->Status($status1, $idpersonal);
    echo $datos['chk_usu'];
    header("Location: ../views/tablas.php");
}else{
    $status1 = 1;
    $login->Status($status1, $idpersonal);
    header("Location: ../views/tablas.php");
}

$_SESSION['actividad'] = $actividad;
?>