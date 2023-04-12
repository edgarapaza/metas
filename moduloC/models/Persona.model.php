<?php
require "Conexion.php";

class Persona
	{
		private $conn;

		function __construct()
		{
			$this->conn = new Conexion();
			return $this->conn;
		}

		function Add($cargo,$oficina,$institucion,$nombre,$paterno,$materno,$dni,$celular,$telcasa,$email,$direccion,$barrio,$gs,$foto)
		{
			$sql= "INSERT INTO personal VALUES(null,$cargo,$oficina,$institucion,'$nombre','$paterno','$materno','$dni','$celular','$telcasa','$email','$direccion','$barrio','$gs',null)";
			$this->conn->ConsultaSin($sql);
		}

		function Remove($idpersonal)
		{
			$sql= "DELETE FROM personal WHERE id_personal = $idpersonal LIMIT 1";
			$this->conn->ConsultaSin($sql);
		}

		function Edit($cargo,$oficina,$institucion,$celular,$telcasa,$email,$direccion,$barrio){
			$sql= "UPDATE personal SET id_cargo = $cargo, id_oficina = $oficina, id_institucion = $institucion, celular = '{$celular}', telcasa = '{$telcasa}',email = '{$email}', direccion = '{$direccion}', barrio = '{$barrio}'";
			$this->conn->ConsultaSin($sql);
		}

		function EditFoto($foto){

		}

		function MostrarTodo(){
			$sql= "SELECT * FROM personal ORDER BY paterno;";
			$datos = $this->conn->ConsultaCon($sql);

			return $datos;
		}

		function MostrarPersona($idpersonal)
		{
			$sql = "SELECT CONCAT(nombre,' ', apellidos) AS personal FROM personal WHERE id_personal = $idpersonal";
			$data = $this->conn->ConsultaArray($sql);
			return $data;
		}
	}


?>