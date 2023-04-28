<?php
require "../models/Persona.model.php";

$persona = new Persona();

$idpersonal= $_POST['idpersonal']; # FALTA
$telefono  = $_POST['telefono'];
$email     = $_POST['email'];
$fecha_nac = $_POST['fecha_nacimiento'];
$direccion = $_POST['direccion'];


# Ruta del archivo - Copiar imagen y moverla a la carpeta del servidor
# C:\laragon\www\metas\moduloC\views\images\
  #FALTA
  if (isset($_POST['btn-agregar'])) {
    //Recogemos el archivo enviado por el formulario
    $archivo = $_FILES['foto']['name'];
    //Si el archivo contiene algo y es diferente de vacio
    if (isset($archivo) && $archivo != "") {
       //Obtenemos algunos datos necesarios sobre el archivo
       echo $tipo = $_FILES['foto']['type'];
       echo $tamano = $_FILES['foto']['size'];
       echo $temp = $_FILES['foto']['tmp_name'];
       //Se comprueba si el archivo a cargar es correcto observando su extensión y tamaño
      if (!((strpos($tipo, "gif") || strpos($tipo, "jpeg") || strpos($tipo, "jpg") || strpos($tipo, "png")) && ($tamano < 2000000))) {
         echo '<div><b>Error. La extensión o el tamaño de los archivos no es correcta.<br/>
         - Se permiten archivos .gif, .jpg, .png. y de 200 kb como máximo.</b></div>';
      }
      else {
         //Si la imagen es correcta en tamaño y tipo
         //Se intenta subir al servidor
         $ruta = "../views/images/".$archivo;
         if (move_uploaded_file($temp, 'C:\laragon\www\metas\moduloC\views\images\\'.$archivo)) {
             //Cambiamos los permisos del archivo a 777 para poder modificarlo posteriormente
             chmod('C:\laragon\www\metas\moduloC\views\images\\'.$archivo, 0777);
             //Mostramos el mensaje de que se ha subido co éxito
             echo '<div><b>Se ha subido correctamente la imagen.</b></div>';
             //Mostramos la imagen subida
             echo '<p><img src="C:\laragon\www\metas\moduloC\views\images\\'.$archivo.'"></p>';
         }
         else {
            //Si no se ha podido subir la imagen, mostramos un mensaje de error
            echo '<div><b>Ocurrió algún error al subir el fichero. No pudo guardarse.</b></div>';
         }
       }
    }
 }

$persona->UpdatePersona($telefono, $fecha_nac, $email, $ruta, $direccion, $idpersonal);
?>