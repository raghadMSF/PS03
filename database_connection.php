<?php
$servername = "localhost";
$username = "root";
$password = "root";
$db_name = "db_phonebook";
// Create connection
$conn = new mysqli($servername, $username, $password,$db_name);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

?>
