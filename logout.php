<?php
include ("includes/header.php");

// start session if it has not already started
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

// unset all the session variables
$_SESSION = array();

// delete the session cookie
setcookie(session_name(), "", time() - 3600);

echo "<script>
    swal(
        'Bye Now!!',
        'You are now logged out. We hope to see you again soon!',
        'success'
        )
        setTimeout(function() {
            window.location.href='index.php';
        }, 2000);
  </script>";

    // destory the session
    session_destroy();
?>