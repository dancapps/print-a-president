<?php

/**
 * Created by PhpStorm.
 * User: PeytonChester
 * Date: 3/5/19
 * Time: 3:18 PM
 */
class Connection {

    protected $location = 'laptop';

    protected $serverName;
    protected $database;
    protected $username;
    protected $password;


    public function __construct(){

        if($this->location === 'laptop'){

            $this->serverName = 'localhost';
            $this->database = 'printapresident';
            $this->username = 'phpuser';
            $this->password = 'phpuser';

        } else if($this->location === 'server'){

            $this->serverName = '';
            $this->database = '';
            $this->username = '';
            $this->password = '';
        }
    }}