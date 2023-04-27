<?php include_once("header.php"); ?>

    <main id="main" class="main">

        <div class="pagetitle">
        <h1>Mis Reportes</h1>
        <nav>
            <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="index.php">Home</a></li>
            <li class="breadcrumb-item active">Mis Reportes</li>
            </ol>
        </nav>
        </div><!-- End Page Title -->


        <section class="section">
        <div class="row">
            <div class="col-lg-12">
                
                <!-- Top Selling -->
                <div class="card top-selling overflow-auto">

                    <div class="card-body pb-0">
                    <h5 class="card-title">Reportes <span>| Esta Semana</span></h5>

                    <table class="table table-borderless">
                        <thead>
                        <tr>
                            <th scope="col">Fecha</th>
                            <th scope="col">Reporte</th>
                            <th scope="col">Avance</th>
                            <th scope="col">Estado</th>
                        </tr>
                        </thead>
                        <tbody>
                            <?php 
                                $i = 1;
                                while($funcion = $fun->fetch_array(MYSQLI_ASSOC))
                                {
                                    while($reporte = $dato->fetch_array(MYSQLI_ASSOC))
                                    {
                                        #echo $reporte['idreporte'];
                                        #echo $reporte['idfunciones'];
                                        #echo $reporte['fecha'];
                                        #echo $reporte['cantidad'];
                                        #echo $funcion['funcion'];
                                        #echo $i;
                            ?>
                            <tr>
                                <th scope="row"><?php echo $reporte['fecha']; ?></th>
                                <td class="text-primary fw-bold"><?php echo $funcion['funcion']; ?></td>
                                <td><?php echo $reporte['cantidad']; ?></td>
                                <td>                                    
                                    <?php
                                        if(!$reporte['cantidad']){
                                            echo "<span class='badge bg-danger'>Falta</span>";
                                        }else{
                                            echo "<span class='badge bg-success'>OK</span>";
                                        }
                                    ?>
                                </td>
                            </tr>
                            <?php
                                    $i++;
                                    }
                                }
                            ?>
                        </tbody>
                    </table>

                    </div>

                </div><!-- End Top Selling -->

            </div>
        </div>
        </section>

    </main><!-- End #main -->

<?php include_once("footer.php");?>