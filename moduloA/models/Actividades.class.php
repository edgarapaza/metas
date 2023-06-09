<?php
require_once("Conexion.php");

class Actividades
	{
		private $conn;

		function __construct()
		{
			$this->conn = new Conexion();
        	return $this->conn;
		}

		function MostrarTareas($codigo)
		{
			$sql = "SELECT id_cargo, id_oficina, id_institucion, actividad, unidadMedida FROM actividades WHERE id_personal = $codigo GROUP BY id_personal;";
			$response = $this->conn->ConsultaCon($sql);
			return $response;
		}

		function CrearTarea($id_personal,$id_institucion,$id_oficina,$id_cargo,$actividad,$unidadMedida,$obs){
			$sql= "INSERT INTO actividades (idActividad, id_personal, id_institucion,id_oficina,id_cargo,actividad,unidadMedida,obs) VALUES (NULL,'$id_personal','$id_institucion','$id_oficina','$id_cargo','$actividad','$unidadMedida','$obs');";
			$this->conn->ConsultaSin($sql);
		}

		function Editar($id_personal,$id_institucion,$id_oficina,$id_cargo,$actividad,$unidadMedida,$obs){
			$sql = "UPDATE actividades SET idActividad = '$idActividad',id_personal = '$id_personal',id_institucion = '$id_institucion',id_oficina = '$id_oficina',id_cargo = '$id_cargo',actividad = '$actividad',unidadMedida = '$unidadMedida',obs = '$obs' WHERE idActividad = '$codigo';";
			$this->conn->ConsultaSin($sql);
		}

		function Eliminar($idactividades)
		{
			$sql="DELETE FROM actividades WHERE idactividades = $idactividades LIMIT 1;";
			$this->conn->ConsultaSin($sql);
		}

		function ListarTodo(){
			$sql = "SELECT id_personal, id_oficina, id_cargo, actividad, unidadMedida, obs FROM actividades ORDER BY id_personal";
			$data = $this->conn->ConsultaCon($sql);
			return $data;
		}
	}


?>