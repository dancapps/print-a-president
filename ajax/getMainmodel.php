<?php

include_once "../classes/data.class.php";

$data = new getData();

echo json_encode($data->getMainmodel());