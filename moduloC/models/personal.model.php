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

	public function Guardar($nombre,$apellidos,$sexo,$telefono,$fecha_nac,$email,$foto, $dni, $fechaActual,$direccion)
	{
		$sql = "INSERT INTO personal(id_personal,nombre,apellidos,sexo,telefono,fecha_nac,email,foto,DNI,f_creacion,direccion)VALUES (null ,'$nombre','$apellidos','$sexo','$telefono','$fecha_nac','$email','$foto','$dni','$fechaActual','$direccion')";
		$this->conn->ConsultaSin($sql);
	}

	public function GuardarUsuario($idpersonal,$usuario,$password,$nivel,$chek)
	{
		$sql = "INSERT INTO login VALUES (null, '$idpersonal','$usuario','$password','$nivel','$chek')";
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
	public function ConsultarPersonal($nombre,$apellido,$dni)
	{
		$sql = "SELECT id_personal,nombre,apellidos,sexo,telefono,fecha_nac,email,foto,f_creacion, DNI FROM personal WHERE nombre = '$nombre' AND apellidos = '$apellido' AND DNI = '$dni';";
		$data = $this->conn->ConsultaArray($sql);
		return $data;
	}

	public function MostrarPersonal($idpersonal)
	{
		$sql = "SELECT CONCAT(nombre,' ',apellidos) AS nombre, sexo,telefono,fecha_nac,email,foto, DNI FROM personal WHERE id_personal = " . $idpersonal;
		$response = $this->conn->ConsultaArray($sql);
		return $response;
	}
	public function MostrarPersonalAccion($idpersonal)
	{	
		$sql = "SELECT nombre, apellidos FROM personal WHERE id_personal = $idpersonal";
		$response = $this->conn->ConsultaArray($sql);
		return $response;
	}

	public function VerRegistro($idpersonal)
	{
		$sql = "SELECT * FROM asistencia";
		$response = $this->conn->ConsultaArray($sql);
		return $response;
	}

}
