 <?php 
session_start();
include("models/login.model.php");
if(isset($_SESSION['admin']))
{
  //echo $_SESSION['admin'];
  $login = new Login();
  $data = $login->NombrePersonal($_SESSION['admin']);

?>
<!doctype html>
<html lang="es-ES">
  <head>
    <title>Avance de Metas</title>
    <meta http-equiv=”Content-Type” content=”text/html; charset=UTF-8″ />
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <link rel="stylesheet" href="css/estilo.css">
  </head>
<body>
  <header>
  <img src="<?php echo $data['foto'];?>" alt="Foto" width="40"> Bienvenid@ <?php echo $data['personal']; ?>
   | <a href="../controllers/logout.php"> Salir</a>
  </header>
  <nav>
      <ul>Institucional
            <li><a href="institucion.php">Agregar Institucion</a></li>
            <li><a href="gerencia.php">Agregar Gerencia</a></li>
            <li><a href="subgerencia.php">Agregar Sub Gerencia</a></li>
            <li><a href="oficinas.php">Agregar Oficinas</a></li>
            <li><a href="areas.php">Agregar Areas</a></li>
    </ul>

    <ul>Personal
        <li><a href="personal.php">Agregar Personal</a></li>
    </ul>
    <ul>Reportes
        <li><a href="reportGerencia.php">Por Gerencias</a></li>
        <li><a href="reportSubGerencia.php">Por Sub Gerencias</a></li>
        <li><a href="reportOficina.php">Por Oficinas</a></li>
        <li><a href="reportPersona.php">Por Persona</a></li>
    </ul>
  </nav>

<?php
  }
  else{
    
    header("Location: ../index.html");
  }
?>