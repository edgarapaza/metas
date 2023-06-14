<?php

include "../models/personal.model.php";

$personal = new Personal();

if(!empty($_POST['idpersonal']) and !empty($_POST['usuario']) and !empty($_POST['password']) and !empty($_POST['nivel']) and isset($_POST['chek'])){

    $idpersonal = $_POST['idpersonal'];
    $usuario = $_POST['usuario'];
    $password = password_hash($_POST['password'], PASSWORD_BCRYPT);
    $nivel = $_POST['nivel'];
    $chek = $_POST['chek'];
    
    $personal->GuardarUsuario($idpersonal,$usuario,$password,$nivel,$chek);

    header("location: ../views/index.php");
}else{
    echo 'falta datos por llenar';
    header("location: ../views/newUsuario.view.php");
}





?>