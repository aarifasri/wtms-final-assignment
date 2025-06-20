<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json");

require 'db.php';

if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    echo json_encode(["success" => false, "message" => "Invalid request method"]);
    exit;
}

$submission_id = $_POST['submission_id'] ?? '';
$new_text = trim($_POST['submission_text'] ?? '');

if ($submission_id === '' || $new_text === '') {
    echo json_encode(["success" => false, "message" => "Missing fields"]);
    exit;
}

$stmt = $conn->prepare("UPDATE tbl_submissions SET submission_text = ? WHERE id = ?");
$stmt->bind_param("si", $new_text, $submission_id);

if ($stmt->execute()) {
    echo json_encode(["success" => true, "message" => "Submission updated successfully"]);
} else {
    echo json_encode(["success" => false, "message" => "Failed to update submission"]);
}

$stmt->close();
$conn->close();
?>
