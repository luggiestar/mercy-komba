<?php 
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
		$dbconnection = new PDO($dbserver, DB_USER, DB_PASS);
		$dbconnection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	}
	catch (PDOExeption $e) {
		echo $e->getMessage();
	}
?>