<<<<<<< HEAD
<?php 
include_once("header.php");

$data = $persona->MostrarPersona($_SESSION['personal']);
$_SESSION['inicio'];


=======
<?php include_once("header.php"); ?>
<?php include_once("sidebar.php"); ?>
<?php
//contiene esto el header.php:
//$persona = new Persona();
//$data = $persona->MostrarPersona($_SESSION['personal']);
//$funciones = new Funciones();

$_SESSION['inicio'];

>>>>>>> zeta
$fun = $funciones->Consultar1($_SESSION['personal']);
//segun id funciones guardara y pasara para imprimir cada funcion del personal y su progreso si se agrega o cambia, se cambia las variables
//variables destinadas a la tabla funciones 19/04/23
while($fila=$fun->fetch_array(MYSQLI_ASSOC)){
  if($fila['idfunciones']==3){
    $desarrollo = $fila['funcion'];
    $porcentaje = $fila['unimed'];
    $cantidad1 = $fila['cantidad'];
    $fecha1 = $fila['fecha_creacion'];
  }
  if($fila['idfunciones']==4){
    $ingresoDB = $fila['funcion'];
    $numIngreso = $fila['unimed'];
    $cantidad2 = $fila['cantidad'];
    $fecha2 = $fila['fecha_creacion'];
  }
  if($fila['idfunciones']==5){
    $revision = $fila['funcion'];
    $numRevision = $fila['unimed'];
    $cantidad3 = $fila['cantidad'];
    $fecha3 = $fila['fecha_creacion'];
  }

}
?>

<<<<<<< HEAD
=======

>>>>>>> zeta
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
                  <h5 class="card-title"><?php echo $desarrollo; ?> <span>| Hoy</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-cart"></i>
                    </div>
                    <div class="ps-3">
                      <h6>% <?php echo $cantidad1; ?></h6>
                      <span class="text-success small pt-1 fw-bold"><?php echo $porcentaje;?></span> <span class="text-muted small pt-2 ps-1">increase</span>

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
                  <h5 class="card-title"><?php echo $ingresoDB; ?> <span>| Hoy</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-currency-dollar"></i>
                    </div>
                    <div class="ps-3">
                      <h6><?php echo $cantidad2; ?></h6>
                      <span class="text-success small pt-1 fw-bold"><?php echo $numIngreso; ?></span> <span class="text-muted small pt-2 ps-1">increase</span>

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
                  <h5 class="card-title"><?php echo $revision; ?><span>| Este mes</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-people"></i>
                    </div>
                    <div class="ps-3">
                      <h6><?php echo $cantidad3; ?></h6>
                      <span class="text-danger small pt-1 fw-bold"><?php echo $numRevision; ?></span> <span class="text-muted small pt-2 ps-1">decrease</span>

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

                  <script>
                    document.addEventListener("DOMContentLoaded", () => {
                      new ApexCharts(document.querySelector("#reportsChart"), {
                        series: [{
                          name: '<?php echo $desarrollo?>',
                          data: [<?php echo $cantidad1?>, 40, 28, 51, 42, 82, 56],
                        }, {
                          name: '<?php echo $ingresoDB?>',
                          data: [<?php echo $cantidad2?>, 32, 45, 32, 34, 52, 41]
                        }, {
                          name: '<?php echo $revision?>',
                          data: [<?php echo $cantidad3?>, 11, 32, 18, 9, 24, 11]
                        }],
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
                          categories: ["2018-09-19T00:00:00.000Z", "2018-09-19T01:30:00.000Z", "2018-09-19T02:30:00.000Z", "2018-09-19T03:30:00.000Z", "2018-09-19T04:30:00.000Z", "2018-09-19T05:30:00.000Z", "2018-09-19T06:30:00.000Z"]
                        },
                        tooltip: {
                          x: {
                            format: 'dd/MM/yy HH:mm'
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
              <h5 class="card-title">Alcance de reportes mensuales <span>| This Month</span></h5>

              <div id="budgetChart" style="min-height: 400px;" class="echart"></div>

              <script>
                document.addEventListener("DOMContentLoaded", () => {
                  var budgetChart = echarts.init(document.querySelector("#budgetChart")).setOption({
                    legend: {
                      data: ['META o desarrolo asignado', '<?php echo $desarrollo; ?> actual']
                    },
                    radar: {
                      // shape: 'circle',
                      indicator: [
                        {
                          name: 'Mas cosas...',
                          max: 650
                        },
                        {
                          name: '<?php echo $desarrollo; ?>',
                          max: 100
                        },
                        {
                          name: 'Mas cosas...',
                          max: 300
                        },
                        {
                          name: '<?php echo $ingresoDB; ?>',
                          max: 500
                        },
                        {
                          name: 'Mas cosas...',
                          max: 500
                        },
                        {
                          name: '<?php echo $revision; ?>',
                          max: 500
                        }
                      ]
                    },
                    series: [{
                      name: 'Budget vs spending',
                      type: 'radar',
                      data: [{
                          value: [420, 30, 200, 350, 500, 180],
                          name: 'META o desarrolo asignado'
                        },
                        {
                          value: [500, <?php echo $cantidad1; ?>, 280, <?php echo $cantidad2; ?>, 420, <?php echo $cantidad3; ?>],
                          name: '<?php echo $desarrollo; ?> actual'
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
              <h5 class="card-title">Envios <span>| Today</span></h5>

              <div id="trafficChart" style="min-height: 400px;" class="echart"></div>

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
                      name: 'funciones diarias',
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
                        {
                          value: <?php echo $cantidad1; ?>,
                          name: '<?php echo $desarrollo; ?>'
                        },
                        {
                          value: <?php echo $cantidad2; ?>,
                          name: '<?php echo $ingresoDB; ?>'
                        },
                        {
                          value: <?php echo $cantidad3; ?>,
                          name: '<?php echo $revision; ?>'
                        }

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
