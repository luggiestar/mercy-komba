<?php include('../includes/config.php');

if (isset($_POST['delete'])) {
    $id = $_POST['service_id'];

    $delete_mantainace = mysqli_query($conn, "DELETE FROM tbl_service WHERE service_id='$id' ");

    if ($delete_mantainace) {
        $_SESSION['success'] = "Service Deleted Successfully";
        header('location:service.php');
    } else {
        $_SESSION['Error'] = "Fail to Deleted try again";
        header('location:service.php');
    }
}

// edit vehacle
elseif (isset($_POST['edit_vehicle'])) {

    $id = $_POST['id'];
    $vehicle = $_POST['vehicle'];
    $garage = $_POST['garage'];
    $amount = $_POST['amount'];
    $description = $_POST['description'];

    $update_mantainance = mysqli_query($conn, "UPDATE tbl_service SET 
            vehicle='$vehicle', garage='$garage', amount='$amount',
            description='$description' WHERE mant_id = '$id'");

    if ($update_mantainance) {
        $_SESSION['success'] = "service Updated Successfully";
        header('location:service.php');
    } else {
        $_SESSION['error'] = "Fail please try again";
        header('location:service.php');
    }
}