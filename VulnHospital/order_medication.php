<?php
session_start();
$message = '';

if (isset($_POST["submit"])) {
    $fileName = $_FILES["uploadedFile"]["name"];
    $fileTmpName = $_FILES["uploadedFile"]["tmp_name"];
    $fileError = $_FILES["uploadedFile"]["error"];
    $uploadDirectory = "uploads/";
    $uploadPath = $uploadDirectory . $fileName;

    if ($fileError === 0) {
        if (move_uploaded_file($fileTmpName, $uploadPath)) {
            $message = "The file " . $fileName . " has been uploaded.";
        } else {
            $message = "There was an error uploading your file.";
        }
    } else {
        $message = "Error uploading file.";
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Upload Prescription</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            text-align: center;
        }
        .container {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px 0 rgba(0,0,0,0.1);
            text-align: center;
            padding: 20px;
        }
        h2 {
            color: #333;
        }
        form {
            margin-top: 20px;
        }
        input[type="file"] {
            margin-bottom: 20px;
        }
        input[type="submit"] {
            background-color: #5cb85c;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #4cae4c;
        }
        p {
            color: #666;
        }

        .button {
            display: inline-block;
            padding: 10px 10px;
            margin: 50px;
            font-size: 16px;
            cursor: pointer;
            text-align: center;
            text-decoration: none;
            outline: none;
            color: #fff;
            background-color: #4CAF50;
            border: none;
            border-radius: 15px;

        }
    </style>
</head>
<body>

<div class="container">
    <h2>Upload your prescription in the following drop box</h2>
    <p>Prescription Approval may take up to 5 days.</p>
    <form action="" method="post" enctype="multipart/form-data">
        Select file to upload:
        <input type="file" name="uploadedFile" id="uploadedFile">
        <br>
        <input type="submit" value="Upload Prescription" name="submit">
    </form>

    <?php
    if ($message) {
        echo "<p>$message</p>";
    }
    ?>
    <?php
    $hiddenMessage = "Developper Note//Folders will redirect to /uploads.";
    echo "<!-- " . htmlspecialchars($hiddenMessage) . " -->";
    ?>

</div>
<div>
    <a href="loginpage.php" class="button">Back to Main Page</a>
    <a href="book_appointment.php" class="button">Book an Appointment</a>
    <a href="view_records.php?patient_id=<?php echo $_SESSION['id']; ?>" class="button">View Past Records</a>
    <a href="account_settings.php?id=<?php echo $_SESSION['id']; ?>" class="button">Account Settings</a>

</div>
</body>
</html>
