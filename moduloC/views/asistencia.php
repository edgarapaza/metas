<?php
session_start();
#include "header.php";
include "./models/personal.model.php";

# Instanciar al al clase persona
$datper = new Personal();
$data = $datper->MostrarPersonal($_SESSION['personal']);
$registro = $datper->VerRegistro($_SESSION['personal']);

//crear una clase model para las avisos emergentes

?>

<link rel="stylesheet" href="css/estilo.css">
<script type="text/javascript" src="ventanaE.js"></script>

<form action="./controllers/asistencia.controller.php" method="get">
    <input type="hidden" name="idpersonal" id="idpersonal" value="<?php echo $_SESSION['personal'];?>">
    <input type="text" name="tipo" id="tipo" value="">


        <div class="container-fluid">
                <h2>Registro de asistencia</h2>
             <div class="asistencia">
                <div class="asistencia-titulo">
                  <h1>¿Quieres registrar?</h1>
                   Personal: <em><?php echo $data['nombre'];?></em>
                </div>
                <div class="asistencia-logo">
                    <img class="person" src="images/person.png" alt="Persona">
                    <br>
                    <span><img src="images/candado.png" alt=""></span>
                    <input type="password" name="pass1" id="pass1" required>
            </div>
            <div class="asistencia-cuerpo">
                    <!-- Cuadros asistencia -->
                    <a href="#" onclick="Tipo('Entrada')">
                        <div class="asistencia-entrada">
                            <div class="azul">
                              <h3>ENTRADA</h3>
                            </div>
                            <div>
                              <div class="asistencia-entrada-cuerpo">
                                <img src="images/entrada1.png" alt="Entrada">
                              </div>
                            </div>

                        </div>
                    </a>

                    <a href="#" onclick="Tipo('Salida')">
                        <div class="asistencia-salida">
                            <div class="rojo">
                                <h3>SALIDA</h3>
                            </div>
                            <div>
                              <div class="asistencia-entrada-imagen">
                                <img src="images/salida1.png" alt="Entrada">
                              </div>
                            </div>
                        </div>
                    </a>

                </div>

             </div>
             <!--ventana emergente 1-->
             <div class="modal-container" id="modal_container">
                  <div class="modal">
                    <h1>REGISTRO DE ASISTENCIA EXITOSO</h1>
                    <p>
                      Usted marco su asistencia<br>
                      nombre: <?php echo $registro['nombre'];?><br>
                      hora: <?php echo $registro['hora'];?><br>
                      fecha: <?php echo $registro['fecha'];?><br>
                    </p>
                    <button id="close">cerrar</button>
                  </div>
                </div>
            <!--hasta aqui-->
             <!--ventana emergente 2-->
             <div class="modal-container" id="modal_container1">
                    <div class="modal">
                      <h1>REGISTRO DE SALIDA EXITOSO</h1>
                      <p>
                        Usted marco su salida<br>
                        <?php echo $sql?>
                      </p>
                      <button id="close1">cerrar</button>
                    </div>
                  </div>
              <!--hasta aqui es-->
        </div>
</form>