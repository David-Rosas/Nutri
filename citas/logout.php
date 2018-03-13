<?php
session_start();
// ---
// la tarea de este archivo es eliminar todo rastro de cookie

// -- eliminamos el usuario
if(isset($_SESSION['user_id'])){
	unset($_SESSION['user_id']);
}

session_destroy();
header('Location: ../');
die();
//estemos donde estemos nos redirije al index
print "<script>window.location='index.php';</script>";
?>