<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SAR - Hotel Luna</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">

    <!-- Add custom CSS here -->
    <link href="css/sb-admin.css" rel="stylesheet">
    <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
    <!-- Page Specific CSS -->
    <link rel="stylesheet" href="http://cdn.oesmith.co.uk/morris-0.4.3.min.css">
  </head>

  <body>

   <div id="wrapper">

      <!-- Sidebar -->
      <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.html">SAR - Hotel Luna</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse navbar-ex1-collapse">
          <ul class="nav navbar-nav side-nav">
            <li class="active"><a href="index.html"><i class="fa fa-Reservas"></i> Reservas</a></li>
            <li><a href="charts.html"><i class="fa fa-bar-chart-o"></i> Habitaciones</a></li>
            <li><a href="tables.html"><i class="fa fa-table"></i> Precios</a></li>
            <li><a href="forms.html"><i class="fa fa-edit"></i> Clientes</a></li>
            <li><a href="forms.html"><i class="fa fa-power-off""></i> Log out</a></li>
          </ul>

          <ul class="nav navbar-nav navbar-right navbar-user">
            <li class="dropdown messages-dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-envelope"></i> Mensajes <span class="badge">7</span> <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li class="dropdown-header">7 Mensajes Nuevos</li>
                <li class="message-preview">
                  <a href="#">
                    <span class="avatar"><img src="http://placehold.it/50x50"></span>
                    <span class="name">Hotel Luna:</span>
                    <span class="message">Hola Buenas tardes, Quisiera averiguar el precio...</span>
                    <span class="time"><i class="fa fa-clock-o"></i> 4:34 PM</span>
                  </a>
                </li>
                <li class="divider"></li>
                <li class="message-preview">
                  <a href="#">
                    <span class="avatar"><img src="http://placehold.it/50x50"></span>
                    <span class="name">Hotel Luna:</span>
                    <span class="message">Hola Buenas tardes, Quisiera averiguar el precio...</span>
                    <span class="time"><i class="fa fa-clock-o"></i> 4:34 PM</span>
                  </a>
                </li>
                <li class="divider"></li>
                <li class="message-preview">
                  <a href="#">
                    <span class="avatar"><img src="http://placehold.it/50x50"></span>
                    <span class="name">Hotel Luna:</span>
                    <span class="message">Hola Buenas tardes, Quisiera averiguar el precio...</span>
                    <span class="time"><i class="fa fa-clock-o"></i> 4:34 PM</span>
                  </a>
                </li>
                <li class="divider"></li>
                <li><a href="#">Ver Bandeja <span class="badge">7</span></a></li>
              </ul>
            </li>
            <li class="dropdown alerts-dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bell"></i> Avisos <span class="badge">3</span> <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="#">Consultas <span class="label label-default">Consultas</span></a></li>
                <li><a href="#">Reservas <span class="label label-primary">Reservas</span></a></li>
                <li><a href="#">Pagos Acreditados <span class="label label-success">Pagos</span></a></li>
                <li><a href="#">Informaci&oacute;n <span class="label label-info">Info</span></a></li>
                <li><a href="#">Clientes <span class="label label-warning">Clientes</span></a></li>
                <li><a href="#">Importante! <span class="label label-danger">Importante!</span></a></li>
                <li class="divider"></li>
                <li><a href="#">Ver todos</a></li>
              </ul>
            </li>
            <li class="dropdown user-dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> Hotel Luna <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="#"><i class="fa fa-user"></i> Perfil</a></li>
                <li><a href="#"><i class="fa fa-envelope"></i> Mensajes<span class="badge">7</span></a></li>
                <li><a href="#"><i class="fa fa-gear"></i> Configuraci&oacute;n</a></li>
                <li class="divider"></li>
                <li><a href="#"><i class="fa fa-power-off"></i> Log Out</a></li>
              </ul>
            </li>
          </ul>
        </div><!-- /.navbar-collapse -->
      </nav>

      <div id="page-wrapper">

        <div class="row">
          <div class="col-lg-12">
            <h1>Hotel Luna <small>Habitaciones</small></h1>
            <div class="alert alert-success alert-dismissable">
              <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
              <a class="alert-link" href="#"></a> Ud tiene toda la informaci&oacute;n necesaria de sus Habitaciones.
            </div>
          </div>
        </div><!-- /.row -->

        <div class="row">
       
           <div class="col-lg-4">
            <div class="panel panel-danger">
              <div class="panel-heading">
                <h3 class="panel-title"><i class="fa fa-money"></i> B&uacute;squeda por Tipo</h3>
              </div>
              <div class="panel-body">
                <div class="form-group input-group">
                <input type="text" class="form-control">
                <span class="input-group-btn">
                  <button class="btn btn-default" type="button"><i class="fa fa-search"></i></button>
                </span>
                </div>
                
                <div class="text-right">
                  <a href="#">Ver todas las habitaciones <i class="fa fa-arrow-circle-right"></i></a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="panel panel-danger">
              <div class="panel-heading">
                <h3 class="panel-title"><i class="fa fa-money"></i> B&uacute;squeda por Numero</h3>
              </div>
              <div class="panel-body">
                <div class="form-group input-group">
                <input type="text" class="form-control">
                <span class="input-group-btn">
                  <button class="btn btn-default" type="button"><i class="fa fa-search"></i></button>
                </span>
                </div>
                
                <div class="text-right">
                  <a href="#">Ver todas las habitaciones <i class="fa fa-arrow-circle-right"></i></a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="panel panel-danger">
              <div class="panel-heading">
                <h3 class="panel-title"><i class="fa fa-money"></i> B&uacute;squeda por Estado</h3>
              </div>
              <div class="panel-body">
                <div class="form-group input-group">
                <input type="text" class="form-control">
                <span class="input-group-btn">
                  <button class="btn btn-default" type="button"><i class="fa fa-search"></i></button>
                </span>
                </div>
                
                <div class="text-right">
                  <a href="#">Ver todas las habitaciones <i class="fa fa-arrow-circle-right"></i></a>
                </div>
              </div>
            </div>
          </div>
         </div> 
        <div class="row">
       
           <div class="col-lg-12">
            <div class="panel panel-primary">
              <div class="panel-heading">
                <h3 class="panel-title"><i class="fa fa-money"></i> Lista de Habitaciones</h3>
              </div>
              <div class="panel-body">
                <div class="table-responsive">
                  <table class="table table-bordered table-hover table-striped tablesorter">
                    <thead>
                      <tr>
                        <th>N° <i class="fa fa-sort"></i></th>
                        <th>Tipo <i class="fa fa-sort"></i></th>
                        <th>Descripci&oacute;n <i class="fa fa-sort"></i></th>
                        <th>Estado <i class="fa fa-sort"></i></th>
                        
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>001</td>
                        <td>Doble</td>
                        <td>Matrimonial - TV - AA - Hidro</td>
                        <td>Ocupada</td>
                      </tr>
                      <tr>
                        <td>002</td>
                        <td>Triple</td>
                        <td>Matrimonial + Single - TV - AA - Hidro</td>
                        <td>Ocupada</td>
                      </tr>
                      <tr>
                        <td>003</td>
                        <td>Doble</td>
                        <td>Twins - TV - AA </td>
                        <td>Disponible</td>
                      </tr>
                      <tr>
                        <td>004</td>
                        <td>Cuadruple</td>
                        <td>Matrimonial - TV - AA - Hidro</td>
                        <td>Ocupada</td>
                      </tr>
                      <tr>
                        <td>005</td>
                        <td>Doble</td>
                        <td>Matrimonial - TV - AA - Hidro</td>
                        <td>Ocupada</td>
                      </tr>
                      
                    </tbody>
                  </table>
                </div>
                
                <div class="text-right">
                  <a href="#">Ver todas las habitaciones <i class="fa fa-arrow-circle-right"></i></a>
                </div>
              </div>
            </div>
          </div>
        </div><!-- /.row -->

            

      </div><!-- /#page-wrapper -->

    </div><!-- /#wrapper -->

    <!-- JavaScript -->
    <script src="js/jquery-1.10.2.js"></script>
    <script src="js/bootstrap.js"></script>

    <!-- Page Specific Plugins -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
    <script src="http://cdn.oesmith.co.uk/morris-0.4.3.min.js"></script>
    <script src="js/morris/chart-data-morris.js"></script>
    <script src="js/tablesorter/jquery.tablesorter.js"></script>
    <script src="js/tablesorter/tables.js"></script>
    <!--[if lte IE 8]><script src="js/excanvas.min.js"></script><![endif]-->
	<script src="js/flot/jquery.flot.js"></script>
	<script src="js/flot/jquery.flot.tooltip.min.js"></script>
	<script src="js/flot/jquery.flot.resize.js"></script>
	<script src="js/flot/jquery.flot.pie.js"></script>
	<script src="js/flot/chart-data-flot.js"></script>

  </body>
</html>
