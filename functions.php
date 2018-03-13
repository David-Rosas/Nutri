<?php
function conexion($bd_config){
	try{
	$conexion = new PDO('mysql:host=localhost;dbname='.$bd_config['basedatos'], $bd_config['usuario'],$bd_config['pass']);
		return $conexion;
	}catch(PDOException $e ){
		return false;
		}	
}
function comprobarSession(){
	if(!isset($_SESSION['admin'])){
		header('Location:http://localhost/proyectotesis/login.php');
	}
}

function obtener_user($conexion){
 	
 $user = $conexion->prepare("SELECT * FROM usuario");
 $user->execute();
 return $user->fetchAll();

}
function obtener_calendar($conexion){
 	
 $calendar = $conexion->prepare("SELECT * FROM reservacion  ORDER BY id");
 $calendar->execute();
 return $calendar->fetchAll(PDO::FETCH_ASSOC);

}
?>
