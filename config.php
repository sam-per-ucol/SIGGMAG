<?php 
/*Conexion a base de datos*/
$DB_NAME = 'isis';
$DB_HOST = 'localhost';
$DB_USER = 'root';
$DB_PASS = '';
$mysqli = new mysqli($DB_HOST, $DB_USER, $DB_PASS, $DB_NAME);

/*Ruta absoluta*/
if (substr( $_SERVER["DOCUMENT_ROOT"], -1) != '/') {
	$_SERVER["DOCUMENT_ROOT"] .= '/';
}
?>