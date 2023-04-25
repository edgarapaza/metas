<?php include('header.php'); ?>

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Profile</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.php">Home</a></li>
          <li class="breadcrumb-item">Users</li>
          <li class="breadcrumb-item active">Profile</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section profile">
      <div class="row">
        <div class="col-xl-4">

          <div class="card">
            <div class="card-body profile-card pt-4 d-flex flex-column align-items-center">

              <img src="assets/img/profile-img.jpg" alt="Profile" class="rounded-circle">

              <h2><?php echo $data['personal'];?></h2>
              <h3>Desarrollador Web</h3>
              <div class="social-links mt-2">
                <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
                <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
                <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
                <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a>
              </div>
            </div>
          </div>

        </div>

        <div class="col-xl-8">

          <div class="card">
            <div class="card-body pt-3">
              <!-- Bordered Tabs -->
              <ul class="nav nav-tabs nav-tabs-bordered">

                <li class="nav-item">
                  <button class="nav-link active" data-bs-toggle="tab" data-bs-target="#profile-overview">Descripcion General</button>
                </li>

                <li class="nav-item">
                  <button class="nav-link" data-bs-toggle="tab" data-bs-target="#profile-edit">Editar Perfil</button>
                </li>

                <li class="nav-item">
                  <button class="nav-link" data-bs-toggle="tab" data-bs-target="#profile-settings">Ajustes</button>
                </li>

                <li class="nav-item">
                  <button class="nav-link" data-bs-toggle="tab" data-bs-target="#profile-change-password">Cambiar la Contraseña</button>
                </li>

              </ul>
              <div class="tab-content pt-2">

                <div class="tab-pane fade show active profile-overview" id="profile-overview">
                  <h5 class="card-title">Acerca de:</h5>
                  <p class="small fst-italic">Sunt est soluta temporibus accusantium neque nam maiores cumque temporibus. Tempora libero non est unde veniam est qui dolor. Ut sunt iure rerum quae quisquam autem eveniet perspiciatis odit. Fuga sequi sed ea saepe at unde.</p>

                  <h5 class="card-title">Detalles del Perfil</h5>

                  <div class="row">
                    <div class="col-lg-3 col-md-4 label ">Nombre:</div>
                    <div class="col-lg-9 col-md-8"><?php echo $data['nombre'];?></div>
                  </div>

                  <div class="row">
                    <div class="col-lg-3 col-md-4 label ">Apellido:</div>
                    <div class="col-lg-9 col-md-8"><?php echo $data['apellidos'];?></div>
                  </div>

                  <div class="row">
                    <div class="col-lg-3 col-md-4 label">Sexo:</div>
                    <div class="col-lg-9 col-md-8"><?php echo $data['sexo'];?></div>
                  </div>

                  <div class="row">
                    <div class="col-lg-3 col-md-4 label">Telefono:</div>
                    <div class="col-lg-9 col-md-8"><?php echo $data['telefono'];?></div>
                  </div>

                  <div class="row">
                    <div class="col-lg-3 col-md-4 label">Fecha de Nacimiento:</div>
                    <div class="col-lg-9 col-md-8"><?php echo $data['fecha_nac'];?></div>
                  </div>

                  <div class="row">
                    <div class="col-lg-3 col-md-4 label">Email:</div>
                    <div class="col-lg-9 col-md-8"><?php echo $data['email'];?></div>
                  </div>

                  <div class="row">
                    <div class="col-lg-3 col-md-4 label">Dni:</div>
                    <div class="col-lg-9 col-md-8"><?php echo $data['DNI'];?></div>
                  </div>

                </div>

                <div class="tab-pane fade profile-edit pt-3" id="profile-edit">

                  <!-- Formulario de edición de perfil -->
                  <form method="post" action="../controllers/updatePerfil.controller.php">

                    <input type="hidden" name="idpersonal" value="<?php echo $_SESSION['personal'];?>">

                    <div class="row mb-3">
                        <label class="col-sm-2 col-form-label" for="">Nombre</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="nombre" name="nombre" value="<?php echo $data['nombre'];?>" required >
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label class="col-sm-2 col-form-label" for="">Apellidos:</label>
                        <div class="col-sm-8">
                            <input type="text" required class="form-control" id="apellidos" name="apellidos" value="<?php echo $data['apellidos'];?>">
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
                            <input type="text" required class="form-control" id="telefono" name="telefono" value="<?php echo $data['telefono'];?>">
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
                            <input type="email" required class="form-control" id="email" name="email" value="a@a.com">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label class="col-sm-2 col-form-label">Foto:</label>
                        <div class="col-sm-6">
                            <input type="file" class="form-control" id="foto" name="foto">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label class="col-sm-2 col-form-label">DNI:</label>
                        <div class="col-sm-2">
                            <input type="text" class="form-control" id="dni" name="dni" value="<?php echo $data['DNI'];?>" required>
                        </div>
                    </div>


                    <div class="text-center">
                      <button type="submit" class="btn btn-primary">Guardar cambios</button>
                    </div>
                  </form><!-- Finalizar formulario de edición de perfil -->

                </div>

                <div class="tab-pane fade pt-3" id="profile-settings">

                  <!-- Settings Form -->
                  <form>

                    <div class="row mb-3">
                      <label for="fullName" class="col-md-4 col-lg-3 col-form-label">Notificaciónes de Correo Electrónico</label>
                      <div class="col-md-8 col-lg-9">
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" id="changesMade" checked>
                          <label class="form-check-label" for="changesMade">
                          Cambios realizados en su cuenta
                          </label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" id="newProducts" checked>
                          <label class="form-check-label" for="newProducts">
                          Información sobre nuevos productos y servicios.
                          </label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" id="proOffers">
                          <label class="form-check-label" for="proOffers">
                          Marketing and promo offers
                          </label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" id="securityNotify" checked disabled>
                          <label class="form-check-label" for="securityNotify">
                            Alertas de seguridad
                          </label>
                        </div>
                      </div>
                    </div>

                    <div class="text-center">
                      <button type="submit" class="btn btn-primary">Guardar cambios</button>
                    </div>
                  </form><!-- End settings Form -->

                </div>

                <div class="tab-pane fade pt-3" id="profile-change-password">
                  <!-- Change Password Form -->
                  <form>

                    <div class="row mb-3">
                      <label for="currentPassword" class="col-md-4 col-lg-3 col-form-label">Contraseña actual</label>
                      <div class="col-md-8 col-lg-9">
                        <input name="password" type="password" class="form-control" id="currentPassword">
                      </div>
                    </div>

                    <div class="row mb-3">
                      <label for="newPassword" class="col-md-4 col-lg-3 col-form-label">Nueva contraseña</label>
                      <div class="col-md-8 col-lg-9">
                        <input name="newpassword" type="password" class="form-control" id="newPassword">
                      </div>
                    </div>

                    <div class="row mb-3">
                      <label for="renewPassword" class="col-md-4 col-lg-3 col-form-label">Re-ingrese nuevamente la contraseña</label>
                      <div class="col-md-8 col-lg-9">
                        <input name="renewpassword" type="password" class="form-control" id="renewPassword">
                      </div>
                    </div>

                    <div class="text-center">
                      <button type="submit" class="btn btn-primary">Cambiar la contraseña</button>
                    </div>
                  </form><!-- End Change Password Form -->

                </div>

              </div><!-- End Bordered Tabs -->

            </div>
          </div>

        </div>
      </div>
    </section>

  </main><!-- End #main -->

<?php include('footer.php'); ?>
