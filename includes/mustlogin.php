<?php
session_start();
if(empty($_SESSION['UserID']))
{
    // header('Location: ../index.php');
    echo '<script> location.replace("../index.php"); </script>';
    echo "error";
    exit;
}