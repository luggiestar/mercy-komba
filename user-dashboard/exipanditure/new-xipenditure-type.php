<?php
	session_start();
	include('../../includes/config.php');

	if(isset($_POST['save_exipanditure'])) {
		
		$exipandure_type = clean_input($_POST['expenditure_type_name']);
	    
	    if(empty($exipandure_type)) {
				header("location:../");
				$_SESSION['error'] = "fill the field above";
	    		echo "error required";
		}

		else {
			
			$user = $_SESSION['UserID'];
			$action = "adding new expenditure type";
			$sql = "INSERT INTO tbl_logs(log_action, user) VALUES (:action, :user)";
			$stmt = $dbconnect->prepare($sql);
			$stmt->execute(['action'=>$action, 'user'=>$user]);

			if($stmt){
			
				$sql = "INSERT INTO tbl_expenditure_type(expenditure_type_name) 
					VALUES(:expenditure_type_name)";

				$stmt = $dbconnect->prepare($sql);
				$stmt->execute(['expenditure_type_name'=>$exipandure_type]);
			
				if($stmt){
					header("location:../expenditure-type.php");
					$_SESSION['success'] = "expenditure Saved successfullys";
				}

			}
			else {
				header("location:../expenditure-type.php");
				$_SESSION['error'] = "Try again";
				echo "error";
			}
		}
	}
?>