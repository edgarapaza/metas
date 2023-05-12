<?php
require "../models/Persona.model.php";

$persona = new Persona();

$idpersonal= $_REQUEST['idpersonal'];
$telefono  = $_REQUEST['telefono'];
$email     = $_REQUEST['email'];
$fecha_nac = $_REQUEST['fecha_nacimiento'];
$direccion = $_REQUEST['direccion'];


if (isset($_REQUEST['btn-agregar']))
{
    $archivo = $_FILES['mifoto']['name'];

    //Si el archivo contiene algo y es diferente de vacio
    if (isset($archivo) && $archivo != "")
    {

         //Taking the files from input
          $file = $_FILES['mifoto'];
          //Getting the file name of the uploaded file
          $fileName = $_FILES['mifoto']['name'];
          //Getting the Temporary file name of the uploaded file
          $fileTempName = $_FILES['mifoto']['tmp_name'];
          //Getting the file size of the uploaded file
          $fileSize = $_FILES['mifoto']['size'];
          //getting the no. of error in uploading the file
          $fileError = $_FILES['mifoto']['error'];
          //Getting the file type of the uploaded file
          $fileType = $_FILES['mifoto']['type'];

          //Getting the file ext
          $fileExt = explode('.',$fileName);
          $fileActualExt = strtolower(end($fileExt));

          //Array of Allowed file type
          $allowedExt = array("jpg","jpeg","png","pdf");


          //Checking, Is file extentation is in allowed extentation array

          if (isset($_FILES['mifoto']))
          {
              //Checking, Is there any file error
              if($fileError == 0)
              {
                  //Checking,The file size is bellow than the allowed file size
                  if($fileSize < 10000000)
                  {
                      //Creating a unique name for file
                      $fileNemeNew = uniqid('',true).".".$fileActualExt;
                      //File destination
                      $fileDestination = '/public_html/metas/moduloC/views/images/'.$fileName;
                      $ruta = "images/".$fileName;
                      //function to move temp location to permanent location
                      move_uploaded_file($fileTempName, $fileDestination);

                      $persona->UpdatePersona($idpersonal, $telefono, $email, $ruta);

                      //Message after success
                      echo "File Uploaded successfully";
                      header("Location: ../views/index.php");
                  }else{
                      //Message,If file size greater than allowed size
                      echo "File Size Limit beyond acceptance";
                      header("Location: ../../index.php");
                  }
              }else{
                  //Message, If there is some error
                  echo "Something Went Wrong Please try again!";
                  header("Location: ../../index.php");
              }
          }else{
              //Message,If this is not a valid file type
              echo "You can't upload this extention of file";
              header("Location: ../../index.php");
          }
   }
}
?>
