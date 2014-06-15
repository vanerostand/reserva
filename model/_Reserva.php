<?php

Class _Reserva{
	private $dbc;
	private $nro;
	private $nombre;
	private $habitacion;
	private $checkIn;
	private $checkOut;
	private $precio;


	public function __construct(){
		$this->dbc = DB::Connect();
	}


	
	public function listar($param='*'){
			$query = 'SELECT '.$param.' FROM reserva 
			ORDER BY nro DESC';
			if ($result = $this->dbc->query($query)){
				$this->dbc->close();
				return Ftn::toArray($result);
			}else{
				die('Error de Conexion con la DB: '.$query);
			}

		}

	public function buscar($param){
			$query = 'SELECT * FROM reserva where 
				nombre like \''.$param.'%\' 
				OR nombre like \'%, '.$param.'%\'
			ORDER BY nro DESC';
			if ($result = $this->dbc->query($query)){
				$this->dbc->close();
				return Ftn::toArray($result);
			}else{
				die('Error de Conexion con la DB: '.$query);
			}

		}

	public function ver($nro, $param='*'){
			$query = "SELECT $param FROM reserva 
			WHERE  nro = $nro";
		if ($result = $this->dbc->query($query)){
			$this->dbc->close();
			return Ftn::toArray($result);
		}else{
			die('Error de Conexion con la DB: '.$query);
		}
	}

	public function setNro($nro){
					$this->nro = $nro;
				}

	public function getNro(){
					return $this->nro;
				}

	public function setNombre($nombre){
					$this->nombre = $nombre;
				}

	public function getNombre(){
					return $this->nombre;
				}

	public function setHabitacion($habitacion){
					$this->habitacion = $habitacion;
				}

	public function getHabitacion(){
					return $this->habitacion;
				}

	public function setCheckIn($checkIn){
					$this->checkIn = $checkIn;
				}

	public function getCheckIn(){
					return $this->checkIn;
				}

	public function setCheckOut($checkOut){
					$this->checkOut = $checkOut;
				}

	public function getCheckOut(){
					return $this->checkOut;
				}

	public function setPrecio($precio){
					$this->precio = $precio;
				}

	public function getPrecio(){
					return $this->precio;
				}
}
?>