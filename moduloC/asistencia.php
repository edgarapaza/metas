<?php
session_start();

include "./models/personal.model.php";

$datper = new Personal();
$data = $datper->MostrarPersonal($_SESSION['personal']);

//crear una clase model para las avisos emergentes
class Model{
public function Dates($codigoPersonal, $idpersonal, $username,$password,$nivel)
    {
        $sql = "SELECT CONCAT(nombre,' ',apellidos) AS personal, foto FROM personal WHERE id_personal = $idpersonal;";
        $this->conn->ConsultaCon($sql);
        return $sql;
    }
  }
  
?>

<script type="text/javascript">
    function Tipo()
    {

    }
</script>

<link rel="stylesheet" href="css/estilo.css">


<form action="./controllers/asistencia.controller.php">
    <input type="text" name="idpersonal" id="idpersonal" value="<?php echo $_SESSION['personal'];?>">
    <input type="text" name="tipo" id="tipo" value="Entrada">

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
                    <img class="person" src="images/person.png" alt="Persona">
                    <br>
                    <span><img src="images/candado.png" alt=""></span>
                    <input class="entrada"type="password" name="pass1" id="pass1" required>
            </div>
            <div class="asistencia-cuerpo">
                    <!-- Cuadros asistencia -->
                    <a href="#" onclick="Tipo()" id="open">
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

                    <a href="#" id="open1">
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
                      nombre: <br>
                      hora: <br>
                      fecha: <br>
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
              <!--hasta aqui-->
        </div>
      </div>
    <button type="submit">Registrar Asistencia</button>
</form>
<script src="ventanaE.js"></script>