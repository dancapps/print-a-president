<?php

//The purpose of this class is to get data from the database

include_once('connection.class.php');


class getData extends Connection {

	//defines the database connection object
	private $conn;

	//Constructor
	//When a new class instance is created, connects us to the database
	public function __construct(){

		parent::__construct();

		$serverName = $this->serverName;
		$database = $this->database;
		$dbusername = $this->username;
		$dbpassword = $this->password;

		//try and connect to the database
		try {

			$this->conn = new PDO("mysql:host=$serverName; dbname=$database", $dbusername, $dbpassword); 

		} catch(PDOException $e){

			$error = $e->getMessage();
    		echo $error;
		}

	} //ends constructor

	public function getMainmodel(){

		$sql = "SELECT * FROM mainmodel";

		$pdoQuery = $this->conn->query($sql);

		$table = $pdoQuery->fetchAll();

		return($table);
	}

	public function getTable($table){

		$sql = "SELECT * FROM pieces WHERE section = '$table'";

		$pdoQuery = $this->conn->query($sql);

		$table = $pdoQuery->fetchAll();

		return($table);
	}

	public function checkoutPiece($tableName, $materialName, $userId, $checkoutDate){

		$sql = "UPDATE pieces SET checked_out = 'true', checkOutDate = $checkoutDate, checked_id = $userId WHERE section = '$tableName' AND material_name = '$materialName'";

	

		$query = $this->conn->query($sql);

		return($query);
	}


	public function checkoutCheck($userId){

		//When we add more we need to add the other tables here as well to check all tables
		$sql = "SELECT * FROM pieces WHERE checked_id = $userId";

		$pdoQuery = $this->conn->query($sql);

		$table = $pdoQuery->fetchAll();

		return($table);
	}

	public function getChecklist(){
		$sql = "SELECT * FROM steps";

		$pdoQuery = $this->conn->query($sql);

		$table = $pdoQuery->fetchAll();

		return($table);
	}

	public function getUserStep($userId){

		$sql = "SELECT step FROM users WHERE id = $userId";

		$pdoQuery = $this->conn->query($sql);

		$table = $pdoQuery->fetchAll();

		return($table);
	}

	public function updateUserStep($userId, $step, $step_start_date){

		$sql = "UPDATE users SET step = $step, step_start_date = $step_start_date WHERE id = '$userId'";


		$query = $this->conn->query($sql);

		return($query);
	}

	public function pieceCheck($userId){

		$sql = "SELECT * FROM pieces WHERE checked_id = $userId";

		$pdoQuery = $this->conn->query($sql);

		$table = $pdoQuery->fetchAll();

		return($table);
	}

	public function getCheckedoutPieces(){

		$sql = "SELECT firstname, lastname, email, step, pieces.checkOutDate, step_start_date, file_name, piece_id, section FROM users, pieces WHERE pieces.checked_id = users.id";

		$pdoQuery = $this->conn->query($sql);

		$table = $pdoQuery->fetchAll();

		return($table);
	}

	public function getTotalPieces(){

		$sql = "SELECT * FROM pieces";

		$pdoQuery = $this->conn->query($sql);

		$table = $pdoQuery->fetchAll();

		return($table);
	}

	public function getFinishedPieces(){

		$sql = "SELECT * FROM pieces WHERE finished = 'true'";

		$pdoQuery = $this->conn->query($sql);

		$table = $pdoQuery->fetchAll();

		return($table);
	}

	public function adminReturnPiece($piece_id){

		$sql = "UPDATE pieces SET checked_out = 'false', checked_id = NULL, checkOutDate = '' WHERE piece_id = '$piece_id'";


		$query = $this->conn->query($sql);

		return($piece_id);
	}

	public function resetUserPiece($userId, $currentDate){

		$sql = "UPDATE users SET step = 0, step_start_date = $currentDate WHERE id = '$userId'";


		$query = $this->conn->query($sql);

		return($query);

	}

	public function updateFinishedPiece($userId, $step_end_date){

		$sql = "UPDATE pieces SET checked_out = 'false', checked_id = NULL, checkOutDate = '', finished = 'true', finished_id = '$userId', step_end_date = '$step_end_date' WHERE checked_id = '$userId'";


		$query = $this->conn->query($sql);

		return($query);
	}

	public function getUserFinishedPieces($userId){

		$sql = "SELECT * FROM pieces where finished_id = '$userId'";

		$pdoQuery = $this->conn->query($sql);

		$table = $pdoQuery->fetchAll();

		return($table);
	}

	




}
