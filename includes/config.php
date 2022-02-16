<?php

	session_start();
	ini_set('display_errors', 1);
	ini_set('display_startup_errors', 1);
	error_reporting(E_ALL);  
	
	// online connection
	/*define('DB_HOST', 'localhost');
	define('DB_USER', 'kvmcotz_kvmcotz');
	define('DB_PASS', 'sinanywilaluggie');
	define('DB_NAME', 'kvmcotz_vehicle_management');
	*/

	// offline connection
	define('DB_HOST', 'localhost');
	define('DB_USER', 'root');
	define('DB_PASS', '');
	define('DB_NAME', 'kvmcotz_vehicle_management');
	
	// Establish database connection.
	try {
	    $dbconnect = new PDO("mysql:host=" . DB_HOST . ";dbname=" . DB_NAME, DB_USER, DB_PASS, array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES 'utf8'"));
	} 

	catch (PDOException $e) {
	    exit("Error: " . $e->getMessage());
	}

	//for mysqli
	$conn = mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_NAME);

	function clean_input($input) {
		$input = trim($input);
		$input = stripslashes($input);
		$input = htmlspecialchars($input, ENT_QUOTES, "UTF-8");
		
		return $input;
	}