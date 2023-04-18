<?php
require_once("Conexion.php");

class Listado
{
	private $conn;

	function __construct()
    {
        $this->conn = new Conexion();
        return $this->conn;
    }

    public function ListadoPersonal()
    {
        $sql = "SELECT id_personal,(SELECT CONCAT(p.nombre,' ', p.apellidos) FROM personal AS p WHERE p.id_personal = l.id_personal) AS per , l.niv_usu, l.chk_usu FROM login AS l;";
        $data = $this->conn->ConsultaCon($sql);
        return $data;
    }




}