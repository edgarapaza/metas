<?php
require_once("Conexion.php");

class Metas
{
	private $conn;

	function __construct()
	{
		$this->conn = new Conexion();
        return $this->conn;
	}

	public function Guardar($nombre_meta,$programado,$unidad_medida)
	{
		$sql = "INSERT INTO metas VALUES (null,'$nombre_meta','$programado','$unidad_medida');";
		$this->conn->ConsultaSin($sql);
	}

	public function Modificar($idmeta, $nombre_meta,$programado,$unidad_medida)
	{
		
		$sql = "UPDATE metas SET nombre_meta = '$nombre_meta', programado = '$programado', unidad_medida='$unidad_medida' WHERE id_metas = $idmeta";
		$this->conn->ConsultaSin($sql);
	}
	public function Consultar()
	{
		$sql = "SELECT id_metas, nombre_meta, programado, unidad_medida FROM metas";
		$data = $this->conn->ConsultaCon($sql);
		return $data;
	}

	public function MostrarMetaOficina($idmeta)
	{
		
		$sql = "SELECT nombre_meta, programado, unidad_medida FROM metas WHERE id_metas = $idmeta;";
		$data = $this->conn->ConsultaArray($sql);
		return $data;
	}



	public function CrearOficinas()
	{
		
	}
}