<?php include_once("header.php"); ?>

<main id="main" class="main">

    <div class="pagetitle">
      <h1>ApexCharts</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item">Charts</li>
          <li class="breadcrumb-item active">ApexCharts</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <p>ApexCharts Examples GRAFICOS PARA VER EL DESEMPEÑO</p>

    <section class="section">
      <div class="row">
        
      <div class="col-lg-6">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Total de Reportes Enviados</h5>

              <!-- Bar Chart -->
              <div id="barChart" style="min-height: 400px;" class="echart"></div>
              <?php 
              include "../models/reportes.model.php";
              $reportes = new Reportes();
              $data = $reportes->verReportes();

              $datos = array();

                // Recorrer el resultado y añadir los datos al array
                while ($fila = $data->fetch_assoc()) {
                    $datos[$fila['nombre']] = $fila['cantidad'];
                }
                // Convertir los datos a formato JSON
                $datos_json = json_encode($datos);
              ?>

              <script>
                document.addEventListener("DOMContentLoaded", () => {
                  var datos = <?php echo $datos_json; ?>;
                  // Convertir los datos a un array de objetos
                  var datos_array = [];
                  Object.keys(datos).forEach(function(key) {
                      datos_array.push({
                        name: key,
                        value: datos[key]
                      }); 
                    });

                  echarts.init(document.querySelector("#barChart")).setOption({
                    xAxis: {
                      type: 'category',
                      data: ['edg', 'ang', 'jho', 'elm', 'jer', 'sa', 'do']
                    },
                    yAxis: {
                      type: 'value'
                    },
                    series: [{
                      data: datos_array,
                      type: 'bar'
                    }]
                  });
                });
              </script>
              <!-- End Bar Chart -->

            </div>
          </div>
        </div>

        <div class="col-lg-6">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">ASISTENCIA</h5>

              <!-- Bar Chart -->
              <canvas id="barChart1" style="max-height: 400px;"></canvas>

              <?php
              //ya esta instanciado la clase Reportes-> $reportes
                
                $totalAsistencia = $reportes->totalAsistencia();

                $labels = array();
                $data = array();
              
                while ($fila1 = $totalAsistencia->fetch_assoc()) {
                    array_push($labels, $fila1['nombre']);
                    array_push($data, $fila1['cantidad']);
                }
              
              ?>


              <script>
                document.addEventListener("DOMContentLoaded", () => {
                  new Chart(document.querySelector('#barChart1'), {
                    type: 'bar',
                    data: {
                      labels: <?php echo json_encode($labels); ?>,
                      datasets: [{
                        label: 'Total de Asistencia',
                        data: <?php echo json_encode($data); ?>,
                        backgroundColor: [
                          'rgba(255, 99, 132, 0.2)',
                          'rgba(255, 159, 64, 0.2)',
                          'rgba(255, 205, 86, 0.2)',
                          'rgba(75, 192, 192, 0.2)',
                          'rgba(54, 162, 235, 0.2)',
                          'rgba(153, 102, 255, 0.2)',
                          'rgba(201, 203, 207, 0.2)'
                        ],
                        borderColor: [
                          'rgb(255, 99, 132)',
                          'rgb(255, 159, 64)',
                          'rgb(255, 205, 86)',
                          'rgb(75, 192, 192)',
                          'rgb(54, 162, 235)',
                          'rgb(153, 102, 255)',
                          'rgb(201, 203, 207)'
                        ],
                        borderWidth: 1
                      }]
                    },
                    options: {
                      scales: {
                        y: {
                          beginAtZero: true
                        }
                      }
                    }
                  });
                });
              </script>
              <!-- End Bar CHart -->

            </div>
          </div>
        </div>

       

        <div class="col-lg-6">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Pie Chart</h5>

              <!-- Pie Chart -->
              <div id="pieChart" style="min-height: 400px;" class="echart"></div>

              <script>
                document.addEventListener("DOMContentLoaded", () => {
                  echarts.init(document.querySelector("#pieChart")).setOption({
                    title: {
                      text: 'Referer of a Website',
                      subtext: 'Fake Data',
                      left: 'center'
                    },
                    tooltip: {
                      trigger: 'item'
                    },
                    legend: {
                      orient: 'vertical',
                      left: 'left'
                    },
                    series: [{
                      name: 'Access From',
                      type: 'pie',
                      radius: '50%',
                      data: [{
                          value: 1048,
                          name: 'Search Engine'
                        },
                        {
                          value: 735,
                          name: 'Direct'
                        },
                        {
                          value: 580,
                          name: 'Email'
                        },
                        {
                          value: 484,
                          name: 'Union Ads'
                        },
                        {
                          value: 300,
                          name: 'Video Ads'
                        }
                      ],
                      emphasis: {
                        itemStyle: {
                          shadowBlur: 10,
                          shadowOffsetX: 0,
                          shadowColor: 'rgba(0, 0, 0, 0.5)'
                        }
                      }
                    }]
                  });
                });
              </script>
              <!-- End Pie Chart -->

            </div>
          </div>
        </div>
    
    
        <div class="col-lg-6">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">progreso diario</h5>

              <!-- Area Chart -->
              <div id="areaChart"></div>
              <?php
              //ya esta instanciado la clase Reportes-> $reportes
              $progreso = $reportes->progreso();
              $diario = array();
              $total_reportes = array();

              while($fila2 = $progreso->fetch_assoc()){
                
                array_push($diario, $fila2['dia']);
                array_push($total_reportes, $fila2['cantidad_reportes']);

              }
                ?>
              <script>
                document.addEventListener("DOMContentLoaded", () => {
                  const series = {
                    "monthDataSeries1": {
                      "prices": <?php echo json_encode($total_reportes); ?>,
                      "dates": <?php echo json_encode($diario); ?>
                    }
                  }
                  console.log(series);
                  new ApexCharts(document.querySelector("#areaChart"), {
                    series: [{
                      name: "STOCK ABC",
                      data: series.monthDataSeries1.prices
                    }],
                    chart: {
                      type: 'area',
                      height: 350,
                      zoom: {
                        enabled: false
                      }
                    },
                    dataLabels: {
                      enabled: false
                    },
                    stroke: {
                      curve: 'straight'
                    },
                    subtitle: {
                      text: 'Pogreso',
                      align: 'left'
                    },
                    labels: series.monthDataSeries1.dates,
                    xaxis: {
                      type: 'datetime',
                    },
                    yaxis: {
                      opposite: true
                    },
                    legend: {
                      horizontalAlign: 'left'
                    }
                  }).render();
                });
              </script>
              <!-- End Area Chart -->

            </div>
          </div>
        </div>



<!--aqui acaba los graficos, su div y dection para cerrar-->
        </div>
    </section>



<?php include_once("footer.php");?>