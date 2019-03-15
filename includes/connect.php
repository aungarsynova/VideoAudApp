<?php
$user = "root";
$password = ""; //blank for windows, root for mac
$host = "localhost";
$db = "netflix";

// Check connection
$conn = new mysqli ($host, $user, $password, $db);
if ($conn->connect_error) {
    die ("Connection failed: " . $conn->connect_error);
    echo "Connection failed";
} 
echo "Connected successfully";
?>