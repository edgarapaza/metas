<?php
require_once("Conexion.php");

class Institucion
{
	private $conn;

	function __construct()
	{
		$this->conn = new Conexion();
        return $this->conn;
	}

	public function Guardar($nombre_inst,$direccion,$telefono,$RUC,$email,$p_web,$fecha_creacion_archivo,$id_metas,$n_resolucion)
	{
		$fechaActual = date('Y-m-d H:i:s');
		$sql = "INSERT INTO institucion VALUES (null,'$nombre_inst','$direccion','$telefono','$RUC','$email','$p_web','$fecha_creacion_archivo','$n_resolucion','$id_metas','$fechaActual','$fechaActual')";
		$this->conn->ConsultaSin($sql);
	}

	public function Modificar()
	{
		
	}

	public function Consultar()
	{
		$sql = "SELECT id,nombre_inst,direccion,telefono,RUC,email,p_web,fecha_creacion_archivo,n_resolucion,id_metas,fecha_create,fecha_update FROM institucion; ";

		$response = $this->conn->ConsultaCon($sql);

		return $response;
	}

	public function CrearOficinas()
	{
		
	}
}
