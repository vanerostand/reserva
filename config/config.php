<?php 
$online = false;

if ($online)
	{
	define("HOST", "www.MISITIO.com");
	define("SERVER_ROOT", $_SERVER['DOCUMENT_ROOT']);
	define("HOME", "");
	define("FILE_PATH",'');
	define("IMG_PATH",'');
	define("CSS", "/".HOST."/web/css/");
	define("JS", "/".HOST."/web/js/");
	define("LINK", "/".HOST."");
	define("CONT", 1);

	define("DB_HOST", "192.168.0.170");
	define("DB_USER", "joaquinnader");
	define("DB_PASS", "topsecret");
	define("DB_NAME", "");
	}	else 
	{
	define("HOST", "reserva");
	define("SERVER_ROOT", $_SERVER['DOCUMENT_ROOT']."/".HOST);
	define("HOME", 'http://localhost/'.HOST."/");
	define("FILE_PATH",'http://localhost/'.HOST.'/web/uploads/');
	define("IMG",'http://localhost/'.HOST.'/web/images/');
	define("CSS", "/".HOST."/web/css/");
	define("JS", "/".HOST."/web/js/");
	define("LINK", "/".HOST."/");
	define("CONT", 2);

	define("DB_HOST", "localhost");
	define("DB_USER", "root");
	define("DB_PASS", "");
	define("DB_NAME", "reserva");
	}

define("CIFRADO", MCRYPT_RIJNDAEL_256);
define("MODO", MCRYPT_MODE_ECB);

define("CARPETA_ARCHIVO", SERVER_ROOT."/web/uploads/");

include ("db.php");
include ("includes.php");
?>