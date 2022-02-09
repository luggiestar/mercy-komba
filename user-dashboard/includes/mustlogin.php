<?php
   

    ini_set('display_errors', 1);
    ini_set('display_startup_errors', 1);
    error_reporting(E_ALL);   
        
    require_once('dbconnect.inc.php');
    require_once('../vendor/autoload.php');
    $login = new User($dbconnection);

    if(!$login->is_authenticated()) {
        // header('Location: ../index.php');
        echo '<script> location.replace("../index.php"); </script>';
        echo "error";
        exit;
    }
?>