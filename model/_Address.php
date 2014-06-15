<?php

Class _Address{
	private $dbc;
	private $address_id;
	private $address;
	private $address2;
	private $district;
	private $city_id;
	private $postal_code;
	private $phone;
	private $last_update;


	public function __construct(){
		$this->dbc = DB::Connect();
	}


	public function save(){
		$query = 'INSERT INTO address(
		address_id, 
		address, 
		address2, 
		district, 
		city_id, 
		postal_code, 
		phone, 
		last_update) values (
		$this->address_id, 
		$this->address, 
		$this->address2, 
		$this->district, 
		$this->city_id, 
		$this->postal_code, 
		$this->phone, 
		$this->last_update)';}

	public function listar($param='*'){
			$query = 'SELECT '.$param.' FROM address 
			ORDER BY address_id DESC';
			if ($result = $this->dbc->query($query)){
				$this->dbc->close();
				return Ftn::toArray($result);
			}else{
				die('Error de Conexion con la DB: '.$query);
			}

		}

	public function ver($address_id, $param='*'){
			$query = "SELECT $param FROM address 
			WHERE address_id = $address_id";
		if ($result = $this->dbc->query($query)){
			$this->dbc->close();
			return Ftn::toArray($result);
		}else{
			die('Error de Conexion con la DB: '.$query);
		}
	}

	public function setAddress_id($address_id){
					$this->address_id = $address_id;
				}

	public function getAddress_id(){
					return $this->address_id;
				}

	public function setAddress($address){
					$this->address = $address;
				}

	public function getAddress(){
					return $this->address;
				}

	public function setAddress2($address2){
					$this->address2 = $address2;
				}

	public function getAddress2(){
					return $this->address2;
				}

	public function setDistrict($district){
					$this->district = $district;
				}

	public function getDistrict(){
					return $this->district;
				}

	public function setCity_id($city_id){
					$this->city_id = $city_id;
				}

	public function getCity_id(){
					return $this->city_id;
				}

	public function setPostal_code($postal_code){
					$this->postal_code = $postal_code;
				}

	public function getPostal_code(){
					return $this->postal_code;
				}

	public function setPhone($phone){
					$this->phone = $phone;
				}

	public function getPhone(){
					return $this->phone;
				}

	public function setLast_update($last_update){
					$this->last_update = $last_update;
				}

	public function getLast_update(){
					return $this->last_update;
				}
}
?>