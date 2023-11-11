<?php

$servername = "localhost"; 
$username = "admin"; 
$password = "sayna"; 
$dbname = "sayna"; 


$conn = new mysqli($servername, $username, $password, $dbname);

// Vérifie la connexion
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

?>
