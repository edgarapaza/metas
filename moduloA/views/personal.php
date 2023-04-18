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
        <div class="col-lg-10">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">AGREGAR PERSONAL</h5>
			  	<form action="controllers/personal.controller.php" method="POST" role="form">
									
					<div class="row mb-3">
						<label class="col-sm-2 col-form-label" for="">Nombre</label>
						<div class="col-sm-8">
							<input type="text" required class="form-control" id="" name="nombre">
						</div>
					</div>
					<div class="row mb-3">
						<label class="col-sm-2 col-form-label" for="">Apellidos:</label>
						<div class="col-sm-8">
							<input type="text" required class="form-control" id="" name="apellidos">
						</div>
					</div>
					<fieldset class="row mb-3">
						<legend class="col-form-label col-sm-2 pt-0">Sexo:</legend>
						<div class="col-sm-10">
							<div class="form-check">
								<input type="radio" name="sexo" class="form-check-input" value="masculino">
								<label class="form-check-label" for="Sexo"> Masculino</label>
							</div>
							<div class="form-check">
								<input type="radio" name="sexo" class="form-check-input" value="femenino">
								<label class="form-check-label" for="Sexo"> Femenino</label>
							</div>
						</div>
					</fieldset>
								
					<div class="row mb-3">
						<label class="col-sm-2 col-form-label" for="">Telefono:</label>
						<div class="col-sm-3">
							<input type="text" required class="form-control" id="" name="telefono">
						</div>
					</div>
					<div class="row mb-3">
						<label for="fecha_nacimiento" class="col-sm-2 col-form-label">Fecha de nacimiento:</label>
						<div class="col-sm-2">
							<input type="date" class="form-control" id="fecha_nacimiento" name="fecha_nacimiento">
						</div>
					</div>
					<div class="row mb-3">
						<label class="col-sm-2 col-form-label" for="">Email:</label>
						<div class="col-sm-6">
							<input type="email" required class="form-control" id="" name="email" value="a@a.com">
						</div>
					</div>
					<div class="row mb-3">
						<label class="col-sm-2 col-form-label">Foto:</label>
						<div class="col-sm-6">
							<input type="file" class="form-control" id="" name="foto">
						</div>
					</div>

					<div class="row mb-3">
						<label class="col-sm-2 col-form-label">DNI:</label>
						<div class="col-sm-2">
							<input type="text" required class="form-control" id="" name="DNI">
						</div>
					</div>

					<button type="submit" class="btn btn-primary">Guardar</button>

				</form>
            </div>
          </div>

        </div>
      </div>
    </section>

  </main><!-- End #main -->

<?php include_once("footer.php"); ?>