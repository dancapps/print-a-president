<?php


//This is where we make the call to check to see if the current user has a piece checked out

include_once "../classes/data.class.php";

$data = new getData();

$userId = $_GET["userId"];

echo json_encode($data->checkoutCheck($userId));