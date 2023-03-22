<?php
require_once("Conexion.php");

class Reportes
{
	private $conn;

	function __construct()
	{
		$link = new Conexion();
		$this->conn = $link->Conectar();
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
		$sql = "SELECT id_reportes, id_personal, id_responsabilidades, f_reportes, cantidad_avance FROM reportes";
		$data = $this->conn->ConsultaCon($sql);
		return $data;
	}

}