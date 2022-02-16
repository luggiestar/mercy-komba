<?php
	include('../../includes/config.php');

	if(isset($_POST['save_exipanditure'])) {
		
		$exipandure_type = clean_input($_POST['exipandure_type']);
	    $exipandure_amount = clean_input($_POST['exipandure_amount']);
	    $expenditure_descrption = clean_input($_POST['description']);
	    $user_expenditure = $_SESSION['UserID'];

	    if(empty($exipandure_type) || empty($exipandure_amount) || empty($expenditure_descrption) || empty($user_expenditure)) {
				header("location:../");
				$_SESSION['error'] = "All field are required";
	    	echo "error required";
		}

		else {

			$data = [
				'expenditure_type'=>$exipandure_type,
				'expenditure_amount'=>$exipandure_amount,
				'expenditure_descrption'=>$expenditure_descrption,
				'user_expenditure'=>$user_expenditure
			];
			
			//sql
			$sql = "INSERT INTO tbl_expenditure(expenditure_type, expenditure_amount, expenditure_descrption, user_expenditure) 
					VALUES(:expenditure_type, :expenditure_amount, :expenditure_descrption, :user_expenditure)";

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