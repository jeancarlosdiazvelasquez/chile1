<?php
  include_once("conex.php");
  include_once("ExportarBD_Script.php");

  ini_set('display_errors',1);
  ini_set('display_startup_errors',1);
  error_reporting(E_ALL);
  
  $FechaBackup = date('Y-m-d');
  $HoraBackup = date('H-i-s');


$archivo = "BD_Artigues_";
$nombrearchivo = $archivo.'['.$FechaBackup.']'.'['.$HoraBackup.'].sql';

$mysqlExportPath ='RESPALDOS_BD/'.$nombrearchivo;


 exportarTablas($host, $user,$password, $database); 

header("Cache-Control: public");
header("Content-Description: File Transfer");
header ('Content-Disposition: attachment; filename='.$mysqlExportPath); 
header ("Content-Type: application/octet-stream");
header ("Content-Length: ".filesize($mysqlExportPath));
readfile($mysqlExportPath);

?> 