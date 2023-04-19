<?php 
include_once("header.php"); 
require "../models/cargos.model.php";

$cargos = new Cargos();
$datCargos = $cargos->Consultar();

?>

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Dashboard</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">Personal</a></li>
          <li class="breadcrumb-item active">Funciones</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section">
      <div class="row">
        <div class="col-lg-6">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Agregar Funciones</h5>

              <!-- General Form Elements -->
              <form method="post" action="../controllers/funciones.controller.php">
                <div class="row mb-3">
                  <input type="text" name="idpersonal" id="idpersonal" value="<?php #echo $_SESSION['admin'];?>">

                  <label for="nombre" class="col-sm-2 col-form-label">Text</label>
                  <div class="col-sm-10">
                    <input type="text" value="<?php #echo $nombre = 'Edgar';?>" class="form-control">
                  </div>
                </div>

                <div class="row mb-3">
                  <label class="col-sm-2 col-form-label">Cargo</label>
                  <div class="col-sm-10">
                    <select class="form-select" name="idcargo" id="idcargo" aria-label="Default select example">
                      <option selected>Open this select menu</option>
                      <?php
                        while($fila = $datCargos->fetch_array())
                          {
                            #echo $fila['id_oficina'];
                            #echo $fila['nombre_cargo'];
                            echo "<option value='".$fila['id_cargos']."'>".$fila['nombre_cargo']."</option>";
                          }
                      ?>

                    </select>
                  </div>
                </div>
                
                <div class="row mb-3">
                  <label for="funcion" class="col-sm-2 col-form-label">Funcion</label>
                  <div class="col-sm-10">
                    <input type="text" name="funcion" id="funcion" class="form-control">
                  </div>
                </div>

                <div class="row mb-3">
                  <label for="unidadMedida" class="col-sm-2 col-form-label">Unidad Medida</label>
                  <div class="col-sm-10">
                    <select name="unidadMedida" id="unidadMedida" class="form-select" aria-label="Tipo de unidad de Medida">
                      <option selected>[Seleccionar una opcion]</option>
                      <option value="Numerico">Numerico</option>
                      <option value="Moneda">Moneda</option>
                      <option value="Porcentaje %">Porcentaje %</option>
                      <option value="Documento">Documento</option>
                      <option value="Archivo">Archivo</option>
                      <option value="Metro Lineal">Metro Lineal</option>
                      <option value="Litros">Litros</option>
                      <option value="Metros">Metros</option>
                      <option value="Kilogramos">Kilogramos</option>
                    </select>
                  </div>
                </div>

                <div class="row mb-3">
                  <label for="frecuencia" class="col-sm-2 col-form-label">Frecuencia</label>
                  <div class="col-sm-10">
                    <select name="frecuencia" id="frecuencia" class="form-select" aria-label="Tipo de unidad de Medida">
                      <option selected>[Seleccionar una opcion]</option>
                      <option value="Diario">Diario</option>
                      <option value="Semanal">Semanal</option>
                      <option value="Mensual">Mensual</option>
                      <option value="Anual">Anual</option>
                      <option value="1er Semestre">1er Semestre</option>
                      <option value="2do Semestre">2do Semestre</option>
                      <option value="1er Trimestre">1er Trimestre</option>
                      <option value="2do Trimestre">2do Trimestre</option>
                      <option value="3er Trimestre">3er Trimestre</option>
                      <option value="4to Trimestre">4to Trimestre</option>
                    </select>
                  </div>
                </div>
                <div class="row mb-3">

                  <label for="cantidad" class="col-sm-2 col-form-label">Cantidad</label>
                  <div class="col-sm-10">
                    <input type="number" min="0" max="999999" name="cantidad" id="cantidad" class="form-control">
                  </div>
                </div>


                <div class="row mb-3">
                  <div class="col-sm-3">
                    <button type="reset">Cancelar</button>
                  </div>
                  <div class="col-sm-10">
                    <button type="submit" id="btnGuardar" class="btn btn-primary">Guardar</button>
                  </div>
                </div>

              </form><!-- End General Form Elements -->
            </div>
          </div>

        </div>
      </div>
    </section>

  </main><!-- End #main -->

<?php include_once("footer.php"); ?>