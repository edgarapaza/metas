<?php include('header.php'); ?>

<main id="main" class="main">

<div class="pagetitle">
    <h1>Registro nuevo Personal</h1>
    <nav>
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="index.php">Home</a></li>
        <li class="breadcrumb-item">Formulario</li>
        <li class="breadcrumb-item active">Elementos</li>
    </ol>
    </nav>
</div><!-- End Page Title -->

<section class="section">
    <div class="row justify-content-center">
    <div class="col-lg-8">

        <div class="card">
        <div class="card-body">
            <h5 class="card-title">General Form Elements</h5>

            <!-- General Form Elements -->
            <form action="../controllers/newPersonal.controller.php" method="post">
            <div class="row mb-3">
                <label for="inputText" class="col-sm-2 col-form-label">nombre</label>
                <div class="col-sm-10">
                <input type="text" class="form-control" name = 'nombre'>
                </div>
            </div>
            <div class="row mb-3">
                <label for="inputEmail" class="col-sm-2 col-form-label">apellidos</label>
                <div class="col-sm-10">
                <input type="text" class="form-control" name = 'apellido'>
                </div>
            </div>
            <div class="row mb-3">
                <label for="inputPassword" class="col-sm-2 col-form-label">email</label>
                <div class="col-sm-10">
                <input type="email" class="form-control" name = 'email'>
                </div>
            </div>
            <div class="row mb-3">
                <label for="inputNumber" class="col-sm-2 col-form-label">dni</label>
                <div class="col-sm-10">
                <input type="number" class="form-control" name = 'dni'>
                </div>
            </div>
            <div class="row mb-3">
                <label for="inputNumber" class="col-sm-2 col-form-label">telefono</label>
                <div class="col-sm-10">
                <input type="number" class="form-control" name = 'telefono'>
                </div>
            </div>
            <div class="row mb-3">
                <label for="inputPassword" class="col-sm-2 col-form-label">direccion</label>
                <div class="col-sm-10">
                <input type="text" class="form-control" name = 'direccion'>
                </div>
            </div>

            <div class="row mb-3">
                <label for="inputNumber" class="col-sm-2 col-form-label">foto</label>
                <div class="col-sm-10">
                <input class="form-control" type="file" id="formFile" name = 'foto'>
                </div>
            </div>
            <div class="row mb-3">
                <label for="inputDate" class="col-sm-2 col-form-label">fecha de Nacimiento</label>
                <div class="col-sm-10">
                <input type="date" class="form-control" name = 'nacimiento'>
                </div>
            </div>
            <div class="row mb-3">
                <label for="inputPassword" class="col-sm-2 col-form-label">Presentacion</label>
                <div class="col-sm-10">
                <textarea class="form-control" style="height: 100px"></textarea>
                </div>
            </div>
            <fieldset class="row mb-3">
                <legend class="col-form-label col-sm-2 pt-0">Sexo</legend>
                <div class="col-sm-10">
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="sexo" id="gridRadios1" value="masculino" checked>
                    <label class="form-check-label" for="gridRadios1">
                    Masculino
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="sexo" id="gridRadios2" value="femenino">
                    <label class="form-check-label" for="gridRadios2">
                    Femenino
                    </label>
                </div>
                </div>
            </fieldset>

            <div class="row mb-3">
                <label class="col-sm-2 col-form-label">Disabled</label>
                <div class="col-sm-10">
                <input type="text" class="form-control" value="solo lectura para comunicar algo" disabled>
                </div>
            </div>

            <div class="row mb-3">
                <label class="col-sm-2 col-form-label">nuevo Personal</label>
                <div class="col-sm-10">
                <button type="submit" class="btn btn-primary">Enviar datos y crear login</button>
                </div>
            </div>

            </form><!-- End General Form Elements -->

        </div>
        </div>

    </div>  
</section>

</main><!-- End #main -->

<?php include('footer.php'); ?>