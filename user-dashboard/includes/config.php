<?php
// DB credentials.

/*
online connection
define('DB_HOST', 'localhost');
define('DB_USER', 'kvmcotz_luggiekomba');
define('DB_PASS', 'TIMm%!8^&a2E');
define('DB_NAME', 'kvmcotz_vehicle_management');

*/

// offline connection
define('DB_HOST', 'localhost');
define('DB_USER', 'root');
define('DB_PASS', '');
define('DB_NAME', 'kvmcotz_vehicle_management');

// Establish database connection.
try {
    $dbh = new PDO("mysql:host=" . DB_HOST . ";dbname=" . DB_NAME, DB_USER, DB_PASS, array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES 'utf8'"));
} catch (PDOException $e) {
    exit("Error: " . $e->getMessage());
}