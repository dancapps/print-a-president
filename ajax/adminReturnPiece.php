<?php


//This is where we make the call to check to see if the current user has a piece checked out

include_once "../classes/data.class.php";

$data = new getData();

$piece_id = $_GET["piece_id"];

echo json_encode($data->adminReturnPiece($piece_id));