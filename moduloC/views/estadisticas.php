<?php 
include_once("header.php");
require "../models/reportes.model.php";
//$_SESSION['personal'] -> esto contiene idpersonal en variable global

$_SESSION['inicio'];
$reportes = new Reportes();
$asistencia = $reportes->estadisticasAsistencia($_SESSION['personal']);
$totalReportes = $reportes->totalReportes($_SESSION['personal']);
$numeroFunciones = $reportes->numeroFunciones($_SESSION['personal']);

$grafico1 = $reportes->grafico1($_SESSION['personal']);
$grafico2 = $reportes->grafico2($_SESSION['personal']);
$grafico3 = $reportes->grafico3($_SESSION['personal']);
//prueba
$grafico = $reportes->grafico12($_SESSION['personal']);






?>

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>ESTADISTICAS</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item active">Dashboard</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section dashboard">
      <div class="row">

        <!-- Left side columns -->
        <div class="col-lg-8">
          <div class="row">

            <!-- Sales Card -->
            <div class="col-xxl-4 col-md-6">
              <div class="card info-card sales-card">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>


                
<!--Aqui LLAMAR LOS DATOS DE ESCRITURAS, DESARROLLO, ASISTENCIA-->


                <div class="card-body">
                  <h5 class="card-title">ASISTENCIA<span>| total</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-cart"></i>
                    </div>
                    <div class="ps-3">
                      <h6><?= $asistencia['cantidad'];?></h6>
                      <span class="text-success small pt-1 fw-bold"><?= $asistencia['nombre']?></span> <span class="text-muted small pt-2 ps-1"><?= date("d/m/Y");?></span>

                          </div>
                        </div>
                      </div>

                    </div>
                </div><!-- End Sales Card -->

            <!-- Revenue Card -->
            <div class="col-xxl-4 col-md-6">
              <div class="card info-card revenue-card">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>

                <div class="card-body">
                  <h5 class="card-title">REPORTES<span>| Total</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-currency-dollar"></i>
                    </div>
                    <div class="ps-3">
                      <h6><?= $totalReportes['total'];?></h6>
                      <span class="text-success small pt-1 fw-bold">CANTIDAD DE REPORTES<br><?= $totalReportes['enviados'];?></span> <span class="text-muted small pt-2 ps-1">REPORTES enviados</span>

                    </div>
                  </div>
                </div>

                </div>
              </div><!-- End Revenue Card -->

            <!-- Customers Card -->
            <div class="col-xxl-4 col-xl-12">

              <div class="card info-card customers-card">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>

                <div class="card-body">
                  <h5 class="card-title">FUNCIONES<span>| Total</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-people"></i>
                    </div>
                    <div class="ps-3">
                      <h6><?=$numeroFunciones['total']?> </h6>
                      <span class="text-danger small pt-1 fw-bold">Funciones asigandas a <?= $asistencia['nombre']?></span> <span class="text-muted small pt-2 ps-1"><!--puede ir algo aqui--></span>

                    </div>
                  </div>

                </div>
              </div>

            </div><!-- End Customers Card -->
          

            <!-- Reports -->
            <div class="col-12">
              <div class="card">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>

                <div class="card-body">
                  <h5 class="card-title">Reports <span>/Today</span></h5>

                  <!-- Line Chart -->
                  <div id="reportsChart"></div>

                  <?php 
                    $data = array();
                    $fecha = array();
                    
                    while($row = $grafico->fetch_array(MYSQLI_ASSOC)) {
                        $funcion = $row["funcion"];
                        $total = $row["total"];
                        array_push($fecha, $row['fecha']);
                        //$fecha = strtotime($row["fecha"]) * 1000; // Convertir fecha a milisegundos
                    
                        // Agregar los datos al objeto de datos
                        if (array_key_exists($funcion, $data)) {
                            array_push($data[$funcion]["data"], array($total));
                        } else {
                            $data[$funcion] = array(
                                "name" => $funcion,
                                "data" => array(array($total))
                            );
                        }
                    }
                    
                    // Convertir el objeto de datos a un array
                    $series = array();
                    foreach($data as $value) {
                        array_push($series, $value);
                    }
                    
                    //echo json_encode($series);
                    //echo json_encode($fecha);
                      ?>
                  
                  <script>
                      document.addEventListener("DOMContentLoaded", () => {
                        new ApexCharts(document.querySelector("#reportsChart"), {
                          series: <?php echo json_encode($series); ?>,
                          chart: {
                            height: 350,
                            type: 'area',
                            toolbar: {
                              show: false
                            },
                          },
                          markers: {
                            size: 4
                          },
                          colors: ['#4154f1', '#2eca6a', '#ff771d'],
                          fill: {
                            type: "gradient",
                            gradient: {
                              shadeIntensity: 1,
                              opacityFrom: 0.3,
                              opacityTo: 0.4,
                              stops: [0, 90, 300]
                            }
                          },
                          dataLabels: {
                            enabled: false
                          },
                          stroke: {
                            curve: 'smooth',
                            width: 2
                          },
                          xaxis: {
                            type: 'datetime',
                            categories:<?php echo json_encode($fecha);?>
                          },
                          tooltip: {
                            x: {
                              format: 'dd/MM/yy'
                            },
                          }
                        }).render();
                      });
                    </script>
                  <!-- End Line Chart -->

                </div>

              </div>
            </div><!-- End Reports -->




          </div>
        </div><!-- End Left side columns -->

        <!-- Right side columns -->
        <div class="col-lg-4">

          <!-- Card with titles, buttons, and links -->
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Card with titles, buttons, and links</h5>
              <h6 class="card-subtitle mb-2 text-muted">Card subtitle</h6>
              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
              <p class="card-text"><a href="#" class="btn btn-primary">Button</a></p>
              <a href="#" class="card-link">Card link</a>
              <a href="#" class="card-link">Another link</a>
            </div>
          </div><!-- End Card with titles, buttons, and links -->



          <!-- Card with an image overlay -->
          <div class="card">
            <img src="assets/img/card.jpg" class="card-img-top" alt="...">
            <div class="card-img-overlay">
              <h5 class="card-title">Card with an image overlay</h5>
              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            </div>
          </div><!-- End Card with an image overlay -->
          </div>

<!--graficos-->
          <!-- Budget Report -->
          <div class="card">
            <div class="filter">
              <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
              <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                <li class="dropdown-header text-start">
                  <h6>Filter</h6>
                </li>

                <li><a class="dropdown-item" href="#">Today</a></li>
                <li><a class="dropdown-item" href="#">This Month</a></li>
                <li><a class="dropdown-item" href="#">This Year</a></li>
              </ul>
            </div>

            <div class="card-body pb-0">
              <h5 class="card-title">Reportes enviados <span>| Metas</span></h5>

              <div id="budgetChart" style="min-height: 400px;" class="echart"></div>          

              <script>
                document.addEventListener("DOMContentLoaded", () => {
                  var budgetChart = echarts.init(document.querySelector("#budgetChart")).setOption({
                    legend: {
                      data: ['Metas', 'Actual']
                    },
                    radar: {
                      // shape: 'circle',
                      indicator: [<?php 
                          $valores = array();
                          $metas = array();
                          while($fila = $grafico2->fetch_assoc()) {
                            $max = 100;
                            array_push($valores, $fila['total']);
                            array_push($metas, $fila['metas']);
                            echo "{name: '" . $fila['asignado'] . "', mas: " . $max . "},";
                          } 
                        ?>
                      ]
                    },
                    series: [{
                      name: 'Budget vs spending',
                      type: 'radar',
                      data: [{
                          value: <?php echo json_encode($metas);?>,
                          name: 'Metas'
                        },
                        {
                          value: <?php echo json_encode($valores);?>,
                          name: 'Actual'
                        }
                      ]
                    }]
                  });
                });
              </script>

            </div>
          </div><!-- End Budget Report -->

          <!-- Website Traffic -->
          <div class="card">
            <div class="filter">
              <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
              <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                <li class="dropdown-header text-start">
                  <h6>Filter</h6>
                </li>

                <li><a class="dropdown-item" href="#">Today</a></li>
                <li><a class="dropdown-item" href="#">This Month</a></li>
                <li><a class="dropdown-item" href="#">This Year</a></li>
              </ul>
            </div>

            <div class="card-body pb-0">
              <h5 class="card-title">Funciones asignadas <span>| Reportes</span></h5>

              <div id="trafficChart" style="min-height: 400px;" class="echart"></div>
              <?php // aqui para sacar datos y colocarlos al grafico
              //$grafico3 = $reportes->grafico3($_SESSION['personal']); ->cambiado de posicion arriba
               //echo $grafico3['total'];
               //echo $grafico3['asignado'];          
              ?>
              <script>
                document.addEventListener("DOMContentLoaded", () => {
                  echarts.init(document.querySelector("#trafficChart")).setOption({
                    tooltip: {
                      trigger: 'item'
                    },
                    legend: {
                      top: '5%',
                      left: 'center'
                    },
                    series: [{
                      name: 'Access From',
                      type: 'pie',
                      radius: ['40%', '70%'],
                      avoidLabelOverlap: false,
                      label: {
                        show: false,
                        position: 'center'
                      },
                      emphasis: {
                        label: {
                          show: true,
                          fontSize: '18',
                          fontWeight: 'bold'
                        }
                      },
                      labelLine: {
                        show: false
                      },
                      data: [
                        <?php 
                          while($fila1 = $grafico3->fetch_assoc()){
                          ?>
                          {
                              value: <?php echo $fila1["total"]; ?>,
                              name: '<?php echo $fila1["asignado"]; ?>'
                          },
                          <?php 
                          } 
                          ?>
                      ]
                    }]
                  });
                });
              </script>

            </div>
          </div><!-- End Website Traffic -->

        </div><!-- End Right side columns -->
      </div>
    </section>

  </main><!-- End #main -->

<?php include_once("footer.php");?>
