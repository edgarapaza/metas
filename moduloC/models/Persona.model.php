
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
			$sql = "SELECT CONCAT(nombre,' ', apellidos) AS personal, nombre, apellidos, sexo, telefono,fecha_nac, DNI, foto, email, direccion FROM personal WHERE id_personal = $idpersonal;";
			$data = $this->conn->ConsultaArray($sql);
			return $data;
		}
<<<<<<< HEAD
		
    function UpdatePersona($telefono, $fecha_nac, $email, $ruta, $idpersonal)
=======

    function UpdatePersona($telefono, $fecha_nac, $email, $ruta, $direccion, $idpersonal)
>>>>>>> 31bc32046a1e31027a5e705c0abc2bfd59671f51
		{
			$sql = "UPDATE personal SET telefono = '$telefono', fecha_nac = '$fecha_nac', email = '$email', foto = '$ruta', direccion = '$direccion' WHERE (id_personal = '$idpersonal');";
			$this->conn->ConsultaSin($sql);
		}
	}
