<?php
require_once("Conexion.php");

class Cargos
{
	private $conn;

	function __construct()
	{
		$this->conn = new Conexion();
        return $this->conn;
	}

	public function Guardar($id_oficina,$nombre_cargo,$id_area,$id_personal)
	{
		$fechaActual = date('Y-m-d H:i:s');
		$sql = "INSERT INTO cargos VALUES (null,'$id_oficina','$id_area','$id_personal','$nombre_cargo','$fechaActual');";
		$this->conn->ConsultaSin($sql);
	}

	public function Modificar($idcargos,$nombre_cargo)
	{
		$sql = "UPDATE cargos SET nombre_cargo = '$nombre_cargo' WHERE id_cargos = '$idcargos';";
		$this->conn->ConsultaSin($sql);
	}

	public function Consultar()
	{
		$sql = "SELECT id_cargos,id_oficina,nombre_cargo FROM cargos";
		$response = $this->conn->ConsultaCon($sql);
		return $response;
	}

	public function MostrarCargos($idcargos)
	{
		$sql = "SELECT id_cargos,id_oficina,nombre_cargo,fec_creacion FROM cargos WHERE id_cargos = $idcargos;";
		$response = $this->conn->ConsultaCon($sql);
		return $response;
	}

	public function NombrePersonal($idpersonal)
    {
        $sql = "SELECT CONCAT(nombre,' ',apellidos) AS personal, foto FROM personal WHERE id_personal = $idpersonal;";
        $data = $this->conn->ConsultaArray($sql);
        return $data;
    }

    public function MostrarCargosAccion($idcargos)
	{
		$sql = "SELECT nombre_cargo FROM cargos WHERE id_cargos = $idcargos;";
		$data = $this->conn->ConsultaArray($sql);
		return $data;
	}
}
