<?php

class Conexionn {

	public function Conectar() {
		#require_once ("config.php");

		$mysqli = new mysqli("localhost","usuario", "archivo123$", "avancemetas");

		$mysqli->set_charset("utf8");
		if ($mysqli->connect_errno) {
			echo "Error al contenctar a MySQL: (".$mysqli->connect_errno.") ".$mysqli->connect_error;
			exit();
		}

		//echo $mysqli->host_info. "Dentro de la clase";
		return $mysqli;
	}
}

?>

