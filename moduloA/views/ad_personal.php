<?php include_once("header.php"); ?>

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Dashboard</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item active">Dashboard</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section">
      <div class="row">
        <div class="col-lg-6">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">REPORTE CORRESPONDIENTE FECHA <?php echo date("d-m-Y");?></h5>

              <form action="controllers/ad_personal.controller.php" method="POST" role="form">
				<legend>Completa el formulario</legend>
			
				<div class="form-group">
					<label for="">profesion</label>
					<input type="text" class="form-control" id="" name="profesion" placeholder="profesion">
				</div>
				<div class="form-group">
					<label for="">tiempo de servicio:</label>
					<input type="text" class="form-control" id="" name="tiempo_servicio" placeholder="tiempos_servicio">
				</div>
				<div class="form-group">
					<label for="">condicion:</label>
					<input type="text" class="form-control" id="" name="condicion" placeholder="condicion">
				</div>
				<div class="form-group">
					<label for="">seguro social:</label>
					<input type="text" class="form-control" id="" name="seguro_social" placeholder="seguro_social">
				</div>
				<div class="form-oto for=">Grupo sanguineo:</label>
					<input type="text" class="form-control" id="" name="grupo_sanguineo" placeholder="grupo_sanguineo">
				</div>
				
				<div class="form-group">
					<label for="">fecha de ingreso:</label>
					<input type="date" class="form-control" id="" name="f_ingreso" placeholder="fecha_ingreso">
				</div>
				<div class="form-group">
					<label for="">fecha de deceso:</label>
					<input type="date" class="form-control" id="" name="f_deceso" placeholder="fecha_deceso">
				</div>
					
				<button type="submit" class="btn btn-primary">enviar</button>
	          	
			</form>

            </div>
          </div>

        </div>
      </div>
    </section>

  </main><!-- End #main -->

<?php include_once("footer.php"); ?>
