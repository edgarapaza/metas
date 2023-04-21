<?php
require "Conexion.php";

class Listado
{

		private $conn;

		function __construct()
		{
			$this->conn = new Conexion();
        	return $this->conn;
		}

		function ListadoPersonal(){
			$sql = "SELECT l.log_usu,l.id_personal AS id_personal,(SELECT CONCAT(p.nombre,' ',p.apellidos) FROM personal AS p WHERE p.id_personal = l.id_personal) AS per,l.niv_usu AS niv_usu,l.chk_usu AS chk_usu FROM login AS l;";
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

		function PersonalUnico($idpersonal)
		{
			$sql = "SELECT CONCAT(nombre,' ', apellidos) AS pers FROM personal WHERE id_personal= $idpersonal;";
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