<?PHP 
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

// HE IMPORTADO EL ARCHIVO "conex.php" Y CON EL TODAS SUS VARIABLES, POR TANTO, 
// EN ESTE ARCHIVO CUANDO UTILIZO LAS VARIABLES: $database, $user, $host y $password
// SON LAS MISMAS VARIABLES DEL ARCHIVO "conex.php"

// REVISAR LOS PARAMETROS DE CONEXION EN EL ARCHIVO "conex.php" DADO QUE MI
// SERVIDOR LOCAL TIENEN COMO USUARIO PRINCIPAL "root" Y EL PASSWORD "root"



// SI EN EL SERVIDOR PERMITEN UTILIZAR EL METODO EXEC() DE PHP SE PUEDE UTILIZAR 
// EL COMANDO MYSQLDUMP PARA CREAR EL BACKUP O RESPALDO

//$command='mysqldump -f --user="' .$user .'" --password="' .$password .'" ' .$datbase .' >'.$mysqlExportPath;
//exec($command,$output=array(),$worked);

// SI NO PERMITEN EJECUTAR EL METODO EXEC() ENTONCES CREAMOS EL RESPALDO
// CON EL ARCHIVO "ExportarBD-Script.php" LLAMANDO EL METODO "exportarTablas()"

 exportarTablas($host, $user, $password, $database); 


header ('Content-Disposition: attachment; filename='.$mysqlExportPath); 
header ("Content-Type: application/octet-stream");
header ("Content-Length: ".filesize($mysqlExportPath));
readfile($mysqlExportPath);


 
?> 