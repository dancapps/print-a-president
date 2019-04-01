<?php

//Blake: Laptop
//define("ABSOLUTE_PATH", "C:/wamp/www/printapresident");

//Blake: Laptop
//define("URL_ROOT", "http://localhost/printapresident");

//Peyton: Laptop
define("URL_ROOT", "http://localhost/print-a-president");

//Peyton: ABSOLUTE PATH
define("ABSOLUTE_PATH", "/Applications/XAMPP/xamppfiles/htdocs/print-a-president");







if (session_status() == PHP_SESSION_NONE) {
    session_start();
}
