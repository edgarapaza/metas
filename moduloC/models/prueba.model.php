<?php
require_once("Conexion.php");

class Login
{
    private $conn;

    function __construct()
    {
        $this->conn = new Conexion();
        return $this->conn;
    }

    function MiLogin($nomUsu, $mipassword)
    {
        $sql = "SELECT * FROM asistencia_login WHERE nom_usu = '$nomUsu' AND psw_usu = '$mipassword';";
        // insert, UPDATE Y DELETE
        $this->conn->ConsultaSin();

        //  SELECT
        $data = $this->conn->ConsultaCon();
        return $data;

        // 1 solo resultado SELECT
        $data1 = $this->conn->ConsultaArray($sql);
        return $data1;

        $mivariable = $this->conn->ConsultaArray($sql);
        return $mivariable;
    }
}

$login = new Login();
$respuesta =  $login->MiLogin('edgar','edgar');

var_dump($respuesta);
echo $respuesta['id_personal'];
echo $respuesta['niv_usu'];
echo $respuesta['chk_usu'];