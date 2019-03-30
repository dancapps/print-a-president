<?php
include ("includes/header.php");
include ("includes/databaseConnect.php");

$email = $_SESSION['email'];
$token = $_REQUEST['token'];

//Save new password
if (isset($_POST['newpassword']) && isset($_SESSION['email'])) {
    $password = $_POST['newpassword'];
    mysqli_query($conn, "UPDATE users SET password ='" . $password . "' WHERE email='" . $email . "'");
    $query = (mysqli_query($conn, "SELECT password FROM users WHERE email = '" . $email . "'"));

    while ($row = mysqli_fetch_array($query)) {
        $passVerify = $row['password'];

    }

    if ($passVerify == $password) {

        echo "<script>
    swal(
        'Victory!',
        'Your password has been changed. Please log in with your new credentials.',
        'success'
        )
        setTimeout(function() {
            window.location.href='index.php';
        }, 2000);
  </script>";

    } else {
        echo "<script>
    swal(
        'Uh oh!',
        'Something went wrong. Please try again.',
        'error'
        )
        setTimeout(function() {
            window.location.href='index.php';
        }, 2000);
  </script>";
    }
}

include ("includes/footer.php");
?>