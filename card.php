<?php
// Database configuration
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "Local instance MYSQL83";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

echo "Connected successfully";

// Close connection
$conn->close();
?>