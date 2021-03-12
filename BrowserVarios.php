<?php
 require_once('conex.php');
?>
<html>
<head>
	<title>Buscador</title>
	<link rel="stylesheet" type="text/css" href="media/css/estilo.css">
	<script type="text/javascript" src="media/js/jquery.js"></script>
	<script type="text/javascript">



		function Buscador(){

			var ResultBrowser = document.getElementById('dato').value;

			var Solicitud = $.post('scriptBusquedaVarios.php', {});




			$('#ResultBrowser').css('background-color','black');
			$('#ResultBrowser').html('<h3>Busqueda de '+ResultBrowser+'...</h3>');

			Solicitud.error(function(){
				alert('Error de conexion!');
					$('#ResultBrowser').html('<br>Error');
					$('#ResultBrowser').css('background-color','red');
						});

			Solicitud.success(function(){

				var Actualizar = $.post('FrameResultadoVarios.php',{dato:ResultBrowser},  function(Actualizacion){
				$('#resultados').html('');

				$('#resultados').append(Actualizacion);
					});
				});}

	</script>
</head>
<body >

<div align="center"><strong>
  <input type="text" onKeyUp="Buscador()" id="dato">
  Busqueda rápida Ramos Varios</strong></div>
	<div id="ResultBrowser" align="center"></div>
	<div id="resultados" align="center"></div>



</body>
</html>