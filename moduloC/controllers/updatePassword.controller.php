<?php
session_start();
require "../models/ValidarUsuario.php";

$validar = new ValidarUsuario();


if (!empty($_POST['password']) && !empty( $_POST['newpassword']) && !empty($_POST['renewpassword'])){
    $password = $_POST['password'];
    $newpassword = $_POST['newpassword'];
    $renewpassword = $_POST['renewpassword'];
    //verificacion de contrasena
    if(!$password_usu = $validar->verificarPassword($_SESSION['personal'], $password)){
        //echo "Error: ".mysqli_error();
        //return false;
        header("location: ../views/miPerfil.php");
        //echo "<script> console.log('formulario vacio');</script>";
    }
    if($newpassword==$renewpassword && isset($password_usu['psw_usu'])){
        $validar->updatePassword($_SESSION['personal'],$newpassword, $password_usu['psw_usu']);
        header("location: ../views/miPerfil.php");
        //echo "<script> console.log('formulario vacio');</script>";
    }
    //echo $password_usu['psw_usu'].'<br>';
    //echo $password.'<br>';
    //echo $newpassword.'<br>';
    //echo $newpassword.'<br>'; 
}else{
    header("location: ../views/miPerfil.php");
    //echo "<script> console.log('formulario vacio');</script>";
}










?>