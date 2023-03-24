<?php
require "../models/Conexion.php";

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
		$sql = "INSERT INTO asistencia VALUES (null,'$idpersonal','$fecha','$hora','$tipo')";
		$this->conn->ConsultaSin($sql);
	}

	public function DevolverPassword($idpersonal)
	{
		$sql = "SELECT psw_usu FROM login WHERE log_usu = " . $idpersonal;
		$data = $this->conn->ConsultaArray($sql);
		return $data;
	}


}
?>