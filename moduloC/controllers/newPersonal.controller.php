<?php
include "../models/personal.model.php";

# Instanciar al al clase persona
$personal = new Personal();

$fecha = date('Y-m-d H:i:s');

if(!empty($_POST['nombre']) and !empty($_POST['apellido']) and !empty($_POST['email']) and !empty($_POST['dni']) and !empty($_POST['telefono']) and !empty($_POST['direccion']) and !empty($_POST['foto']) and !empty($_POST['nacimiento']) and !empty($_POST['sexo'])){
    
    $nombre = trim(strtoupper($_POST['nombre']));
    $apellido =  trim(strtoupper($_POST['apellido']));
    $email = trim($_POST['email']);
    $dni = trim(strtoupper($_POST['dni']));
    $telefono = trim(strtoupper($_POST['telefono']));
    $direccion = trim($_POST['direccion']);
    $foto = $_POST['foto'];
    $nacimiento = trim(strtoupper($_POST['nacimiento']));
    $sexo = strtoupper($_POST['sexo']);
    
    $personal->Guardar($nombre,$apellido,$sexo,$telefono,$nacimiento,$email,$foto,$dni,$fecha,$direccion);

    $data = $personal->ConsultarPersonal($nombre,$apellido,$dni);

    //echo $data['id_personal'];

    //header("location: ../view/registroUsuario.php?idpersonal=".urlencode($datos['id_personal']));
    header("location: ../views/newUsuario.view.php?idpersonal=".urlencode($data['id_personal']));
}else{
    echo 'faltan datos por llenar';
    header("location: ../views/newPersonal.view.php");
}
?>