<?php
session_start();
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);  
include('../includes/config.php');
if (isset($_POST['add_mantainance'])) {

    $vehicle = $_POST['vehicle'];
    $garage = $_POST['garage'];
    $amount = $_POST['amount'];
    $description = $_POST['description'];
    $date_mant = $_POST['date_mant'];
    $services = $_POST['service'];
    $array= implode(",", $services);

    /* triggure mantainance */
    $query = "INSERT INTO mantainance(vehicle, garage, amount, description, date_mant, service) 
                VALUES(:vehicle, :garage, :amount, :description, :date_mant, :service)";

    $query = $dbconnect->prepare($query);
    $query->bindParam(':vehicle', $vehicle, PDO::PARAM_STR);
    $query->bindParam(':garage', $garage, PDO::PARAM_STR);
    $query->bindParam(':amount', $amount, PDO::PARAM_STR);
    $query->bindParam(':description', $description, PDO::PARAM_STR);
    $query->bindParam(':date_mant', $date_mant, PDO::PARAM_STR);
    $query->bindParam(':service', $array, PDO::PARAM_STR);

    $query->execute();
    $lastInsertId = $dbconnect->lastInsertId();

    /* triggure expenditure */
    $expenditure_type = 1;
    $user_expenditure = $_SESSION['UserID'];
    $data = [
        'expenditure_type'=>$expenditure_type,
        'expenditure_descrption'=>$array,
        'expenditure_amount'=>$amount,
        'user_expenditure'=>$user_expenditure
    ];

    $sql = "INSERT INTO tbl_expenditure(expenditure_type, expenditure_descrption, expenditure_amount, user_expenditure) 
            VALUES(:expenditure_type, :expenditure_descrption, :expenditure_amount, :user_expenditure)";
    $stmt = $dbconnect->prepare($sql);
    $stmt->execute($data);

    if ($lastInsertId && $stmt) {
        $_SESSION['success'] = "Mantainance Created Successfully";
        header('location:maintainance.php');
    } 

    else {
        $_SESSION['error'] = "Something went wrong. Please try again";
        header('location:maintainance.php');
    }
} 

else {
    echo "not post";
}