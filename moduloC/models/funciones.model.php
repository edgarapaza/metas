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

	function Guardar($id_personal,$id_responsabilidades,$f_reportes,$cantidad_avance)
	{
		
		$sql = "INSERT INTO reportes VALUES (null,'$id_personal','$id_responsabilidades','$f_reportes','$cantidad_avance');";
		$this->conn->ConsultaSin($sql);
		
	}

	function ConsultaReporte($idpersonal, $idfunciones)
	{
		$fecha = date("Y-m-d");
		$sql ="SELECT idreporte, tipo FROM reportes WHERE idpersonal = $idpersonal AND idfunciones = $idfunciones AND fecha LIKE '$fecha%';";
		
		$data = $this->conn->ConsultaArray($sql);
		return $data;
	}

	function Consultar($idpersonal)
	{
		$sql = "SELECT idfunciones,id_personal,id_cargos,funcion,unimed,cantidad FROM funciones WHERE id_personal = ". $idpersonal;
		$data = $this->conn->ConsultaCon($sql);
		return $data;
	}

}