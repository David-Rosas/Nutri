<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

  <title>INN Cita Medica</title>

  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <link href="../css/material-dashboard.css" rel="stylesheet"/>
    <link href="../font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <script src="../js/jquery.min.js" type="text/javascript"></script>


<link href='../fullcalendar/fullcalendar.min.css' rel='stylesheet' />
<link href='../fullcalendar/fullcalendar.print.css' rel='stylesheet' media='print' />
<script src='../fullcalendar/moment.min.js'></script>
<script src='../fullcalendar/fullcalendar.min.js'></script>

</head>
<?php
include ('../admin/config.php');
include ('../functions.php');

$conexion = conexion($bd_config);
        if(!$conexion){
  header('Location: error.php');
        }
//$json = $array();
$events=obtener_calendar($conexion);
 if(!$events){
  header('Location: error.php');
     
 } 
 
foreach($events as $event){
  $thejson[] = array("title"=>$event['title'],"url"=>"./?view=editreservation&id=".$event['id'],"start"=>$event['date_at']."T".$event['time_at']);
  }

?>

<script>
  $(document).ready(function() {

    $('#calendar').fullCalendar({
      header: {
        left: 'prev,next today',
        center: 'title',
        right: 'month,agendaWeek,agendaDay'
      },
      defaultDate: '<?php echo date('Y-m-d');?>',
      editable: false,
      eventLimit: true, // allow "more" link when too many events
      events: <?php echo json_encode($thejson); ?>
    });
    
  });

</script>

?>

<body>
<?php include ("../views/index-citas-view.php"); ?>


<!--   Core JS Files   -->
  <script src="../js/bootstrap.min.js" type="text/javascript"></script>
  <script src="../js/material.min.js" type="text/javascript"></script>

  <!--  Charts Plugin -->
  <script src="../js/chartist.min.js"></script>

  <!--  Notifications Plugin    -->
  <script src="../js/bootstrap-notify.js"></script>

  <!--  Google Maps Plugin    -->
  <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>

  <!-- Material Dashboard javascript methods -->
  <script src="../js/material-dashboard.js"></script>

  <!-- Material Dashboard DEMO methods, don't include it in your project! -->
  <script src="../js/demo.js"></script>

  <script type="text/javascript">
      $(document).ready(function(){

      // Javascript method's body can be found in assets/js/demos.js
          demo.initDashboardPageCharts();
      
      });
  </script>
</body>
</html>