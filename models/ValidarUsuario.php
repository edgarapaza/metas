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

		function Validar($user, $pass){
			$sql = "SELECT id_personal, niv_usu, chk_usu FROM login WHERE nom_usu = '$user' AND psw_usu = '$pass' LIMIT 1";
			$result = $this->conn->ConsultaArray($sql);
			return $result;
		}
	}
 ?>