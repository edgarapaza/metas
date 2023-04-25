<?php
require "../models/Persona.model.php";

$persona = new Persona();

$idpersonal= $_POST['idpersonal']; # FALTA
$telefono  = $_POST['telefono'];
$email     = $_POST['email'];
$foto      = $_POST['foto'];
$fecha_nac = $_POST['fecha_nacimiento'];

# Ruta del archivo - Copiar imagen y moverla a la carpeta del servidor
# C:\laragon\www\metas\moduloC\views\images\
$ruta     = "";   #FALTA

//$persona->UpdatePersona($telefono, $fecha_nac, $email, $ruta, $idpersonal);
