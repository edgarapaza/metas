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
			$this->conn->ConsultaSin($sql);
		}

		function RegistrarBitacora($idpersonal, $fecha, $hora, $tipo)
		{
			$sql = "INSERT INTO bitacora VALUES (null,'$idpersonal','$fecha','$hora','$tipo',null,null);";
			$this->conn->ConsultaSin($sql);

			$sql2 = "SELECT idbitacora FROM bitacora WHERE idpersonal = $idpersonal ORDER BY idbitacora DESC LIMIT 1";
			$data = $this->conn->ConsultaArray($sql2);
			return $data;
		}

		function AddSalida($horasalida, $tiempo, $idbitacora)
		{
			$sql = "UPDATE bitacora SET horasalida = '$horasalida', tiempo = '$tiempo' WHERE idbitacora = $idbitacora";
			$this->conn->ConsultaSin($sql);
		}
		//CONSULTA ZETA DEVUELVE USUARIO,NIVEL, Y ACTIVIDAD
		function Tablas($idpersonal)
		{
			$sql = "SELECT nom_usu, niv_usu, chk_usu FROM avancemetas.login WHERE id_personal = $idpersonal;";
			$data = $this->conn->ConsultaArray($sql);
			return $data;
		}
		function Status($status, $idpersonal)
		{
			$sql = "UPDATE `avancemetas`.`login` SET `chk_usu` = $status WHERE id_personal = $idpersonal";
			$this->conn->Consultasin($sql);
		}

		function uplevel($nivel,$idpersonal)
		{
			$sql = "UPDATE `avancemetas`.`login` SET `niv_usu` = $nivel WHERE `id_personal` = $idpersonal;";
			$this->conn->Consultasin($sql);
		}

	}
 ?>