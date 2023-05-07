<?php 
session_start();
require "../models/reportes.model.php";

//{name: 'Sales', data: [31, 40, 28, 51, 42, 82, 56] },

$reportes = new Reportes();
$grafico = $reportes->grafico12($_SESSION['personal']);
$funciones = $reportes->funciones($_SESSION['personal']);


$data = array();
$fecha = array();

while($row = $grafico->fetch_array(MYSQLI_ASSOC)) {
    $funcion = $row["funcion"];
    $total = $row["total"];
    array_push($fecha, $row['fecha']);
    //$fecha = strtotime($row["fecha"]) * 1000; // Convertir fecha a milisegundos

    // Agregar los datos al objeto de datos
    if (array_key_exists($funcion, $data)) {
        array_push($data[$funcion]["data"], array($total));
    } else {
        $data[$funcion] = array(
            "name" => $funcion,
            "data" => array(array($total))
        );
    }
}

// Convertir el objeto de datos a un array
$series = array();
foreach($data as $value) {
    array_push($series, $value);
}

echo json_encode($series);
echo json_encode($fecha);










//
$fecha1 = array();
$datos = array();
$nombres = array();
$valores = array();
$metas = array();
while($fila2 = $grafico->fetch_array(MYSQLI_ASSOC)) {
    $max = 100;
    array_push($valores, $fila2['funcion']);
    array_push($metas, $fila2['total']);
    echo "{name: '" . $fila2['funcion'] . "', mas: " . $max . "},";
} 
echo json_encode($valores, JSON_PRETTY_PRINT);
echo json_encode($metas, JSON_PRETTY_PRINT);


$fecha1 = array();
$datos = array();
$cantidad = array();
while ($fila2 = $grafico->fetch_array(MYSQLI_ASSOC)) {
    $fecha = date("Y/m/d", strtotime($fila2['fecha'])); // formatea la fecha
    array_push($fecha1, $fecha);
    array_push($datos, $fila2['cantidad']);        
} 

foreach ($datos as $key => $dato) {
    echo "{name:jersson ', data: " . json_encode(array($dato)) . "},";
    $cantidad = json_encode(array($dato));
    echo $cantidad;
}



?>