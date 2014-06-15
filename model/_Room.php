<?php

Class _Room{
	private $dbc;
	private $id;
	private $number;
	private $status;
	private $active;
	private $last_update;
	private $category_id;


	public function __construct(){
		$this->dbc = DB::Connect();
	}


	public function save(){
		$query = 'INSERT INTO room(
		id, 
		number, 
		status, 
		active, 
		last_update, 
		category_id) values (
		$this->id, 
		$this->number, 
		$this->status, 
		$this->active, 
		$this->last_update, 
		$this->category_id)';}

	public function listar($param='*'){
			$query = 'SELECT '.$param.' FROM room 
			ORDER BY id DESC';
			if ($result = $this->dbc->query($query)){
				return Ftn::toArray($result);
			}else{
				die('Error de Conexion con la DB: '.$query);
			}

		}

	public function ver($id, $param='*'){
			$query = "SELECT $param FROM room 
			WHERE id = $id";
		if ($result = $this->dbc->query($query)){
			
			return Ftn::toArray($result);
		}else{
			die('Error de Conexion con la DB: '.$query);
		}
	}

	public function free($param='1')
	{
		$query = "SELECT COUNT( * ) AS total
					FROM ROOM
					WHERE  `status` =0
					AND  `active` =1
					AND  `category_id` =$param";
		if ($result = $this->dbc->query($query)){
			return Ftn::toArray($result);
		}else{
			die('Error de Conexion con la DB: '.$query);
		}
	}

	public function totalFree()
	{
		$query = "SELECT COUNT( * ) AS total
					FROM ROOM
					WHERE  `status` =0
					AND  `active` =1";
		if ($result = $this->dbc->query($query)){
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

	public function setNumber($number){
					$this->number = $number;
				}

	public function getNumber(){
					return $this->number;
				}

	public function setStatus($status){
					$this->status = $status;
				}

	public function getStatus(){
					return $this->status;
				}

	public function setActive($active){
					$this->active = $active;
				}

	public function getActive(){
					return $this->active;
				}

	public function setLast_update($last_update){
					$this->last_update = $last_update;
				}

	public function getLast_update(){
					return $this->last_update;
				}

	public function setCategory_id($category_id){
					$this->category_id = $category_id;
				}

	public function getCategory_id(){
					return $this->category_id;
				}
}
?>