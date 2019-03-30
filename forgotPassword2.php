<?php
include ('includes/header.php');
include ('includes/databaseConnect.php');
//Variable to save errors
$errors = array();

if($_POST['email']){
    $email = $_POST['email'];
}

//insert statement. The id field is an auto field.
$sql = "SELECT email FROM users WHERE email='$email'";

//execute the insert query
$query = @$conn->query($sql);

$token = time();
$sql = "INSERT INTO tokens (token, email) VALUES ('$token','$email')";
//execute the insert query
$query = @$conn->query($sql);

//Send the reset link to the user
function mailresetlink($to,$token){
    $subject = "Password Reset";
    $message = '
    <html>
    <head>
    <title>Password Reset</title>
    </head>
    <body>
    <p>Click on the given link to reset your password <a href="http://www.toriroessler.com/printapresident/resetPassword.php?token='.$token.'">Reset Password</a></p>

    </body>
    </html>
';
    $headers = "MIME-Version: 1.0" . "\r\n";
    $headers .= "Content-type:text/html;charset=iso-8859-1" . "\r\n";
    $headers .= 'From: Password Reset <noreply@domain.com>' . "\r\n";

    if(mail($to,$subject,$message,$headers))
    {
        echo "<script>
    swal(
        'Success!',
        'A password reset link has been sent to your email. Please allow up to 15 minutes for the email to come through.',
        'success'
        )
        setTimeout(function() {
            window.location.href='index.php';
        }, 2000);
  </script>";

    }
}

//If email is posted, send the email
if(isset($_POST['email']))
{
    mailresetlink($email,$token);
}

?>




<?php
//include the footer
include ('includes/footer.php');

?>