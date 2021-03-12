<?php
error_reporting(1);

$host     = "localhost";
$database = "imprimir";
$user     = "root";
$password = "root";


$mysqli = new mysqli($host , $user, $password, $database);

/* comprueba la conexión */
if (mysqli_connect_errno()) {
    printf("Connect failed: %s\n", mysqli_connect_error());
    exit();
}




?>