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
            <li class="active"><a href="{link}"><i class="fa fa-edit"></i> Reservas</a></li>
            <li><a href="{link}habitaciones"><i class="fa fa-building-o"></i> Habitaciones</a></li>
            <li><a href="{link}categorias"><i class="fa fa-money"></i> Precios</a></li>
            <li><a href="{link}cliente"><i class="fa fa-users"></i> Clientes</a></li>
            <li><a href="{link}session/logout"><i class="fa fa-power-off"></i> Log out</a></li>
          </ul>

          <ul class="nav navbar-nav navbar-right navbar-user">
            
            <li class="dropdown user-dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> Hotel Luna <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="#"><i class="fa fa-user"></i> Perfil</a></li>
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
      <h1>Hotel Luna <small>Clientes</small></h1>
      <div class="alert alert-success alert-dismissable">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
        <a class="alert-link" href="#"></a> Ud tiene toda la informaci&oacute;n necesaria de sus clientes.
      </div>
    </div>
  </div><!-- /.row -->

  <div class="row">
 
     <div class="col-lg-4">
      <div class="panel panel-danger">
        <div class="panel-heading">
          <h3 class="panel-title"><i class="fa fa-money"></i> B&uacute;squeda por Nombre</h3>
        </div>
        <div class="panel-body">
          <div class="form-group input-group">
          <input type="text" class="form-control">
          <span class="input-group-btn">
            <button class="btn btn-default" type="button"><i class="fa fa-search"></i></button>
          </span>
          </div>
          
          <div class="text-right">
            <a href="#">Ver todos los clientes <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
      </div>
    </div>
    <div class="col-lg-4">
      <div class="panel panel-danger">
        <div class="panel-heading">
          <h3 class="panel-title"><i class="fa fa-money"></i> B&uacute;squeda por E-mail</h3>
        </div>
        <div class="panel-body">
          <div class="form-group input-group">
          <input type="text" class="form-control">
          <span class="input-group-btn">
            <button class="btn btn-default" type="button"><i class="fa fa-search"></i></button>
          </span>
          </div>
          
          <div class="text-right">
            <a href="#">Ver todos los clientes <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
      </div>
    </div>
    
  </div> 
  <div class="row">
     <div class="col-lg-12">
      <div class="panel panel-primary">
        <div class="panel-heading">
          <h3 class="panel-title"><i class="fa fa-list-ul"></i> Reservas Activas</h3>
        </div>
        <div class="panel-body">
         <div class="col-lg-6">
            <div class="form-group input-group">
              <span class="input-group-btn">
                <button id="buscar" class="btn btn-default" type="button"><i class="fa fa-search"></i></button>
              </span>
              <input id="textCustomer" type="text" class="form-control" placeholder="Búsqueda por nombre o email" name="textReserva">
            </div>
          </div>  
          <div class="table-responsive">
            <table class="table table-bordered table-hover table-striped tablesorter">
              <thead>
                <tr>              
                  <th>Apellido y Nombre <i class="fa fa-sort"></i></th>
                  <th>E-mail <i class="fa fa-sort"></i></th>
                  <th>Dirección <i class="fa fa-sort"></i></th>
                  <th>Teléfono<i class="fa fa-sort"></i></th>
                  <th>Provincia <i class="fa fa-sort"></i></th>
                  <th>Pais<i class="fa fa-sort"></i></th>
                  <th>Última Actualización<i class="fa fa-sort"></i></th>
                </tr>
              </thead>
              <tbody>
              [lista]
                <tr>
                  <td>{nombre}</td>
                  <td>{email}</td>
                  <td>{address}</td>
                  <td>{phone}</td>
                  <td>{city}</td>
                  <td>{country}</td>
                  <td>{last_update}</td>
                </tr>
              [lista]               
              </tbody>
            </table>
          </div>
          
          <div class="text-right">
            <a href="#">Ver todos los clientes <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
      </div>
    </div>
  </div><!-- /.row -->

</div><!-- /#page-wrapper -->
