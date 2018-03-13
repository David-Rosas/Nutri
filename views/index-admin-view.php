<script type="text/javascript">
 $(document).ready(function(){
 $('.button-collapse').sideNav('show');
 $('.dropdown-button').dropdown({
      inDuration: 300,
      outDuration: 225,
      constrainWidth: false, // Does not change width of dropdown to that of the activator
      hover: true, // Activate on hover
      gutter: 0, // Spacing from edge
      belowOrigin: false, // Displays dropdown below the button
      alignment: 'left', // Displays dropdown with edge aligned to the left of button
      stopPropagation: false // Stops event propagation
    }
  );    
 });  
</script>

<div class="row">
<div class="col s2">
  <ul id="slide-out" class="side-nav fixed">
    <li><a id="logo-container" href="#" class="brand-logo"><img id="img-admin" src="../imagenes/inn2.png">Instituto Nacional de Nutrición</li>
      <li><a href="#!">First Sidebar Link</a></li>
      <li><a href="#!">Second Sidebar Link</a></li>
    </ul>
</div>
<div class="col s9 red darken-3" style="text-align:right">
<a class='dropdown-button btn light-green darken-2' href='#' data-activates='dropdown1'>
<i class="material-icons">settings</i><span>OPCIONES<span></a>

  <!-- Dropdown Structure -->
  <ul id='dropdown1' class='dropdown-content '>
    <li><a href="#!"><i class="material-icons">print</i>Imprimir</a></li>
    <li><a href="#!"><i class="material-icons">email</i>Informar problemas</a></li>
    <li><a href="#!"><i class="material-icons">settings_power</i>Cerrar sesion</a></li>
    </ul></div>
  
<div class="row">
<div class="col s2">
   <!--<ul id="slide-out" class="side-nav fixed">
    <li><a id="logo-container" href="#" class="brand-logo"><img id="img-admin" src="../imagenes/inn2.png">Instituto Nacional de Nutrición</li>
      <li><a href="#!">First Sidebar Link</a></li>
      <li><a href="#!">Second Sidebar Link</a></li>
    </ul>
    -->
   
</div>
<div class="col s10 grey lighten-3" >

  
</div>
    </div>
    
   
  
    