<?php 
//require('/var/www/html/metas/moduloC/models/asistencia.model.php');
//require ("../models/asistencia.model.php");
require(__DIR__ . '/../models/asistencia.model.php');
$asistencia = new Asistencia();


$fecha = date('Y-m-d');
$hora = date("H:i:s");
$tipo = "FALTA";


$asistenciaS = $asistencia->verAsistencia($fecha);
$personal = $asistencia->verPersonal();

foreach($personal as $personalGuardado){
    echo 'id del personal activo '.$personalGuardado['id_personal'].'<br>';
    $idpersonal = $personalGuardado['id_personal'];
    $marcarFalta = false;
    foreach($asistenciaS as $asistenciaGuardada){
        echo 'id del personal que asistio hoy '.$asistenciaGuardada['idpersonal'].'<br>';
        if($personalGuardado['id_personal'] == $asistenciaGuardada['idpersonal']){
            $marcarFalta = true;
            break;
        }
    }
    if(!$marcarFalta){
        echo 'al personal se le marcara falta '.$personalGuardado['id_personal'].'<br>';
        $asistencia->GuardarAsistencia($idpersonal,$fecha,$hora,$tipo);
    }

}


switch(true){
    case ($hora >= '08:00:00' && $hora <= '08:05:00'):
        

        break;
    case ($hora >= '14:00:00' && $hora <= '14:05:00'):


        break;
}

?>