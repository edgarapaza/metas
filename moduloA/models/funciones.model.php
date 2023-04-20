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

	function Duplicado($id_personal, $id_cargos, $funcion, $unimed, $cantidad, $frecuencia)
	{
		$sql = "SELECT idfunciones FROM funciones WHERE id_personal = '$id_personal', id_cargos = '$id_cargos', funcion = '$funcion', unimed = '$unimed', cantidad = '$cantidad', frecuencia = '$frecuencia';";
		$data = $this->conn->ConsultaArray($sql);
		return $data;
	}

	function GuardarFuncion()
	{
		$sql = "";
		$this->conn->ConsultaSin($sql);
	}
}