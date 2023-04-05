<?php
require "Conexion.php";
class ValidarUsuario
	{

		private $conn;

		function __construct()
		{
			$this->conn = new Conexion();
			return $this->conn;
		}

		function Validar($user, $pass)
		{
			$sql = "SELECT id_personal, niv_usu, chk_usu FROM login WHERE nom_usu = '$user' AND psw_usu = '$pass'";
			$data = $this->conn->ConsultaArray($sql);
			return $data;
		}

		function VerificarAsistencia($idpersonal, $fecha)
		{
			$sql = "SELECT count(*) AS total FROM asistencia WHERE idpersonal = $idpersonal AND fecha = '$fecha';";
			$data = $this->conn->ConsultaArray($sql);
			return $data;
		}

		function RegistrarAsistencia($idpersonal, $fecha, $hora, $tipo)
		{
			$sql = "INSERT INTO asistencia VALUES (null,'$idpersonal','$fecha','$hora','$tipo');";
			$data = $this->conn->ConsultaSin($sql);
			return $data;

		}

		public function IniciaContador()
		{

		}
	}
 ?>