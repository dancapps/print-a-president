<?php

include_once('constants.php');

//laptop
$dbhost = $dbhost;
$dbuser = $dbuser;
$dbpwd = $dbpwd;
$dbname = $dbname;

$conn = mysqli_connect($dbhost, $dbuser, $dbpwd, $dbname);

if (!$conn) {
    die('Connect Error (' . mysqli_connect_errno() . ') '
        . mysqli_connect_error());
}

?>