<?php

include './includes/config.php';

include ABSOLUTE_PATH . '/includes/header.php';
include ABSOLUTE_PATH . '/includes/databaseConnect.php';


//data from registration table
$firstname = $_POST["firstname"];
$lastname = $_POST["lastname"];
$user_email = $_POST["email"];
$password = $_POST["password"];
$phone = $_POST["phone"];
$role = 2;

//since we are leting users login with email and pass, we have to make sure that each email is unique
//here is how we ensure that
$uniqueEmail = true;

//gets all emails from the users table
$sql = "SELECT email FROM users";
$query = @$conn->query($sql);

$emails = [];

//loops through all emails in the db and makes sure that the email that the user typed in is unique
//if it is unique we will continue with the registration process
while($email = mysqli_fetch_assoc($query)) {
    $emails[] = $email;
}

foreach($emails as $key => $value){

    $value = $value['email'];

    if($value === $user_email){
        $uniqueEmail = false;
        break;
    }
}

if($uniqueEmail !=true){
    header("Location: " . URL_ROOT);
} else {

    //this section runs if the email is unique
    //next thing we need to do is salt the password
    //here is where we salt

    $passwordHash = password_hash($password, PASSWORD_DEFAULT);

    $passwordMatch = password_verify($password, $passwordHash);

    echo $passwordHash . "<br>";
    echo $passwordMatch;

    if($passwordMatch === true){

        //insert statement. The id field is an auto field.
        $sql = "INSERT INTO users  (firstname, lastname, username, password, email, phone, organization, role, partnumber, checkoutdate, status, step_start_date) VALUES ('$firstname', '$lastname', NULL, '$passwordHash', '$user_email', '$phone', NULL, '$role', '', '', '', '')";


        //execute the insert query
        $query = @$conn->query($sql);

        //Handle selection errors

        if (!$query) {
            $errno = $conn->errno;
            $error = $conn->error;
            $error = "Insertion failed with: ($errno) $error.";

            echo $error;
            $conn->close();
            //header("Location: error.php?m=$error");
            die();
        }else{

            //This runs if the account was created successfully
            //we need to do a query where we get the user id and set it

            $sql = "SELECT id FROM users WHERE email = '$user_email'";

            $query = @$conn->query($sql);

            if ($query->num_rows) {

                $row = $query->fetch_assoc();

                //print_r($row['id']);

                $_SESSION["user_id"] = $row['id'];
                $_SESSION["user_logged"] = $firstname . " " . $lastname;
                $_SESSION["user_role"] = 2;

            }

            

            ?>

            
           

            <?php

            header("Location: " . URL_ROOT);


           //  echo "<script>
           //  swal(
           //      'Success!',
           //      'Your account is now ready to be used. Please login with your new credentials.',
           //      'success'
           //      )
           //      setTimeout(function() {
           //          console.log('idk')
           //      }, 2000);
           // </script>";
        }

        $conn->close();
    }


}
?>