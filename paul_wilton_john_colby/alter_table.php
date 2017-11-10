<?php
include 'conf.php';

$conn = new mysqli(SERVER_NAME, SERVER_USER, SERVER_PASS, SERVER_DB);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql = "ALTER TABLE People 
ADD new_field int
";

if ($conn->query($sql) === TRUE) {
    echo "good";
} else {
    echo "Error " . $conn->error;
}

$conn->close();
