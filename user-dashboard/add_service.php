<?php

include('../includes/config.php');

if (isset($_POST['add_service'])) {

    $vehicle = $_POST['vehicle'];
    $service_name = $_POST['service_name'];
    $service_price = $_POST['service_price'];
    $service_location = $_POST['service_location'];
    $service_date = $_POST['service_date'];
    $service_description = $_POST['service_description'];
    $array= implode(",", $services);
    $services = $_POST['service'];
    $array= implode(",", $services);

    /* triggure mantainance */
    $query = "INSERT INTO tbl_service
              VALUES(:vehicle, :service_name, :service_price, :service_location, :service_date, :service_description)";

    $query = $dbconnect->prepare($query);
    $query->bindParam(':vehicle', $vehicle, PDO::PARAM_STR);
    $query->bindParam(':service_name', $service_name, PDO::PARAM_STR);
    $query->bindParam(':service_price', $service_price, PDO::PARAM_STR);
    $query->bindParam(':service_location', $service_location, PDO::PARAM_STR);
    $query->bindParam(':service_date', $service_date, PDO::PARAM_STR);
    $query->bindParam(':service_description', $service_description, PDO::PARAM_STR);

    $query->execute();
    $lastInsertId = $dbconnect->lastInsertId();

    foreach($services as $value) {
        $service_sql = "INSERT INTO 
            tbl_mantainance_service(mantainance, service) 
            VALUES(:mantainance, :service)";

        $query_service = $dbconnect->prepare($service_sql);
        $query_service->bindParam(':mantainance', $lastInsertId, PDO::PARAM_STR);
        $query_service->bindParam(':service', $value, PDO::PARAM_STR);
        $query_service->execute();
    }

    /* triggure expenditure */
    $expenditure_type = 1;
    $user_expenditure = $_SESSION['UserID'];
    $data = [
        'expenditure_type'=>$expenditure_type,
        'expenditure_descrption'=>$description,
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