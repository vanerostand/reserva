<?php

Class _Customer{
	private $dbc;
	private $id;
	private $first_name;
	private $last_name;
	private $email;
	private $password;
	private $active;
	private $create_date;
	private $last_update;
	private $address_id;


	public function __construct(){
		$this->dbc = DB::Connect();
	}


	public function save(){
		$query = 'INSERT INTO customer(
		id, 
		first_name, 
		last_name, 
		email, 
		password, 
		active, 
		create_date, 
		last_update, 
		address_id) values (
		$this->id, 
		$this->first_name, 
		$this->last_name, 
		$this->email, 
		$this->password, 
		$this->active, 
		$this->create_date, 
		$this->last_update, 
		$this->address_id)';}

	public function listar(){
			$query = 'SELECT  concat(`cu`.`last_name`,\', \',`cu`.`first_name`) AS `nombre`,
							  `cu`.`email`,
							  `cu`.`last_update`,
							  `ad`.`address`,
							  `ad`.`phone`,
							  `ci`.`city`,
							  `co`.`country`
					   FROM (((`customer` `cu` join `address` `ad`) join `city` `ci`) join `country` `co`) 
					   where ((`cu`.`address_id` = `ad`.`address_id`) 
					   	and (`ad`.`city_id` = `ci`.`city_id`) 
					   	and (`ci`.`city_id` = `co`.`country_id`) 
					   	and (`cu`.`active` = 1)) 
						order by nombre asc';
			if ($result = $this->dbc->query($query)){
				$this->dbc->close();
				return Ftn::toArray($result);
			}else{
				die('Error de Conexion con la DB: '.$query);
			}

		}

	public function ver($id, $param='*'){
			$query = "SELECT $param FROM customer 
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

	public function setFirst_name($first_name){
					$this->first_name = $first_name;
				}

	public function getFirst_name(){
					return $this->first_name;
				}

	public function setLast_name($last_name){
					$this->last_name = $last_name;
				}

	public function getLast_name(){
					return $this->last_name;
				}

	public function setEmail($email){
					$this->email = $email;
				}

	public function getEmail(){
					return $this->email;
				}

	public function setPassword($password){
					$this->password = $password;
				}

	public function getPassword(){
					return $this->password;
				}

	public function setActive($active){
					$this->active = $active;
				}

	public function getActive(){
					return $this->active;
				}

	public function setCreate_date($create_date){
					$this->create_date = $create_date;
				}

	public function getCreate_date(){
					return $this->create_date;
				}

	public function setLast_update($last_update){
					$this->last_update = $last_update;
				}

	public function getLast_update(){
					return $this->last_update;
				}

	public function setAddress_id($address_id){
					$this->address_id = $address_id;
				}

	public function getAddress_id(){
					return $this->address_id;
				}
}
?>