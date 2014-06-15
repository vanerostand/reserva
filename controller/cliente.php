<?php 
class Cliente{
	public static function __autoload(){
		$dbc = 	DB::connect();
	}

public static function init(){
		$cliente = new _customer();
		
		$lista = $reserva->listar();
		$data = array(
			"lista" => $lista,
			"totalFree" => $totalFree[0]['total'],
			"singleFree" => $singleFree[0]['total'],
			"doubleFree" => $doubleFree[0]['total'],
			"tripleFree" => $tripleFree[0]['total'],
			);
		View::parse("client", $data);
	}
	
}

 ?>