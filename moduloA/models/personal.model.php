<?php
require_once("Conexion.php");

class Personal
{
	private $conn;

	function __construct()
	{
		$this->conn = new Conexion();
        return $this->conn;
	}

	public function Guardar($nombre,$apellidos,$sexo,$telefono,$fecha_nac,$email,$foto, $dni )
	{
		$fechaActual = date('Y-m-d H:i:s');
		$foto="./imagenes/usuario.png";

		$sql = "INSERT INTO personal(id_personal,nombre,apellidos,sexo,telefono,fecha_nac,email,foto,DNI,f_creacion)VALUES (null ,'$nombre','$apellidos','$sexo','$telefono','$fecha_nac','$email','$foto','$dni','$fechaActual')";
		$this->conn->ConsultaSin($sql);
	}

	public function Modificar($id_personal, $nombre,$apellidos,$telefono,$fecha_nac,$email,$dni)
	{
		$sql = "UPDATE personal SET nombre ='$nombre', apellidos = '$apellidos', telefono ='$telefono', fecha_nac = '$fecha_nac', email = '$email', DNI = '$dni' WHERE id_personal = $id_personal";
		$this->conn->ConsultaSin($sql);
	}

	public function Consultar()
	{
		$sql = "SELECT id_personal,nombre,apellidos,sexo,telefono,fecha_nac,email,foto,f_creacion, DNI FROM personal";
		$response = $this->conn->ConsultaCon($sql);
		return $response;
	}

	public function MostrarPersonalUno($idpersonal)
	{
		$sql = "SELECT id_personal,nombre,apellidos,sexo,telefono,fecha_nac,email,foto,DNI FROM personal WHERE id_personal = " . $idpersonal;
		$response = $this->conn->ConsultaArray($sql);
		return $response;
	}
	public function MostrarPersonalAccion($idpersonal)
	{
		$sql = "SELECT nombre, apellidos FROM personal WHERE id_personal = $idpersonal";
		$response = $this->conn->ConsultaArray($sql);
		return $response;
	}

}
