<?php

include './includes/config.php';

include ABSOLUTE_PATH . "/includes/header.php";
include ABSOLUTE_PATH . '/includes/databaseConnect.php';

//start session if it has not already started
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

//create variable login status.
$_SESSION['login_status'] = 2;
$username = $password = "";

//retrieve user name and password from the form in the login form
// if (filter_has_var(INPUT_POST, 'username') || filter_has_var(INPUT_POST, 'password')) {
//     $username = $conn->real_escape_string(trim(filter_input(INPUT_POST, 'username', FILTER_SANITIZE_STRING)));
//     $password = $conn->real_escape_string(trim(filter_input(INPUT_POST, 'password', FILTER_SANITIZE_STRING)));
// }

$email = $_POST["email"];
$password = $_POST["password"];

// echo $email;
// echo $password;

//validate user name and password against a record in the users table in the database. If they are valid, create session variables.
$sql = "SELECT * FROM users WHERE email='$email'";

$query = @$conn->query($sql);

if ($query->num_rows) {
    // It is a valid user. Need to store the user in session variable
    $row = $query->fetch_assoc();

    // echo "YES";
    // print_r($row);

    if(password_verify($password, $row["password"])){

        $_SESSION["user_logged"] = $row['firstname'] . " " . $row['lastname'];
        $_SESSION["user_role"] = $row['role'];
        $_SESSION["user_id"] = $row['id'];

        //print_r($row);

        header("Location: " . URL_ROOT);
    } else {

        //here is where I have to handle an incorrect pass
        //I think I need to make them their own separate pages
    };

} else {
    echo "NO QUERY RETURNED";
}


//close the connection
$conn->close();

//echo "<script>
//    swal({
//      title: \"Welcome Back!\",
//      text: \"You are now logged in and ready to Print a President!\",
//      type: \"success\",
//      showCancelButton: false
//    }, function() {
//      // Redirect the user
//      window.location.href = 'index.php';
//    });
//  </script>";

// echo "<script>
//     swal(
//         'Welcome Back!',
//         'You are now logged in and ready to Print a President!',
//         'success'
//         )
//         setTimeout(function() {
            
//         }, 2000);
//   </script>";

?>