<?php include_once("header.php"); ?>
<?php include_once("sidebar.php"); ?>

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
                        <tr>
                            <th scope="row">25/04/2023</th>
                            <td><a href="#" class="text-primary fw-bold">Desarrollo de software</a></td>
                            <td>64 submit 78 deletion 89 agragartions</td>
                            <td><span class="badge bg-success">OK</span></td>
                        </tr>
                        <tr>
                            <th scope="row">26/04/2023</th>
                            <td><a href="#" class="text-primary fw-bold">Desarrollo de software</a></td>
                            <td>8 submit 9 deletion 0 agregations</td>
                            <td><span class="badge bg-success">OK</span></td>
                        </tr>
                        <tr>
                            <th scope="row">27/04/2023</th>
                            <td><a href="#" class="text-primary fw-bold">Desarrollo de software</a></td>
                            <td>0</td>
                            <td><span class="badge bg-danger">Falta</span></td>
                        </tr>
                        </tbody>
                    </table>

                    </div>

                </div><!-- End Top Selling -->

            </div>
        </div>
        </section>

    </main><!-- End #main -->

<?php include_once("footer.php");?>