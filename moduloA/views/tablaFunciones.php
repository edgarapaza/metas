<?php
require "header.php";

require "../models/listado.models.php";

$listado = new Listado();

$datCargos = $listado->Cargos();
$list = $listado->ListadoPersonal();

?>


  <main id="main" class="main">
    <div class="pagetitle">
      <h1>Listado de Personal</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item">Tables</li>
          <li class="breadcrumb-item active">Data</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section">
      <div class="row">
        <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Listado de personal</h5>

              <!-- Table with stripped rows -->
              <table class="table datatable">
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">Nombre</th>
                    <th scope="col">Estado</th>
                    <th scope="col">Options</th>
                  </tr>
                </thead>
                
                <tbody>
                  <?php
                     $i = 1;
                     while($fila = $list->fetch_array(MYSQLI_ASSOC))
                     {
                  ?>
                  <tr>
                    <th scope="row"><?php echo $i; ?></th>
                    <td><?php  echo $fila['per'];?></td>
                    <td>Asig</td>
                    <td>
                      <!-- Extra Large Modal -->
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#ExtralargeModal" onclick="EnviarCodigo(<?php echo $fila['id_personal'];?>)">
                          Activar
                        </button>

                        <div class="modal fade" id="ExtralargeModal" tabindex="-1">
                          <div class="modal-dialog modal-xl">
                            <div class="modal-content">
                              <div class="modal-header">
                                <h5 class="modal-title">Extra Large Modal</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                              </div>
                              <div class="modal-body">
                                <form method="post" action="../controllers/funciones.controller.php">
                                    <div class="row mb-3">
                                      <input type="hidden" name="idpersonal" id="idpersonal">
                                    </div>

                                    <div class="row mb-3">
                                      <label for="funcion" class="col-sm-3 col-form-label">Funcion</label>
                                      <div class="col-sm-9">
                                        <input type="text" name="funcion" id="funcion" class="form-control">
                                      </div>
                                    </div>

                                    <div class="row mb-3">
                                      <label for="unidadMedida" class="col-sm-3 col-form-label">Unidad Medida</label>
                                      <div class="col-sm-9">
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
                                      <label for="frecuencia" class="col-sm-3 col-form-label">Frecuencia</label>
                                      <div class="col-sm-9">
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
                                      <label for="cantidad" class="col-sm-3 col-form-label">Cantidad</label>
                                      <div class="col-sm-9">
                                        <input type="number" min="0.0" max="999999" name="cantidad" id="cantidad" class="form-control">
                                      </div>
                                    </div>

                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                    <button type="submit" class="btn btn-primary">Save changes</button>
                                </form>
                              </div>

                            </div>
                          </div>
                        </div>
                    </td>
                  </tr>
                  <?php
                      $i++;
                     }
                    
                  ?>
                  
                </tbody>
              </table>
              <!-- End Table with stripped rows -->

            </div>
          </div>

        </div>
      </div>
    </section>
  </main><!-- End #main -->


<?php require "footer.php"; ?>

<script type="text/javascript">
    function EnviarCodigo(cod)
    {
        var casilla = document.getElementById('idpersonal');
        casilla.value = cod;
    }
</script>