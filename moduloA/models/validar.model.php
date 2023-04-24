<?php
require "Conexion.php";

class Validar
{
		private $conn;

		function __construct()
		{
			$this->conn = new Conexion();
        	return $this->conn;
		}

		function Verificar($usuario, $passwd)
		{
			$sql = "SELECT id_personal, niv_usu, chk_usu FROM login WHERE nom_usu = '$usuario' AND psw_usu = '$passwd';";
			echo $sql;
			$data = $this->conn->ConsultaArray($sql);
			return $data;
		}
}
