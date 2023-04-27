<?php include_once("header.php"); ?>

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Dashboard</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item active"><a href="index.php">Home</a></li>

        </ol>
      </nav>
    </div><!-- End Page Title -->

      <div class="alert alert-success alert-dismissible fade show" role="alert">
                <i class="bi bi-check-circle me-1"></i>
                  <div id="mensaje"></div>
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>


    <section class="section">
      <div class="row">
        <div class="col-lg-6">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">REPORTE CORRESPONDIENTE FECHA <?php echo date("d-m-Y");?></h5>

              <!-- List group with custom content -->
              <ol class="list-group list-group-numbered">

                <?php
                    $i = 1;
                    while($fila = $fun->fetch_array(MYSQLI_ASSOC))
                    {
                      #echo $fila['idfunciones'];
                      #echo $fila['id_personal'];
                      #echo $fila['id_cargos'];
                      #echo $fila['unimed'];
                      #echo $fila['cantidad'];
                      #echo $i;
                    ?>

                <li class="list-group-item d-flex justify-content-between align-items-start" id="<?php echo $i; ?>">
                  <div class="ms-2 me-auto">
                    <input type="hidden" name="idpersonal" id="idpersonal<?php echo $i; ?>" value="<?php echo $_SESSION['personal'];?>">
                    <input type="hidden" name="idfunciones" id="idfunciones<?php echo $i; ?>" value="<?php echo $fila['idfunciones'];?>">
                    <input type="hidden" name="unimed" id="unimed<?php echo $i; ?>" value="<?php echo $fila['unimed'];?>">

                    <div class="fw-bold"><?php echo $fila['funcion'];?></div>
                    <em>Descripcion</em>
                  </div>
                  <?php
                    # $idpersonal,$idfunciones,$cantidad,$obs    $fecha,$tipo
                    $response = $funciones->ConsultaReporte($_SESSION['personal'], $fila['idfunciones']);
                    
                    
                    #echo $response['tipo'];
                    if(!is_null($response))
                    {
                      
                        echo "<span class='badge bg-success rounded-pill'>OK</span>";                     
                      
                    }
                    else{
                      echo "<span class='badge bg-danger rounded-pill'>FALTA</span>";
                    }
                    
                  ?>

                </li>
                <?php
                $i++;
                }
                ?>

              </ol><!-- End with custom content -->

            </div>
          </div>

        </div>

        <!-- Inicio del FORMULARIO -->
              
        <div class="col-lg-6">
        <form action="../controllers/reportes.controller.php" method="post">
          <div class="card" id="reporte">
            <div class="card-body">
              <h5 class="card-title">Reporte</h5>
                      <label for="" class="form-label">Cuanto avance hoy?</label>
                    <div class="input-group mb-3">
                      <input type="text" name="cantidad" id="cantidad" class="form-control" placeholder="" aria-label="Recibe un Numero" aria-describedby="basic-report">
                      <span class="input-group-text" id="basic-report"><span id="miunimed"></span></span>
                    </div>
                    <br>
                      <input type="hidden" name="miidpersonal" id="miidpersonal">
                      <input type="hidden" name="miidfuncion" id="miidfuncion">
                      <div class="col-12">
                          <button class="btn btn-primary w-50" name="btnSaveReporte" id="btnSaveReporte" type="button">Guardar</button>
                      </div>
            </div>
          </div>
        </form>
        </div>
      </div>
    </section>

  </main><!-- End #main -->

<?php include_once("footer.php");?>