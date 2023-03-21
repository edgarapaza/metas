<?php
require "../models/gerencia.model.php";

$gerencia = new Gerencia();
$id = trim($_POST['txtidinstitucion']);
$txtgerencia = trim(strtoupper($_POST['txtgerencia']));

try {
    $gerencia->Guardar($id, $txtgerencia);
} catch (Exception $e) {
    echo 'Error: ',  $e->getMessage(), "\n";
}

?>