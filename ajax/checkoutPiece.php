<?php

include_once "../classes/data.class.php";

$data = new getData();

// echo $_GET["tableName"];
// echo $_GET["materialName"];
// echo $_GET["userId"];

$tableName = $_GET["tableName"];
$materialName = $_GET["materialName"];
$userId = $_GET["userId"];
$checkoutDate = $_GET["checkoutDate"];

//echo $tableName;

echo json_encode($data->checkoutPiece($tableName, $materialName, $userId, $checkoutDate));

