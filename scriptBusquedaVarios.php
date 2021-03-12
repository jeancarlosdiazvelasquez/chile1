<?PHP
include_once("conex.php");
  $dato   = $_POST['dato'];//$_SESSION['dato'];
  if($dato==" ") {$dato= NULL;}


?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<LINK href="archivos/estilos.css" type=text/css rel=stylesheet>
<STYLE type=text/css>
.Estilo103 {FONT-WEIGHT: bold; FONT-SIZE: 12px; COLOR: #000099 }
.Estilo1 {color: #006666}
</STYLE>

<META content="MSHTML 6.00.2900.3059" name=GENERATOR>
<title></title></head>
<body oncontextmenu="return false"  location=no>


<p>
  <?PHP
/************************************/
    if ($resultado = $mysqli->query("SELECT
	id,
	10_N_Liquidacion,
	25_N_Siniestro,
	9_Ademdium,
  20_Nombre_Asegurador
 from liquidacion_rvarios where (10_N_Liquidacion LIKE '%$dato%' or 25_N_Siniestro LIKE '%$dato%' or 9_Ademdium LIKE '%$dato%' or 20_Nombre_Asegurado LIKE '%$dato%' )"))
 {
		  $row = $resultado->fetch_row();
		  var_dump($row);

			  echo ' <div align= "center"> <table width="100%"   border="1" bordercolor="#009999"  cellpadding="1" cellspacing="2">

<tbody><tr><td> ';


echo '<table border="1" cellpadding="2" cellspacing="2">';
echo '<tr >';
// mostramos los nombres de los campos
$numcampos = $resultado->num_fields();
$NumRegistros = $resultado->num_rows();
if($NumRegistros ==0)
{
echo '
<table width="530" border="0" align="center">
    <tr>
      <td width="535"><table width="530" border="1">
        <tr>
          <td width="538" bgcolor="#99CCFF"><strong><div align="center" >No se encontro ningun registro </div></strong></td>
        </tr>
      </table>';

}
else
{
for ($i = 0; $i < $numcampos; $i++)
{
echo '<th ><b>'.$row[$i].'</b></span></th>';
}
echo "</tr>\n";
// mostrarmos los registros
$var = 1;
$j = 1;
while ($row = $resultado->fetch_row())
{
echo "<tr> \n";

for ($i = 0; $i < $numcampos; $i++)
{
  if($var==1)
  {
      echo '<td bgcolor="#EEEEEE"> <span class="Estilo103">';
	  if($i==0)
      {
           echo "<a  href=\"export_varios_doc.php?Serial=".$row[$i]."\" target='_blank' > Imprimir </a>";
      }
	  if($row[$i]!=null && $i!=0 )
      {
         echo $row[$i];
      }
      echo "</span></td>";

  }
  else
  {
      echo '<td bgcolor="#D8F8FE"><span class="Estilo103">';
	   if($i==0)
      {
          echo "<a href=\"export_varios_doc.php?Serial=".$row[$i]."\" target='_blank'> Imprimir </a>";
      }

      if($row[$i]!=null && $i!=0 )
      {
         echo $row[$i];
      }
      echo "</span></td>";


  }
}
  if($var==1) $var=0;
  else $var=1;
  	  $j++;
echo "</tr>\n";
}
echo "</table>";

}// if else numregistros

}
else
	{
	}

			  //------------------------------------------


?>

</body>
</html>
