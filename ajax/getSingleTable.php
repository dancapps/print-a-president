<?php

include_once "../classes/data.class.php";

$data = new getData();

//echo $_GET["tableName"];

$tableName = $_GET["tableName"];

//echo $tableName;

echo json_encode($data->getTable($tableName));

