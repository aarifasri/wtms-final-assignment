<?php
include 'db.php';

$name = isset($_POST['name']) ? $_POST['name'] : '';
$email = isset($_POST['email']) ? $_POST['email'] : '';
$password = isset($_POST['password']) ? sha1($_POST['password']) : '';
$phone = isset($_POST['phone']) ? $_POST['phone'] : '';
$address = isset($_POST['address']) ? $_POST['address'] : '';

if (empty($name) || empty($email) || empty($password) || empty($phone) || empty($address)) {
    echo json_encode(["success" => false, "message" => "All fields are required"]);
    exit();
}

// Update your DB to include phone and address if not already
$sql = "INSERT INTO users (name, email, password, phone, address) VALUES ('$name', '$email', '$password', '$phone', '$address')";

if ($conn->query($sql)) {
    echo json_encode(["success" => true, "message" => "Registered successfully"]);
} else {
    echo json_encode(["success" => false, "message" => $conn->error]);
}
?>
