<?php

$userId = $_GET["userId"];

include_once "../classes/data.class.php";

$data = new getData();

echo json_encode($data->getUserStep($userId));