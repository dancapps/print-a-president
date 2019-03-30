<?php
include('includes/header.php');
include('includes/databaseConnect.php');


//retrieve and sanitize all fields from the form
$id = $_POST['id'];
$partnumber = $_POST['partnumber'];
$checkoutdate = $_POST['checkoutdate'];
$status = $_POST['status'];



//Define MySQL update statement
$sql = "UPDATE users SET
    partnumber ='" . $partnumber . "',
    checkoutdate ='" . $checkoutdate . "',
    status ='" . $status . "'
    WHERE id='" . $id . "'";

//execute the query
$query = @$conn->query($sql);

//Handle selection errors
if (!$query) {
    $errno = $conn->errno;
    $errmsg = $conn->error;
    echo "Connection Failed with: $errno, $errmsg<br/>\n";
    exit;
}else{
    echo "<script>
    swal(
        'SWEET VICTORY',
        'The user has been updated.',
        'success'
        )
        setTimeout(function() {
            window.location.href='adminPage.php';
        }, 2000);
  </script>";

}
?>



<?php

// close the connection.
$conn->close();

include ('includes/footer.php');

?>