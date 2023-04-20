<?php
require_once("Conexion.php");

class Funciones
{
	private $conn;

	function __construct()
	{
		$this->conn = new Conexion();
        return $this->conn;
	}

	function Duplicado($id_personal, $funcion, $unimed, $cantidad, $frecuencia)
	{
		$sql = "SELECT idfunciones FROM funciones WHERE id_personal = '$id_personal' AND funcion = '$funcion' AND unimed = '$unimed' AND cantidad = '$cantidad' AND frecuencia = '$frecuencia';";
		$data = $this->conn->ConsultaArray($sql);
		return $data;
	}

	function Guardar($id_personal, $funcion, $unimed, $cantidad, $frecuencia)
	{
		$fecha = date('Y-m-d H:i:s');
		$sql = "INSERT INTO funciones VALUES (null,'$id_personal','$funcion','$unimed','$cantidad','$fecha','$fecha','$frecuencia');";
		$this->conn->ConsultaSin($sql);
	}
}