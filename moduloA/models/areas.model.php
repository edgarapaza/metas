<?php
require_once("Conexion.php");

class Areas
{
    private $conn;

    function __construct()
    {
        $this->conn = new Conexion();
        return $this->conn;
    }

    public function Guardar($nombre, $descripcion, $idoficina, $id_metas)
    {
        $fechaActual = date('Y-m-d H:i:s');
        $sql = "INSERT INTO areas VALUES (null,'$nombre','$descripcion','$idoficina','$id_metas','$fechaActual',null);";      
        $this->conn->ConsultaSin($sql);
    }

    public function Modificar($id_areas, $nombre,$descripcion)
    {
        $sql= "UPDATE areas SET nombre='$nombre', descripcion ='$descripcion' WHERE id_areas= " .$id_areas;
        $this->conn->ConsultaSin($sql);
    }

    public function Consultar()   
    {
        $sql = "SELECT id_areas, nombre, descripcion, idoficina, id_metas FROM areas";
        $data = $this->conn->ConsultaCon($sql);
        return $data;
    }

    public function MostrarArea($idarea)
    {
        $sql = "SELECT id_areas, nombre, id_metas, descripcion,f_creacion,f_update from areas WHERE id_areas = ". $idarea;
        $data = $this->conn->ConsultaCon($sql);
        return $data;
    }

    public function DatosDireccionOficina($idoficina)
    {
        $sql = "SELECT nombre_of, sigla, id_metas, id_institucion FROM oficinas WHERE id = $idoficina;";
        $data = $this->conn->ConsultaCon($sql);
        return $data;
    }

}
