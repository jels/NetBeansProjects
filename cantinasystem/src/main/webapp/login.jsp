<%-- 
    Document   : Login
    Created on : 21 sept. 2022, 20:50:03
    Author     : Elias
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Iniciar Sesion</title>

        <!-- Google Font: Source Sans Pro -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="css/plugins/fontawesome-free/css/all.min.css">
        <!-- icheck bootstrap -->
        <link rel="stylesheet" href="css/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="css/dist/css/adminlte.min.css">
    </head>
    <body class="hold-transition login-page">
        <div class="login-box">
            <div class="login-logo">
                <a><b>System</b>Cantina</a>
            </div>
            <!-- /.login-logo -->
            <div class="card">
                <div class="card-body login-card-body">
                    <p class="login-box-msg">Iniciar Sesión </p>

                    <form action="comedor/dashboard.jsp" method="post">
                        <div class="input-group mb-3">
                            <input type="email" class="form-control" placeholder="Usuario">
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-envelope"></span>
                                </div>
                            </div>
                        </div>
                        <div class="input-group mb-3">
                            <input type="password" class="form-control" placeholder="Contraseña">
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-lock"></span>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-8">
                                <div class="icheck-primary">
                                    <input type="checkbox" id="remember">
                                    <label for="remember">
                                        Recordarme
                                    </label>
                                </div>
                            </div>
                            <!-- /.col -->
                            <div class="col-4">
                                <button type="submit" class="btn btn-primary btn-block">Ingresar</button>
                            </div>

                            <!-- /.col -->
                        </div>
                        <div class="row">
                            <div class="col-4">
                                <a href="comedor/dashcomedor.jsp" class="btn btn-primary" role="button" >
                                    <i class="fas fa-briefcase"></i>
                                </a>
                            </div>

                            <div class="col-4">
                                <a href="cantina/dashcantina.jsp" class="btn btn-primary" role="button" >
                                    <i class="fas fa-desktop"></i>
                                </a>
                            </div>
                            <div class="col-4">
                                <a href="adminView/admin.jsp" class="btn btn-primary" role="button" >
                                    <i class="fas fa-cog"></i>
                                </a>
                            </div>
                        </div>
                    </form>

                    <!-- /.social-auth-links -->
                </div>
                <!-- /.login-card-body -->
            </div>
        </div>
        <!-- /.login-box -->

        <!-- jQuery -->
        <script src="css/plugins/jquery/jquery.min.js"></script>
        <!-- Bootstrap 4 -->
        <script src="css/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
        <!-- AdminLTE App -->
        <script src="css/dist/js/adminlte.min.js"></script>
    </body>
</html>

