<?php 
class Admin{
	public static function __autoload(){
		$dbc = 	DB::connect();
	}

	public static function createDB(){
		new ORM(DB::connect());
	}

	public static function init(){
		$reserva = new _reserva();
		$hab = new _room();

		$singleFree = $hab->free(1);
		$doubleFree = $hab->free(2);
		$tripleFree = $hab->free(3);
		$totalFree = $hab->totalFree();

		$lista = $reserva->listar();
		$data = array(
			"lista" => $lista,
			"totalFree" => $totalFree[0]['total'],
			"singleFree" => $singleFree[0]['total'],
			"doubleFree" => $doubleFree[0]['total'],
			"tripleFree" => $tripleFree[0]['total'],
			);
		View::parse("main", $data);
	}

	public static function Customer(){
		$customer = new _customer();
		
		$lista = $customer->listar();
		$data = array(
			"lista" => $lista,
			);
		View::parse("customer", $data);

	}

}

 ?>