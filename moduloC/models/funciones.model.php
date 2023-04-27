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

	function Duplicado($idpersonal,$funcion,$unidadMedida,$cantidad,$frecuencia)

	{
		$sql = "SELECT idfunciones FROM funciones WHERE id_personal = '$idpersonal' AND funcion = '$funcion' AND unimed = '$unidadMedida' AND cantidad = '$cantidad' AND frecuencia ='$frecuencia'";
		$data = $this->conn->ConsultaArray($sql);
		return $data;
	}

	function Guardar($id_personal,$funcion,$unimed,$cantidad,$frecuencia)
	{
		$fecha = date("Y-m-d H:i:s");
		
		$sql = "INSERT INTO funciones VALUES (null,'$id_personal','$funcion','$unimed','$cantidad','$fecha','$fecha','$frecuencia');";
		$this->conn->ConsultaSin($sql);
		
	}

	function ConsultaReporte($idpersonal, $idfunciones)
	{
		$fecha = date("Y-m-d");
		$sql ="SELECT idreporte, tipo FROM reportes WHERE idpersonal = $idpersonal AND idfunciones = $idfunciones AND fecha LIKE '$fecha%';";
		
		$data = $this->conn->ConsultaArray($sql);
		return $data;
	}

	//Extrayendo los reportes del usuario
	function MostrarReporte($idpersonal)
	{
		$sql= "SELECT idreporte, idfunciones, fecha, cantidad FROM reportes where idpersonal = ". $idpersonal ;
		$dato = $this->conn->ConsultaCon($sql);
		return $dato;
	}
//utilizar esta funcion para la pagina estadisticas
	function Consultar($idpersonal)
	{
		$sql = "SELECT idfunciones,id_personal,funcion,unimed,cantidad FROM funciones WHERE id_personal = ". $idpersonal;
		$data = $this->conn->ConsultaCon($sql);
		return $data;
	}

	function Consultar1($idpersonal)
	{
		$sql = "SELECT idfunciones,id_personal,funcion,unimed,cantidad,fecha_creacion FROM funciones WHERE id_personal = ". $idpersonal;
		$data = $this->conn->ConsultaCon($sql);
		return $data;
	}

}