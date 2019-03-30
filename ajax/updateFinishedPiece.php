<?php


//This is where we make the call to check to see if the current user has a piece checked out
$userId = $_GET["userId"];
$step_end_date = $_GET["step_end_date"];

include_once "../classes/data.class.php";

$data = new getData();
echo json_encode($data->updateFinishedPiece($userId, $step_end_date));