<?php
require '../configs/database.php';

$name = $_POST['name'];
$surname = $_POST['surname'];
$position = $_POST['position'];
$background_color = $_POST['background_color'];
$profile_pic = '';

if ($_FILES['profile_pic']['name']) {
    $target_dir = "assets/images/";
    $target_file = $target_dir . basename($_FILES["profile_pic"]["name"]);
    move_uploaded_file($_FILES["profile_pic"]["tmp_name"], $target_file);
    $profile_pic = basename($_FILES["profile_pic"]["name"]);
}

$stmt = $pdo->prepare("INSERT INTO employees (name, surname, position, background_color, profile_pic) VALUES (?, ?, ?, ?, ?)");
$stmt->execute([$name, $surname, $position, $background_color, $profile_pic]);
header("Location: admin.php");
?>
