<?php
include ('includes/header.php');
include ('includes/databaseConnect.php');

if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

$token = $_REQUEST['token'];
$email = $_SESSION['email'];

if($token - time() < 3600 ){
echo '<br><br><br><br><br><p>Please enter your new password to complete the password reset.</p><br><form action="updatePassword.php" method="post">';
    echo 'New Password: ';
    echo '<input type="password" name="newpassword" id="password"/>';
    echo '<input type="submit" value="Change Password">';
    echo '<input type="hidden" name="reset" value="TRUE" />';
    echo '<input type="hidden" name="token" value="<?php echo $_REQUEST[\'token\']; ?>" />';
    echo '<input type="hidden" name="email" value="<?php echo $_REQUEST[\'email\']; ?>" />';
    echo '</form>';

}else {
    echo "<script>
    swal(
        'Uh oh!',
        'Your request has timed out. Please try again.',
        'error'
        )
        setTimeout(function() {
            window.location.href='index.php';
        }, 2000);
  </script>";
}

$emailQuery = mysqli_query(mysqli_connect($dbhost, $dbuser, $dbpwd, $dbname), "SELECT email FROM tokens WHERE token='" . $token . "'");
$query = mysqli_query(mysqli_connect($dbhost, $dbuser, $dbpwd, $dbname),"UPDATE tokens SET used=1 WHERE token='" . $token . "'");

while($row = mysqli_fetch_array($emailQuery)){
    $email = $row['email'];
}

if ($email != NULL )
{
    $_SESSION['email'] = $email;
}
else
{
    echo "<script>
    swal(
        'Uh oh!',
        'Invalid link or password already changed. Please try again.',
        'error'
        )
  </script>";
}

//include the footer
include ('includes/footer.php');

?>