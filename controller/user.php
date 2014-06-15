<?php 
class Users{

	public static function init(){
		$session = (Ftn::isLogin()) ? Session::getValue("user")." - <a href=".LINK."user/logout>(salir)</a>":"<a href=".LINK."user>Iniciar Sesión</a>";
		$data=array(
			"title" => "MonkeyTech",
			"salute" => "Contendo",
			"link" => LINK,
			"css" => CSS,
			"js" => JS,
			"sesion" => $session
			);
		View::parse("header", $data);
		View::parse("login", $data);
	}

	public static function login(){
		$session = (Ftn::isLogin()) ? Session::getValue("user")." - <a href=".LINK."user/logout>(salir)</a>":"<a href=".LINK."user>Iniciar Sesión</a>";
		$error = 0;
		$data = array(
				"title" => "MonkeyTech",
				"link" => LINK,
				"css" => CSS,
				"js" => JS,
				"sesion" => $session
				);
		if (!Form::required($_POST, "user, pass")){
			$data["error"] = Session::getValue("errorReq");
			View::parse("header", $data);
			View::parse("login", $data);
		}
		else{
			$usuario = new Usuario(DB::connect());
			if ($user = $usuario->login($_POST["user"], Ftn::crypt($_POST["pass"]))){
				Session::setValue("login", true);
				Session::setValue("user", $user[0]["usuario"]);
				Session::setValue("admin", $user[0]["admin"]);
				Session::setValue("msjLogin", "Bienvenido ".$user[0]["usuario"]);
				header("location:".HOME);
			}
			else{
				$data["error"] = "Usuario o Contraseña incorrectos";
				View::parse("header", $data);
				View::parse("login", $data);
			}
		}	
	}

	public static function logout(){
		$nombre = Session::getValue("user");
		session_destroy();
		Session::setValue("msjLogin", "Hasta Luego ".$nombre);
		header("location:".HOME);
	}


	public static function alta(){
		$session = (Ftn::isLogin()) ? Session::getValue("user")." - <a href=".LINK."user/logout>(salir)</a>":"<a href=".LINK."user>Iniciar Sesión</a>";
		$error=0;	
		$required = "apellido, nombre, email, user, pwd";
		$data = array(
				"title" => "MonkeyTech",
				"link" => LINK,
				"css" => CSS,
				"js" => JS,
				"sesion" => $session
				);
		if (!Form::required($_POST, $required)){
			$error =1;
			$data["error"] = Session::getValue("errorReq");
		}else{
			if (!Form::validateEmail($_POST["email"])){
				$error = 1;
				$data["errorEmail"] = Session::getValue("errorEmail");
			}
			if (!Form::validatePass($_POST["pwd"], $_POST["pwd"])){
				$error = 1;
				$data["errorPwd"] = Session::getValue("errorPass");
			}
		}
		if ($error == 0){
			$usuario = new Usuario(DB::connect());
			$usuario->setNombres($_POST["nombre"]);
			$usuario->setApellidos($_POST["apellido"]);
			$usuario->setEmail($_POST["email"]);
			$usuario->setUser($_POST["user"]);
			$usuario->setPass(Ftn::crypt($_POST["pwd"]));
			$usuario->save();
			$data["error"] = "Usuario Creado correctamente";
		}
		View::parse("header", $data);
		View::parse("login", $data);
	}

}

 ?>