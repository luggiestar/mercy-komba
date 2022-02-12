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

			$data = [
				'expenditure_type_name'=>$exipandure_type,
			];
			
			//sql
			$sql = "INSERT INTO tbl_expenditure_type(expenditure_type_name) 
					VALUES(:expenditure_type_name)";

			// prepare statement to execute
			$stmt = $dbconnect->prepare($sql);

			//execute data
			$stmt->execute($data);

			if($stmt){
				header("location:../");
				$_SESSION['success'] = "expenditure Saved successfullys";
			}
			else {
				header("location:../");
				$_SESSION['error'] = "Try again";
				echo "error";
			}
		}
	}
?>