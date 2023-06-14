<?php
require "Conexion.php";

class Asistencia
{
	private $conn;

	function __construct()
	{
		$this->conn = new Conexion();
       	return $this->conn;
	}

	public function GuardarAsistencia($idpersonal,$fecha,$hora,$tipo)
	{
		$sql = "INSERT INTO asistencia VALUES (null,'$idpersonal','$fecha','$hora','$tipo',null,null)";
		$this->conn->ConsultaSin($sql);
	}

	public function DevolverPassword($idpersonal)
	{
		$sql = "SELECT psw_usu FROM login WHERE log_usu = " . $idpersonal;
		$data = $this->conn->ConsultaArray($sql);
		return $data;
	}
	public function verAsistencia($fecha)
	{
		$sql = "SELECT DISTINCT idpersonal FROM asistencia WHERE fecha = '$fecha';";
		$data = $this->conn->ConsultaCon($sql);
		return $data;
	}
	public function verPersonal()
	{
		$sql = "SELECT id_personal FROM login WHERE chk_usu = '1';";
		$data = $this->conn->ConsultaCon($sql);
		return $data;
	}
	
}
?>