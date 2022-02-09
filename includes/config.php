<?php
//for checking error
ini_set('error_reporting', E_ALL);
ini_set('display_errors', 'On');  //On or Off

$msg="";

// DB credentials.
$host = 'localhost';
// $user = 'kvmcotz_luggiekomba';
// $password = 'TIMm%!8^&a2E';
$user = 'root';
$password = '';
$dbname = 'kvmcotz_vehicle_management';
$mysqli = new mysqli($host, $user, $password, $dbname);


//for checking error
ini_set('error_reporting', E_ALL);
ini_set('display_errors', 'On');  //On or Off
/* make variable constant */
define('DB_USER', 'root');
define('DB_PASS', '');

/* variable hold dbType, bdName and dbHost name*/
$dbserver = "mysql:host=localhost; dbname=kvmcotz_vehicle_management; charset=UTF8";

/*Make Connection to database*/
try {
	$dbconnect = new PDO($dbserver, DB_USER, DB_PASS);
	$dbconnect->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}

catch (PDOExeption $e) {
	echo $e->getMessage();
}

function clean_input($input) {

	/* trim */
	$input = trim($input);

	/* Strip unnecessary characters */
	$input = stripslashes($input);

	/* escape quote from user input */
	$input = htmlspecialchars($input, ENT_QUOTES, "UTF-8");

	return $input;

}