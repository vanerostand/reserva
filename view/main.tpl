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
            <h1>Hotel Luna <small>Disponibilidades</small></h1>
            <div class="alert alert-success alert-dismissable">
              Bienvenidos a <a class="alert-link" href="#">Hotel Luna</a> Ud tiene toda la informaci&oacute;n necesaria de la habitaciones.
            </div>
          </div>
        </div><!-- /.row -->

        <div class="row">
          <div class="col-lg-3">
            <div class="panel panel-info">
              <div class="panel-heading">
                <div class="row">
                  <div class="col-xs-6">
                    <i class="fa fa-comments fa-5x"></i>
                  </div>
                  <div class="col-xs-6 text-right">
                    <p class="announcement-heading">{totalFree}</p>
                    <p class="announcement-text">Habitaciones Disponibles!</p>
                  </div>
                </div>
              </div>
              <a href="#">
                <div class="panel-footer announcement-bottom">
                  <div class="row">
                    <div class="col-xs-6">
                      Ver detalles
                    </div>
                    <div class="col-xs-6 text-right">
                      <i class="fa fa-arrow-circle-right"></i>
                    </div>
                  </div>
                </div>
              </a>
            </div>
          </div>
          <div class="col-lg-3">
            <div class="panel panel-warning">
              <div class="panel-heading">
                <div class="row">
                  <div class="col-xs-6">
                    <i class="fa fa-tasks fa-5x"></i>
                  </div>
                  <div class="col-xs-6 text-right">
                    <p class="announcement-heading">{singleFree}</p>
                    <p class="announcement-text">Hab. Simples Libres</p>
                  </div>
                </div>
              </div>
              <a href="#">
                <div class="panel-footer announcement-bottom">
                  <div class="row">
                    <div class="col-xs-6">
                      Ver detalles
                    </div>
                    <div class="col-xs-6 text-right">
                      <i class="fa fa-arrow-circle-right"></i>
                    </div>
                  </div>
                </div>
              </a>
            </div>
          </div>
          <div class="col-lg-3">
            <div class="panel panel-danger">
              <div class="panel-heading">
                <div class="row">
                  <div class="col-xs-6">
                    <i class="fa fa-check fa-5x"></i>
                  </div>
                  <div class="col-xs-6 text-right">
                    <p class="announcement-heading">{doubleFree}</p>
                    <p class="announcement-text">Hab. Dobles Disponibles</p>
                  </div>
                </div>
              </div>
              <a href="#">
                <div class="panel-footer announcement-bottom">
                  <div class="row">
                    <div class="col-xs-6">
                      Ver detalles
                    </div>
                    <div class="col-xs-6 text-right">
                      <i class="fa fa-arrow-circle-right"></i>
                    </div>
                  </div>
                </div>
              </a>
            </div>
          </div>
          <div class="col-lg-3">
            <div class="panel panel-success">
              <div class="panel-heading">
                <div class="row">
                  <div class="col-xs-6">
                    <i class="fa fa-check fa-5x"></i>
                  </div>
                  <div class="col-xs-6 text-right">
                    <p class="announcement-heading">{tripleFree}</p>
                    <p class="announcement-text">Hab. Triples Disponibles</p>
                  </div>
                </div>
              </div>
              <a href="#">
                <div class="panel-footer announcement-bottom">
                  <div class="row">
                    <div class="col-xs-6">
                      Ver detalles
                    </div>
                    <div class="col-xs-6 text-right">
                      <i class="fa fa-arrow-circle-right"></i>
                    </div>
                  </div>
                </div>
              </a>
            </div>
          </div>
        </div><!-- /.row -->
        
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
                      <button id="where" class="btn btn-default" type="button" tag="reserva"><i class="fa fa-search"></i></button>
                    </span>
                    <input id="what" type="text" class="form-control" placeholder="Búsqueda por nombre o apellido" tag="nombre">
                  </div>
                </div>  
                <div class="table-responsive">
                  <table class="table table-bordered table-hover table-striped tablesorter">
                    <thead>
                      <tr>
                        <th>N° <i class="fa fa-sort"></i></th>
                        <th>Nombre <i class="fa fa-sort"></i></th>
                        <th>Habitacion <i class="fa fa-sort"></i></th>
                        <th>Check in <i class="fa fa-sort"></i></th>
                        <th>Check out <i class="fa fa-sort"></i></th>
                        <th>Total <i class="fa fa-sort"></i></th>
                      </tr>
                    </thead>
                    <tbody id="resultado">
                      [lista]
                      <tr>
                        <td>{nro}</td>
                        <td>{nombre}</td>
                        <td>{habitacion}</td>
                        <td>{checkIn}</td>
                        <td>{checkOut}</td>
                        <td>${precio}</td>
                      </tr>
                      [lista]
                  </table>
                </div>

               
                <div class="col-lg-12">
                  <div class="text-right">
                    <a href="#">Ver todas las reservas <i class="fa fa-arrow-circle-right"></i></a>
                  </div>
                </div>
            </div><!-- /.row -->

            
            </div>
            </div>
          </div>
        </div><!-- /.row -->

      </div><!-- /#page-wrapper -->