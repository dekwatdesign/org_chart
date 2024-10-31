<?php
require '../configs/database.php';

$stmt = $pdo->query("SELECT * FROM employees");
$employees = $stmt->fetchAll(PDO::FETCH_ASSOC);
echo json_encode($employees);

?>