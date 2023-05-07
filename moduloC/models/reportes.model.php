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
	//funciones de ZETA para graficos y ver mis Estadisticas
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
	//pagina estadisticas
	public function estadisticasAsistencia($idpersonal){
		$sql = "SELECT p.nombre, COUNT(*) AS cantidad
		FROM asistencia a
		JOIN personal p ON a.idpersonal = p.id_personal
		WHERE a.tipo = 'entrada' and a.idpersonal = $idpersonal
		GROUP BY p.id_personal;";
		$data = $this->conn->ConsultaArray($sql);
		return $data;
	}
	//total de reportes y total de enviados por id
	public function totalReportes($idpersonal){
		$sql = "SELECT SUM(cantidad)AS total, COUNT(*) as enviados FROM reportes WHERE idpersonal = $idpersonal;";
		$data = $this->conn->ConsultaArray($sql);
		return $data;
	}
	//numero de funciones asignadas
	public function numeroFunciones($idpersonal){
		$sql = "SELECT COUNT(*) as total FROM funciones Where id_personal = $idpersonal;";
		$data = $this->conn->ConsultaArray($sql);
		return $data;
	}
	public function grafico2($idpersonal){
		$sql = "SELECT sum(r.cantidad) as total,f.funcion as asignado, f.cantidad as metas FROM funciones f
		JOIN reportes r ON f.idfunciones = r.idfunciones
		Where id_personal = $idpersonal
		GROUP BY asignado, metas;";
		$data = $this->conn->ConsultaCon($sql);
		return $data;
	}
	//consulta para grafico de funciones y numero de reportes por funcionm segun id
	public function grafico3($idpersonal){
		$sql = "SELECT sum(r.cantidad) as total,f.funcion as asignado FROM funciones f
		JOIN reportes r ON f.idfunciones = r.idfunciones
		Where id_personal = $idpersonal
		GROUP BY asignado;";
		$data = $this->conn->ConsultaCon($sql);
		return $data;
	}
	//consulta para grafico reports
	public function grafico1($idpersonal){
		$sql = "SELECT r.cantidad, DATE(r.fecha) as fecha, f.funcion FROM reportes r
		JOIN funciones f ON f.idfunciones = r.idfunciones WHERE r.idpersonal = $idpersonal;";
		$data = $this->conn->ConsultaCon($sql);
		return $data;
	}
	
	public function grafico12($idpersonal){
		$sql = "SELECT SUM(r.cantidad) as total, DATE(r.fecha) as fecha, f.funcion
		FROM reportes r
		JOIN funciones f ON f.idfunciones = r.idfunciones 
		WHERE r.idpersonal = $idpersonal 
		GROUP BY DATE(r.fecha), f.funcion;";
		$data = $this->conn->ConsultaCon($sql);
		return $data;
	}

	public function funciones($idpersonal){
		$sql = "SELECT idfunciones FROM funciones WHERE id_personal = $idpersonal;";
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
