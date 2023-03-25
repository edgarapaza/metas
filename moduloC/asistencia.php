<?php
##session_start();
include "header.php";
include "./models/personal.model.php";

$datper = new Personal();
$data = $datper->MostrarPersonal($_SESSION['personal']);
?>


<link rel="stylesheet" href="css/estilo.css">
<script type="text/javascript">
    function Tipo(valor)
    {
        var dat = document.getElementById('tipo').value = valor;
    }

</script>

<form action="./controllers/asistencia.controller.php" method="get">
    <input type="text" name="idpersonal" id="idpersonal" value="<?php echo $_SESSION['personal'];?>">
    <input type="text" name="tipo" id="tipo" value="">

      <div class="content">
        <div class="container-fluid">
             <div id="cuerpo"></div>
                <h2>Registro de asistencia</h2>

             <div class="asistencia">
                <div class="asistencia-titulo">
                  <h1>¿Quieres registrar?</h1>
                   Personal: <em><?php echo $data['nombre'];?></em>
                </div>
                <div class="asistencia-logo">
                    <img src="images/person.png" alt="Persona">
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
                                <img src="images/entrada.png" alt="Entrada">
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
                                <img src="images/salida.png" alt="Entrada">
                              </div>
                            </div>
                        </div>
                    </a>

                </div>
                <br>
                <center><button type="submit" id="registrar">Registrar Asistencia</button></center>

             </div>
        </div>
      </div>
<button id="ver" type="button">ver</button>
</form>
