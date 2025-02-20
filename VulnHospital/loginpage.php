<?php
$message = '';
session_start();


if(isset($_POST['username']) && isset($_POST['password'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];

    $conn = new mysqli("localhost", "root", "", "hackme");

    if($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    $sql = "SELECT * FROM users WHERE username = '$username' AND password = '$password'";
    $result = $conn->query($sql);

    if($result->num_rows > 0) {
        $user = $result->fetch_assoc();
        $_SESSION['id'] = $user['id']; 
        $message = "Login successful!";
        $loggedIn = true;
    } else {
        $message = "Invalid username or password!";
    }

    $conn->close();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login to HackMe Hospital</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('hospital2.jpg');
            background-size: cover;
            background-position: center;
            text-align: center;
            padding-top: 100px;
        }
        .container {
            background-color: rgba(255, 255, 255, 0.8);
            padding: 40px;
            border-radius: 10px;
            display: inline-block;
        }
        .button {
            display: block;
            margin: 20px auto;
            padding: 10px 20px;
            background-color: #5cb85c;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
        .button:hover {
            background-color: #4cae4c;
        }
        .info {
            margin-top: 20px;
            color: #666;
        }
        .error {
            color: red;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Login to Vulnerable Hospital</h1>
    <form method="post" action="">
        Username: <input type="text" name="username"><br><br>
        Password: <input type="password" name="password"><br><br>
        <input type="submit" value="Login" class="button">
    </form>
    <p class="info"><?php echo $message; ?></p>
</div>

<?php if (isset($loggedIn) && $loggedIn): ?>
<div>
    <a href="book_appointment.php" class="button">Book an Appointment</a>
    <a href="order_medication.php" class="button">Order Prescription Medication</a>
    <a href="view_records.php?patient_id=<?php echo $_SESSION['id']; ?>" class="button">View Past Records</a>
    <a href="account_settings.php?id=<?php echo $_SESSION['id']; ?>" class="button">Account Settings</a>

</div>
<?php endif; ?>


</body>
</html>
