<?php include('header.php'); ?>

<?php
//OBTENIENDO ID del nuevo personal para crear su login 
$idper = $_GET['idpersonal'];

?>

<main id="main" class="main">

  <div class="pagetitle">
    <h1>Form Layouts</h1>
    <nav>
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="index.html">Home</a></li>
        <li class="breadcrumb-item">Forms</li>
        <li class="breadcrumb-item active">Layouts</li>
      </ol>
    </nav>
  </div><!-- End Page Title -->
  <section class="section">
    <div class="row justify-content-center">
      <div class="col-lg-7">

        <div class="card">
          <div class="card-body">
            <h5 class="card-title">Horizontal Form</h5>

            <!-- Horizontal Form -->
            <form action = "../controllers/newUsuario.controller.php" method = "post" id = "my-form">
              <div class="row mb-3">
                <label for="inputEmail3" class="col-sm-2 col-form-label">nombre de Usuario</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" id="inputText" name = 'usuario'>
                </div>
              </div>
              <div class="row mb-3">
                <label for="inputEmail3" class="col-sm-2 col-form-label">contrasena</label>
                <div class="col-sm-10">
                  <input type="password" class="form-control" id="newpassword" name = 'password'>
                </div>
              </div>
              <div class="row mb-3">
                <label for="inputPassword3" class="col-sm-2 col-form-label">repita la contrasena</label>
                <div class="col-sm-10">
                  <input type="password" class="form-control" id="renewpassword">
                </div>
              </div>
              <div class="row mb-3">
                <label class="col-sm-2 col-form-label">nivel de usuario</label>
                <div class="col-sm-10">
                  <select class="form-select" aria-label="Default select example" name = 'nivel'>
                      <option selected>nivel del personal</option>
                      <option value="1">nivel 1</option>
                      <option value="2">nivel 2</option>
                      <option value="3">nivel 3</option>
                  </select>
                </div>
              </div>
              <fieldset class="row mb-3">
                <legend class="col-form-label col-sm-2 pt-0">Radios</legend>
                <div class="col-sm-10">
                  <div class="form-check">
                    <input class="form-check-input" type="radio" name="chek" id="gridRadios1" value="0" checked>
                    <label class="form-check-label" for="gridRadios1">
                      usuario desactivado
                    </label>
                  </div>
                  <div class="form-check">
                    <input class="form-check-input" type="radio" name="chek" id="gridRadios2" value="1">
                    <label class="form-check-label" for="gridRadios2">
                      usuario activado
                    </label>
                  </div>
                </div>
              </fieldset>
              
              <input type="hidden" name= "idpersonal" value=<?= $idper ?>>

              <div class="text-center">
                <button type="submit" class="btn btn-primary">Registrar</button>
              </div>
            </form><!-- End Horizontal Form -->

          </div>
        </div>
      </div>
    </div>
  </section>

</main><!-- End #main -->

<?php include('footer.php'); ?>