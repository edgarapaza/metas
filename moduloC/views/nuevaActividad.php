<?php include_once("header.php");?>
<?php include_once("sidebar.php"); ?>
  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Nueva Actividad</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item active">Nueva Actividad</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->


    <section class="section">
      <div class="row">
        <div class="col-lg-10">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Agregar Nueva Actividad o Funcion a Cumplir</h5>

              <!-- General Form Elements -->
              <form action="../controllers/funciones.controller.php">

                <input type="hidden" name="idpersonal" id="idpersonal" value="<?php echo $_SESSION['personal']; ?>">

                <div class="row mb-3">
                  <label for="funcion" class="col-sm-2 col-form-label">Función / Actividad</label>
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

                <p>Nota: Debe indicar la frecuencia de la meta y la cantidad de medicion de esta actividad</p>
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
                  <div class="col-sm-5">
                    <button type="cancel" class="btn btn-secundary">Cancelar</button>
                  </div>
                  <div class="col-sm-5">
                    <button type="submit" class="btn btn-primary">Guardar Informacion</button>
                  </div>
                </div>

              </form><!-- End General Form Elements -->

            </div>
          </div>

        </div>
      </div>
    </section>

  </main><!-- End #main -->

<?php include_once("footer.php");?>