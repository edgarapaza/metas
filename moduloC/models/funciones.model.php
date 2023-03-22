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

	public function Guardar($id_personal,$id_responsabilidades,$f_reportes,$cantidad_avance)
	{
		
		$sql = "INSERT INTO reportes VALUES (null,'$id_personal','$id_responsabilidades','$f_reportes','$cantidad_avance');";
		$this->conn->ConsultaSin($sql);
		
	}

	public function Modificar()
	{
		
	}

	public function Consultar()
	{
		$sql = "SELECT id_acciones, id_personal, id_cargos, funcion, unimed,cantidad FROM funciones";
		$data = $this->conn->ConsultaCon($sql);
		return $data;
	}

}