<?php
//start a new session
session_start();

include('includes/config.php');

//check is submit button is clicked
if(isset($_POST['signin']))
{
    //catches user/password submitted by html form
    $username = $_POST['username'];
    $password = $_POST['password'];

    //Check if the htmls form is filled
    if (empty($_POST['username']) || empty ($_POST['password'])){
        $warning = "Fill all the fields!";
        $_SESSION['warning'] = $warning;
    }

    else {

        $sql = "SELECT * FROM user WHERE username=:username AND is_active = 1 LIMIT 1";
        $stmt = $this->dbconnect->prepare($sql);
        
        /* Execute the Query */
        $stmt->bindparam(':username', $username);
        $stmt->execute();

        /* Store Returned Data from query into array */
        $user_data = $stmt->fetch(PDO::FETCH_ASSOC);

        /*Get number of Return Rows */
        $count_row = $stmt->rowCount(); 

        if ($count_row == 1) {

          /* Verify User password */
          if(password_verify($password, $user_data['password'])) {
            $_SESSION['UserID'] = $user_data['user_id'];
            $_SESSION['FullName'] =$row["first_name"];
            header("location:user-darshboard");
          } 

          else {
            $error ="Wrong password";
            $_SESSION['error'] = $error;
          }
        } 

        else {
          $error ="Wrong username";
          $_SESSION['error'] = $error;
        }

    }
}



/*
    else {

      //search for user and password in the database
       $sql ="SELECT *
              FROM user
              WHERE (((username)='$uname') AND ((password)='$password'))";

       $query = mysqli_query($mysqli, $sql);
    }

    //check if the search was made
    if ($query === false){
            die(print_r(mysqli_errors(), true));
    }

    //check if the search brought some row and if is only one row
    if (mysqli_num_rows($query)!= 1){

        // $error ="Wrong username or password";
        // $_SESSION['error'] = $error;
        // header("location:../index.php");
        echo $uname." ".$password;

    } else {

      //fetch data and create sessions
      while ($row = mysqli_fetch_array($query)){
          
          //store user data in sessions
          $_SESSION['UserID'] = $row["user_id"];
          $_SESSION['FullName'] =$row["first_name"];
          $pass2 = $row["password"];

          if (empty($pass2)){
            //redirect user to change password, first loging
            header("location:force_change_pass.php ");

          }elseif ($pass2 !== $pass2){
              //administrator has changes user pass, redirect to change.
              header("location:reset_password.php ");

          } else{
            //redirect user to main pagies
            $_SESSION['UserID'] = $row["user_id"];
            $_SESSION['FullName'] =$row["first_name"];
            header("location:production/master.php ");
          }
        }

    }

  }
*/
?>
