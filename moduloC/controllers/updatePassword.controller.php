<?php
session_start();
require "../models/ValidarUsuario.php";

$validar = new ValidarUsuario();

switch(true){
    case (isset($_POST['idpersonal'])):
        //echo 'se actualizara la contrase;a como primer ingresop';
        //echo $_POST['idpersonal'];
        if (!empty($_POST['password']) && !empty( $_POST['newpassword']) && !empty($_POST['renewpassword'])){
            $password = $_POST['password'];
            $newpassword = $_POST['newpassword'];
            $renewpassword = $_POST['renewpassword'];
            //verificacion de contrasena
            $contrasena = $validar->verificarPassword($_POST['idpersonal']);

            if($newpassword==$renewpassword and password_verify($password,$contrasena['psw_usu'])){
                $updatePassword = password_hash($newpassword, PASSWORD_BCRYPT);

                $validar->updatePassword($_POST['idpersonal'],$updatePassword);
                //echo 'funciona';
                header("location: ../index.html");
            }else{
                //echo 'no funciona password_verify';
                header("location: ../views/primerIngreso.view.php");
            }
       
        }else{
            //echo 'no llega datos';
            header("location: ../views/primerIngreso.view.php");
           
        }
        break;
        
    case (!empty($_SESSION['personal'])):
        //echo 'actualizacion de password normal';
        $idpersonal = $_SESSION['personal'];

        if (!empty($_POST['password']) && !empty( $_POST['newpassword']) && !empty($_POST['renewpassword']) && !empty($_POST['usuario'])){
            $usuario = $_POST['usuario'];
            $password = $_POST['password'];
            $newpassword = $_POST['newpassword'];
            $renewpassword = $_POST['renewpassword'];
            //verificacion de contrasena
            if(!$password_usu = $validar->verificarPassword($idpersonal)){
                //se ejecuta si no funciona y te manta a la pagina de nuevo
                header("location: ../views/miPerfil.php?msg=password incorrecto");
            }
            if($newpassword==$renewpassword && password_verify($password,$password_usu['psw_usu'])){
                $updatePassword = password_hash($newpassword, PASSWORD_BCRYPT);

                $validar->updatePassword($idpersonal,$updatePassword);
                echo 'se actualizara usuario y password';
                header("location: ../index.html");
                //echo "<script> console.log('formulario vacio');</script>";
            }
        }else{
            header("location: ../views/miPerfil.php?msg=faltan datos");
            //echo "<script> console.log('formulario vacio');</script>";
        }
        break;
}













?>