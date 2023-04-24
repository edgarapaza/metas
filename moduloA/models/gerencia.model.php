<?php
require_once("Conexion.php");

class Gerencia
{
	private $conn;

	function __construct()
	{
		$this->conn = new Conexion();
        return $this->conn;
	}

	public function Guardar($idinstitucion,$nombre)
	{
		$sql = "INSERT INTO gerencia VALUES (null,'$idinstitucion','$nombre');";
		$this->conn->ConsultaSin($sql);
	}
}
