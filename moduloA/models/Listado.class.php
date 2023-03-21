<?php
require_once("Conexion.php");
	class Listado
	{

		private $conn;

		function __construct()
		{
			$this->conn = new Conexion();
        	return $this->conn;
		}

		function Personal(){
			$sql = "SELECT id_personal, CONCAT(nombre,' ', paterno,' ',materno) AS personal FROM personal;";
			$data = $this->conn->ConsultaCon($sql);
			return $data;
		}

		function Institucion(){
			$sql="SELECT id, nombre FROM institucion;";
			$data = $this->conn->ConsultaArray($sql);
			return $data;
		}

		function Oficina(){
			$sql="SELECT id_oficina, oficina FROM oficinas;";
			$data = $this->conn->ConsultaArray($sql);
			return $data;
		}

		function Cargo(){
			$sql="SELECT id_cargo, cargo FROM cargos;";
			$data = $this->conn->ConsultaArray($sql);
			return $data;
		}

		function PersonalUnico($codigo){
			$sql = "SELECT CONCAT(nombre,' ', paterno,' ',materno) AS personal FROM personal WHERE id_personal= $codigo";
			$dato = $this->conn->ConsultaArray($sql);
			return $dato;
		}

		function OficinaUnico($codigo){
			$sql="SELECT oficina FROM oficinas WHERE id_oficina= $codigo";
			$data = $this->conn->ConsultaArray($sql);
			return $data;
		}

		function CargoUnico($codigo){
			$sql="SELECT cargo FROM cargos WHERE id_cargo = $codigo";
			$data = $this->conn->ConsultaArray($sql);
			return $data;
		}
	}

 ?>