<?php
require "header.php";
require "../models/listado.class.php";

$listado = new Listado();
$list = $listado->ListadoPersonal();

$_SESSION['inicio'];
?>


  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Data Tables</h1>
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
              <h5 class="card-title">Datatables</h5>

              <!-- Table with stripped rows -->
              <table class="table datatable">
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">Name</th>
                    <th scope="col">Nivel</th>
                    <th scope="col">check-user</th>
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
                    <td>
                      <?php  
                      //echo $fila['niv_usu'];
                      switch ($fila['niv_usu'])
                      {
                          case 1:
                              echo "Administracion";
                              break;
                          case 2:
                              echo "Jefe de Area";
                              break;
                          case 3:
                              echo "Personal";
                              break;
                      }
                      ?>
                      </td>
                      
                    <td>
                      <?php  
                      
                      if($fila['chk_usu']==1)
                      {
                        echo "<span class='badge bg-success'>Activo</span>";
                      }else{
                        echo "<span class='badge bg-danger'>Inactivo</span>";
                      }
                      
                      ?>
                    </td>
                    <td>
                      <label for="mi-checkbox" onclick="activarCheckbox()">
                        <a href="../controllers/tablas.controller.php?idper=<?php echo  $fila['id_personal']; ?>">
                          <span>Cambiar Estado</span>
                        </a>
                      </label>
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