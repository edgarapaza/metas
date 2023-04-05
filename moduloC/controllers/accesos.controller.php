<?php
require "../models/ValidarUsuario.php";

$validar = new ValidarUsuario();

# POST, GET
#$user = $_POST['usuario'];
#$pass = $_POST['contraseña'];
$user = "edgar";
$pass = "edgar";

$datos = $validar->Validar($user, $pass);



# Consulta a la base de datos
$idpersonal = $datos['id_personal'];
$fecha = date("Y-m-d");
$hora = date("H:i:s");
$tipo = "Entrada";

$cantidaIngresos = $validar->VerificarAsistencia($idpersonal, $fecha);
echo "Cantidad de ingresos en el dia: " . $cantidaIngresos['total'];

#$ip="curl(https://www.cual-es-mi-ip.net/)";
#$pcomovil = "";

# Metodo VerificarAsistencia
# Metodo RegistrarAsistencia
# Metodo RegistraBitacora
# Metodo IniciaContador

if($cantidaIngresos['total'] == 0)
{
    $validar->RegistrarAsistencia($idpersonal, $fecha, $hora, $tipo);
    echo "Iniciando el CONTADOR";
}else{
    echo "Registra en BITACORA";
    echo "Iniciando el CONTADOR";

}

?>