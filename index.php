<!DOCTYPE html>
<?php
include ('admin/config.php');
include ('functions.php');
$admin = 1;
$nutri = 2;
$citas = 3;
$conexion = conexion($bd_config);
        if(!$conexion){
 	header('Location: error.php');
        }
if($_SERVER['REQUEST_METHOD'] == 'POST'){
	$usuario = $_POST['username'];
	$password = $_POST['password'];


$user = obtener_user($conexion);
 if(!$user){
 	header('Location: error.php');
     
 } 

foreach($user as $users):

 if($usuario == $users['username'] && $password == $users['password']){
     if($admin == $users['type']){
       $_SESSION['admin'] = $users['username']; 
         header('Location: ' .$ruta. '/admin');
     }
		if($nutri == $users['type']){
       $_SESSION['nutri'] = $users['username']; 
         header('Location: ' .$ruta. '/nutri');
     }
     if($citas == $users['type']){
       $_SESSION['citas'] = $users['username']; 
         header('Location: ' .$ruta. '/citas');
     }
	}

 endforeach;   
}
 

?>
<html lang="es">
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="css/miestilos.css">
<title>Instituto Nacional de Nutición</title>
    
      <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>

      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</head>
<body>
<?php include ("views/index-view.php"); ?>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script><script type="text/javascript" src="js/materialize.min.js"></script>
</body>
</html>