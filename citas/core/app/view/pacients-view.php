<div class="row">
	<div class="col-md-12">
<div class="card">
  <div class="card-header" data-background-color="blue">
      <h4 class="title">Pacientes</h4>
  </div>
  <div class="card-content table-responsive">
	<a href="index.php?view=newpacient" class="btn btn-default"><i class='fa fa-male'></i> Nuevo Paciente</a>
		<?php

		$users = PacientData::getAll();
		if(count($users)>0){
			// si hay usuarios
			?>

			<table class="table table-bordered table-hover">
			<thead>
			<th>Nombre completo</th>
			<th>Direccion</th>
			<th>Email</th>
			<th>Telefono</th>
			<th></th>
			</thead>
			<?php
			foreach($users as $user){
				?>
				<tr>
				<td><?php echo $user->name." ".$user->lastname; ?></td>
				<td><?php echo $user->address; ?></td>
				<td><?php echo $user->email; ?></td>
				<td><?php echo $user->phone; ?></td>
				<td style="width:280px;">
				<a href="index.php?view=pacienthistory&id=<?php echo $user->id;?>" class="btn btn-default btn-xs">Historial</a>
				<a href="index.php?view=editpacient&id=<?php echo $user->id;?>" class="btn btn-warning btn-xs">Editar</a>
				<a onclick="return confirmDel();" href="index.php?view=delpacient&id=<?php echo $user->id;?>" class="btn btn-danger btn-xs">Eliminar</a>
				</td>
				</tr>
				<?php

			}
			?>
			</table>
			</div>
			</div>
			<?php



		}else{
			echo "<p class='alert alert-danger'>No hay pacientes</p>";
		}


		?>


	</div>
</div>
<script type="text/javascript">
function confirmDel()
{
  var agree=confirm("¿Realmente desea eliminar el paciente?");
  if (agree) return true ;
  return false;
}
    
</script>