<?php
require_once("Conexion.php");

class Oficinas
{
	private $conn;

	function __construct()
	{
		$this->conn = new Conexion();
        return $this->conn;
	}

	public function Guardar($nombre_of,$sigla,$id_institucion)
	{
		$fechaActual = date('Y-m-d H:i:s');
		$sql = "INSERT INTO oficinas VALUES (null,'$nombre_of','$sigla','$fechaActual','$fechaActual','1','$id_institucion')";

		$data = $this->conn->ConsultaCon($sql);
                return $data;
	}

	public function Modificar($idoficina, $nombre_oficina)
	{
		$fechaActual = date('Y-m-d H:i:s');
		$sql = "UPDATE oficinas SET nombre_of = '$nombre_oficina', f_update = '$fechaActual' WHERE id = $idoficina;";

		$data = $this->conn->ConsultaCon($sql);
                return $data;
	}

	public function Consultar()
	{
		$sql = "SELECT id, nombre_of, id_metas,id_institucion, f_creacion,f_update FROM oficinas;";
		
		$data = $this->conn->ConsultaCon($sql);
                return $data;
		
	}

	public function MostrarOficina($idoficina)
	{
		$sql = "SELECT id, nombre_of, id_metas,id_institucion FROM oficinas WHERE id = $idoficina;";
		
		$data = $this->conn->ConsultaCon($sql);
                return $data;
	}

}
