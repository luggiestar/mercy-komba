<?php
	include('../../includes/config.php');
	 
	if(isset($_POST['save_income'])) {
		
		
		$income_amount = clean_input($_POST['income_amount']);
		$income_source = clean_input($_POST['income_source']);
		$account = clean_input($_POST['account']);
	    
	    if(empty($income_amount) || empty($income_source) || empty($account)) {
				// header("location:../income.php");
				// $_SESSION['error'] = "fill the field above";
	    		echo "error required";
		}

		else {
			
			$user = $_SESSION['UserID'];
			$action = "adding new income";
			$sql = "INSERT INTO tbl_logs(log_action, user) VALUES (:action, :user)";
			$stmt = $dbconnect->prepare($sql);
			$stmt->execute(['action'=>$action, 'user'=>$user]);

			if($stmt){
				try{

					$stmt_account = $dbconnect->prepare("SELECT * FROM tbl_account_credit 
						WHERE account_chart = :account_chart");
					$stmt_account->execute(['account_chart'=>$account]);
					$count_account = $stmt_account->rowCount();

					if($count_account == 1) {

						$data_to_account = [
							'amount'=>$income_amount,
							'account_chart'=>$account
						];

						$update_account = $dbconnect->prepare("UPDATE tbl_account_credit SET balance = (balance + :amount) WHERE account_chart = :account_chart");
						$update_account->execute($data_to_account);

						if($update_account) {

							$data = [
								'income_amount'=>$income_amount, 
								'income_source'=>$income_source,
								'account_credited'=>$account,
								'posted_by'=>$user
							];

							$sql = "INSERT INTO tbl_income(amount, source, account_credited, posted_by) 
									VALUES(:income_amount, :income_source, :account_credited, :posted_by)";

							$stmt = $dbconnect->prepare($sql);
							$stmt->execute($data);

							if($stmt) {
								header("location:../income.php");
								$_SESSION['success'] = "$income Saved successfullys";
							}
							else {
								header("location:../income.php");
								$_SESSION['error'] = "Income not saved";
							}
						}
					}
					else {
						header("location:../account-balance.php");
						$_SESSION['error'] = "Account not found add first account";
					}	

				}	

				catch(PDOException $e) {
					$_SESSION['error'] = "$income_list_name Already registured";
					header("location:../income-source.php");	
				}		
						
			}

		}
	}
?>