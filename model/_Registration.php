<?php

Class _Registration{
	private $dbc;
	private $id;
	private $since;
	private $to;
	private $date;
	private $status;
	private $last_update;
	private $room_id;
	private $customer_id;


	public function __construct(){
		$this->dbc = DB::Connect();
	}


	public function save(){
		$query = 'INSERT INTO registration(
		id, 
		since, 
		to, 
		date, 
		status, 
		last_update, 
		room_id, 
		customer_id) values (
		$this->id, 
		$this->since, 
		$this->to, 
		$this->date, 
		$this->status, 
		$this->last_update, 
		$this->room_id, 
		$this->customer_id)';}

	public function listar($param='*'){
			$query = 'SELECT '.$param.' FROM registration 
			ORDER BY id DESC';
			if ($result = $this->dbc->query($query)){
				$this->dbc->close();
				return Ftn::toArray($result);
			}else{
				die('Error de Conexion con la DB: '.$query);
			}

		}

	public function ver($id, $param='*'){
			$query = "SELECT $param FROM registration 
			WHERE id = $id";
		if ($result = $this->dbc->query($query)){
			$this->dbc->close();
			return Ftn::toArray($result);
		}else{
			die('Error de Conexion con la DB: '.$query);
		}
	}

	public function setId($id){
					$this->id = $id;
				}

	public function getId(){
					return $this->id;
				}

	public function setSince($since){
					$this->since = $since;
				}

	public function getSince(){
					return $this->since;
				}

	public function setTo($to){
					$this->to = $to;
				}

	public function getTo(){
					return $this->to;
				}

	public function setDate($date){
					$this->date = $date;
				}

	public function getDate(){
					return $this->date;
				}

	public function setStatus($status){
					$this->status = $status;
				}

	public function getStatus(){
					return $this->status;
				}

	public function setLast_update($last_update){
					$this->last_update = $last_update;
				}

	public function getLast_update(){
					return $this->last_update;
				}

	public function setRoom_id($room_id){
					$this->room_id = $room_id;
				}

	public function getRoom_id(){
					return $this->room_id;
				}

	public function setCustomer_id($customer_id){
					$this->customer_id = $customer_id;
				}

	public function getCustomer_id(){
					return $this->customer_id;
				}
}
?>