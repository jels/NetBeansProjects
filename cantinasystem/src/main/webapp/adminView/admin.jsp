<%-- 
    Document   : admin
    Created on : 27 oct. 2022, 15:05:56
    Author     : Note-TI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Systema de Cantina</title>

        <!-- Google Font: Source Sans Pro -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="../css/plugins/fontawesome-free/css/all.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
        <!-- Tempusdominus Bootstrap 4 -->
        <link rel="stylesheet" href="../css/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
        <!-- iCheck -->
        <link rel="stylesheet" href="../css/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
        <!-- JQVMap -->
        <link rel="stylesheet" href="../css/plugins/jqvmap/jqvmap.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="../css/dist/css/adminlte.min.css">
        <!-- overlayScrollbars -->
        <link rel="stylesheet" href="../css/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
        <!-- Daterange picker -->
        <link rel="stylesheet" href="../css/plugins/daterangepicker/daterangepicker.css">
        <!-- summernote -->
        <link rel="stylesheet" href="../css/plugins/summernote/summernote-bs4.min.css">

    </head>

    <body class="hold-transition">
        <!--<body class="hold-transition sidebar-mini sidebar-collapse">-->

        <!-- Preloader -->
        <div class="preloader flex-column justify-content-center align-items-center">
            <img class="animation__shake" src="../css/dist/img/AdminLTELogo.png" alt="AdminLTELogo" height="60" width="60">
        </div>
        <div style="margin-left: 25%; margin-right: 25%;">

            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title">Acceso a aplicaciones</h3>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-4">

                                    <a href="../cantina/dashcantina.jsp" class="btn btn-app bg-secondary">
                                        <span class="badge bg-success">10%</span>
                                        <i class="fas fa-barcode"></i> Cantina
                                    </a>

                                </div>
                                <div class="col-md-4">

                                    <a href="../comedor/dashcomedor.jsp" class="btn btn-app bg-secondary">
                                        <span class="badge bg-success">20%</span>
                                        <i class="fas fa-barcode"></i> Comedor
                                    </a>

                                </div>
                                <div class="col-md-4">

                                    <a href="#" class="btn btn-app bg-secondary">
                                        <span class="badge bg-success">300</span>
                                        <i class="fas fa-barcode"></i> Products
                                    </a>

                                </div>
                            </div>
                        </div>
                        <!-- /.card-body -->
                    </div>
                    <!-- /.card -->
                </div>
            </div>
        </div>

        <!-- jQuery -->
        <script src="../css/plugins/jquery/jquery.min.js"></script>
        <!-- jQuery UI 1.11.4 -->
        <script src="../css/plugins/jquery-ui/jquery-ui.min.js"></script>
        <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
        <script>
            $.widget.bridge('uibutton', $.ui.button);
        </script>
        <!-- Bootstrap 4 -->
        <script src="../css/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
        <!-- ChartJS -->
        <script src="../css/plugins/chart.js/Chart.min.js"></script>
        <!-- Sparkline -->
        <script src="../css/plugins/sparklines/sparkline.js"></script>
        <!-- JQVMap -->
        <script src="../css/plugins/jqvmap/jquery.vmap.min.js"></script>
        <script src="../css/plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
        <!-- jQuery Knob Chart -->
        <script src="../css/plugins/jquery-knob/jquery.knob.min.js"></script>
        <!-- daterangepicker -->
        <script src="../css/plugins/moment/moment.min.js"></script>
        <script src="../css/plugins/daterangepicker/daterangepicker.js"></script>
        <!-- Tempusdominus Bootstrap 4 -->
        <script src="../css/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
        <!-- Summernote -->
        <script src="../css/plugins/summernote/summernote-bs4.min.js"></script>
        <!-- overlayScrollbars -->
        <script src="../css/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
        <!-- AdminLTE App -->
        <script src="../css/dist/js/adminlte.js"></script>
        <!-- AdminLTE for demo purposes
        <script src="../css/dist/js/demo.js"></script>-->
        <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
        <script src="../css/dist/js/pages/dashboard.js"></script>
    </body>
</html>

