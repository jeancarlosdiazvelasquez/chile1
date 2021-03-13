<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Buscador Liquidaciones Artigues</title>

<script type="text/javascript" src="media/js/jquery.js"></script>

<script type="text/javascript">
$(document).ready(function(){
  $("#liquidaciones").click(function(){ 
  $("#Centro").fadeOut(10);
  $("#CentroMuestra").hide();
  $("#CentroMuestra").load("BrowserDocumentos.php");
  $("#CentroMuestra").fadeIn(10); });

 $("#Avanzado").click(function(){ $("#Centro").fadeOut(10); $("#CentroMuestra").hide(); $("#CentroMuestra").load("BrowserArchivoAvanzado.php"); $("#CentroMuestra").fadeIn(10); });

  $("#varios").click(function(){
    $("#Centro").fadeOut(10);
    $("#CentroMuestra").hide();
    $("#CentroMuestra").load("BrowserVarios.php");
    $("#CentroMuestra").fadeIn(10);
  });
});
</script>
</head>

<body>
<table width="100%" height="622" border="0">
  <tr>
    <td width="20%" height="88"><img src="softartigues.png" width="300" height="96" /></td>
    <td width="80%" align="center"><h2><strong>Busqueda de Liquidaciones</strong></h2></td>
  </tr>
  <tr>
    <td height="518" align="center" bgcolor="#003366"><p><strong><a href="#" id="liquidaciones">Informe Liquidaciones </a></strong></p>
    <p><strong><a href="#" id="varios">Informe Ramos Varios </a></strong></p>
    <p><strong><a href="EXPORTBD.php">Descarga BD</a></strong></p></td>

    <td>
    <!-- MODIFICADO -->


      <div id="Centro" align="center">
      <p>&nbsp;</p>
      <p><strong><em>&lt;-- Seleccione el tipo de Informe que dese buscar</em></strong></p>
     
    </div>
    <div id="CentroMuestra" align="center"></div>

    <div align="center"></div>
    <!-- MODIFICADO --></td>
  </tr>
</table>
</body>
</html>
