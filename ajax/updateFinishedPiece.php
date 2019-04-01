<?php


//This is where we make the call to check to see if the current user has a piece checked out
$userId = $_GET["userId"];
$finishedDate = $_GET["finishedDate"];

include_once "../classes/data.class.php";

$data = new getData();
echo json_encode($data->updateFinishedPiece($userId, $finishedDate));