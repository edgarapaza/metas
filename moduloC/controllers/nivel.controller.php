<?php
session_start();

require "../models/ValidarUsuario.php";

$idpersonal = $_REQUEST['idper'];

$level = new ValidarUsuario();

//consulta a los datos de login, solo necesitamos el nivel de usuario
$datos = $level->Tablas($idpersonal);

$nivel = $datos['niv_usu'];
echo $datos['niv_usu'];

if ($nivel == 1 ){
    $nivel = 2;
    $level->Uplevel($nivel,$idpersonal);
    header("Location: ../views/tablas.php");
    echo $datos['niv_usu'];
}else if ($nivel == 2 ){
    $nivel = 3;
    $level->Uplevel($nivel,$idpersonal);
    header("Location: ../views/tablas.php");
    echo $datos['niv_usu'];  
}else if($nivel ==3 ){
    $nivel = 1;
    $level->Uplevel($nivel,$idpersonal);
    header("Location: ../views/tablas.php");
    echo $datos['niv_usu'];
}




?>