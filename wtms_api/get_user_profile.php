<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: *");
header("Content-Type: application/json");

include 'config.php';

$id = $_POST['id'] ?? '';

if ($id == '') {
    echo json_encode(["success" => false, "message" => "No ID provided"]);
    exit;
}

$stmt = $conn->prepare("SELECT id, name, email, phone, address FROM users WHERE id = ?");
$stmt->bind_param("i", $id);
$stmt->execute();

$result = $stmt->get_result();
if ($user = $result->fetch_assoc()) {
    echo json_encode(["success" => true, "user" => $user]);
} else {
    echo json_encode(["success" => false, "message" => "User not found"]);
}

$stmt->close();
$conn->close();
?>
