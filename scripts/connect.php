<?php

// turn on error reporting!!!!
ini_set('display_errors', 1);
error_reporting(E_ALL); 
// turn it off when errors fixed

// setup connection creds
$user = "root";
$pass = "root"; // root for Mac password and MAMP local server<<<< me
$url = "localhost";
$db = "db_mini";

$link = mysqli_connect($url, $user, $pass, $db); // url/username/passward/db for windows
// $link = mysql_connect($url, $user, $pass, $db, "8888"); // or 8889 for Mac

// check connection
if(!$link) { //! = opposite
    error_log('Connection error: ' . mysqli_connect_error());
}


?>