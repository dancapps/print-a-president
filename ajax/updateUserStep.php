<?php

$userId = $_GET["userId"];
$step = $_GET["step"];
$step_start_date = $_GET["step_start_date"];

echo $userId;
echo $step;

include_once "../classes/data.class.php";

$data = new getData();

echo json_encode($data->updateUserStep($userId, $step, $step_start_date));