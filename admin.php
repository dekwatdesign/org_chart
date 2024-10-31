<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Panel</title>
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h1>Admin Panel - Manage Employees</h1>
        <form action="./actions/add_employee.php" method="POST" enctype="multipart/form-data">
            <input type="text" name="name" placeholder="First Name" required>
            <input type="text" name="surname" placeholder="Last Name" required>
            <input type="text" name="position" placeholder="Position" required>
            <input type="color" name="background_color" value="#FFFFFF">
            <input type="file" name="profile_pic">
            <button type="submit" class="btn btn-primary">Add Employee</button>
        </form>
        <div id="employee-list"></div>
    </div>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="assets/js/script.js"></script>
</body>
</html>
