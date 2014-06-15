<?php 
class Customer{
	public static function __autoload(){
		$dbc = 	DB::connect();
	}

	public static function init(){
		header("location: ".HOME);
	}

	private $dbc;
	private $id;
	private $first_name;
	private $last_name;
	private $email;
	private $address_id;
	private $active;
	private $create_date;
	private $last_update;


	public static function save(){
		session::setvalue("message", "validation error");
		$error = 0;
		if (!empty($_POST)){
			



			echo date("Y-m-d H:i:s");
		}else{
			session::setvalue("message", "validation error");
		}
	}

}
?>