<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json");

require 'db.php';

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);


if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    echo json_encode(["success" => false, "message" => "Invalid request method"]);
    exit;
}

$data = json_decode(file_get_contents("php://input"), true);
$worker_id = (int)($data['worker_id'] ?? 0);

if ($worker_id === 0) {
    echo json_encode(["success" => false, "message" => "Worker ID is required"]);
    exit;
}

$sql = "SELECT s.id, s.work_id, w.title AS task_title, s.submission_text, s.created_at
FROM tbl_submissions s
JOIN tbl_works w ON s.work_id = w.id
WHERE s.worker_id = ?
ORDER BY s.created_at DESC
";


$stmt = $conn->prepare($sql);
$stmt->bind_param("i", $worker_id);
$stmt->execute();
$result = $stmt->get_result();

$submissions = [];
while ($row = $result->fetch_assoc()) {
    $submissions[] = $row;
}

echo json_encode([
    "success" => true,
    "submissions" => $submissions,
]);

$stmt->close();
$conn->close();
?>
