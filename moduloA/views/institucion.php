<?php require "header.php"; ?>

<main id="main" class="main">

    <div class="pagetitle">
      <h1>Institución</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item active">Institución</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section">
      <div class="row">
        <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Nueva Institucion</h5>

	            <form action="controllers/institucion.controller.php" method="POST" role="form">
					<div class="form-group">
						<label for="">Nombre institucion</label>
						<input type="text" class="form-control" id="nom_institucion" name="nom_institucion" placeholder="Nombre de la institucion">
					</div>
					<div class="form-group">
						<label for="">Direccion:</label>
						<input type="text" class="form-control" id="direccion" name="direccion" placeholder="direccion">
					</div>

					<div class="form-group">
						<label for="">telefono:</label>
						<input type="text" class="form-control" id="telefono" name="telefono" placeholder="telefono">
					</div>
					<div class="form-group">
						<label for="">RUC:</label>
						<input type="text" class="form-control" id="RUC" name="RUC" placeholder="RUC">
					</div>
					<div class="form-group">
						<label for="">Email:</label>
						<input type="email" class="form-control" id="" name="Email" placeholder="Email">
					</div>
					<div class="form-group">
						<label for="">Pagina web:</label>
						<input type="text" class="form-control" id="Pagina_web" name="Pagina_web" placeholder="Pagina web">
					</div>
					<div class="form-group">
						<label for="">Fecha de creacion de la institucion:</label>
						<input type="date" class="form-control" id="f_creacion_institucion" name="f_creacion_institucion" placeholder="Fecha de creacion de la institucion">
					</div>

					<div class="form-group">
						<label for="">Documento de creacion:</label>
						<input type="text" class="form-control" id="N_resolucion" name="N_resolucion" placeholder="Numero de resolucion">
					</div>


					<button type="submit" class="btn btn-primary">Guardar</button>

				</form>

            </div>
          </div>

        </div>
      </div>
    </section>

  </main><!-- End #main -->

	<div class="container">
		


		
	</div>

<?php require "footer.php"; ?>