<?php
require_once "Conexion.php";

class Reportes
{
	private $conn;

	function __construct()
	{
		$this->conn = new Conexion();
		return $this->conn;
	}


	public function Guardar($idpersonal, $idfunciones, $cantidad)
	{
		$fecha = date("Y-m-d H:i:s");
		$tipo = 1;
		$sql = "INSERT INTO reportes VALUES (null,'$idpersonal','$idfunciones','$fecha',1,'$cantidad',null)";
		echo $sql;
		$this->conn->ConsultaSin($sql);
	}

	public function Modificar($idreportes, $cantidad)
	{
		$sql = "UPDATE reportes SET cantidad = '$cantidad' WHERE id_reportes = $idreportes;";

		if(!$this->conn->query($sql)){
			echo "Error: " . mysqli_error($this->conn);
			exit();
		}

		$this->conn->close();
	}

	public function Consultar($idpersonal)
	{
		$sql = "";

		if(!$response = $this->conn->query($sql))
		{
			echo "Error: ". mysqli_error($this->conn);
		}

		$data = $response->fetch_array(MYSQLI_ASSOC);

		return $data;
	}
	public function MostrarReportes($idpersonal)
	{
		$sql = "SELECT id_acciones, nomb_actividad, unidad_medida FROM acciones WHERE id_personal = $idpersonal;";
		
		if(!$response = $this->conn->query($sql))
		{
			"Error: ". mysqli_error($this->conn);
            exit();
		}

		return $response;
	}

	public function verReportes(){
		$sql = "SELECT CONCAT(p.nombre,' ',p.apellidos) AS nombre, SUM(r.cantidad) as cantidad 
		FROM reportes as r 
		JOIN personal as p ON p.id_personal = r.idpersonal 
		GROUP BY r.idpersonal;";
		$data = $this->conn->ConsultaCon($sql);
		return $data;
	}

	public function totalAsistencia(){
		$sql = "SELECT p.nombre, COUNT(*) AS cantidad
		FROM asistencia a
		JOIN personal p ON a.idpersonal = p.id_personal
		WHERE a.tipo = 'entrada'
		GROUP BY p.id_personal;";
		$data = $this->conn->ConsultaCon($sql);
		return $data;
	}

	public function progreso(){
		$sql = "SELECT DATE(fecha) AS dia, SUM(cantidad) AS cantidad_reportes
		FROM reportes
		GROUP BY dia
		ORDER BY dia ASC;";
		$data = $this->conn->ConsultaCon($sql);
		return $data;
	}
	public function funcionesDesignadas(){
		$sql = "SELECT f.funcion, SUM(r.cantidad) as cantidad_total
		FROM funciones f
		JOIN reportes r ON f.idfunciones = r.idfunciones
		GROUP BY f.funcion;";
		$data = $this->conn->ConsultaCon($sql);
		return $data;
	}


	





	
	/*public function Consultarcant($cantidad)
	{
		$sql = "SELECT cantidad from reportes WHERE cantidad=$cantidad;";

		if(!$this->conn->query($sql)){
			echo "Error: " . mysqli_error($this->conn);
			exit();
		}
		


		return $data1;
	}*/
}
