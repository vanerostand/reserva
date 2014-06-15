<?php 
class Main{
	public static function __autoload(){
		$dbc = 	DB::connect();
	}

	public static function createDB(){
		new ORM(DB::connect());
	}

	public static function init(){
		echo "LOGIN SHOULD BE HERE";
	}

	
}

 ?>