<?php
session_start();
$conn = new mysqli("localhost", "root", "", "hackme");

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if (isset($_POST['action']) && $_POST['action'] == 'updateDetails') {
    $userId = $_SESSION['id']; // Using session to get the current user's ID securely
    $fieldToUpdate = $conn->real_escape_string($_POST['field']);
    $newValue = $conn->real_escape_string($_POST['newValue']);

    $stmt = $conn->prepare("UPDATE users SET `$fieldToUpdate` = ? WHERE id = ?");
    $stmt->bind_param("si", $newValue, $userId);
    if ($stmt->execute()) {
        echo "Success";
    } else {
        echo "Error";
    }
    $stmt->close();
    $conn->close();
    exit; 
}

$message = '';
$userInfo = '';

$userId = isset($_GET['id']) ? $_GET['id'] : $_SESSION['id'];

$sql = "SELECT * FROM users WHERE id = $userId";
$result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $userInfo = "<table border='1'>";
        $userInfo .= "<tr>
                        <td>username</td>
                        <td><span class='field-value'>" . $row["username"] . "</span>
                            <span class='edit-icon' data-field='username'><i class='fas fa-pencil-alt'></i></span>
                        </td>
                    </tr>";
        $userInfo .= "<tr>
                        <td>password</td>
                        <td><span class='field-value'>" . $row["password"] . "</span>
                            <span class='edit-icon' data-field='password'><i class='fas fa-pencil-alt'></i></span>
                        </td>
                    </tr>";
        $userInfo .= "<tr>
                        <td>First Name</td>
                        <td><span class='field-value'>" . $row["First Name"] . "</span>
                        </td>
                    </tr>";
        $userInfo .= "<tr>
                        <td>Family Name</td>
                        <td><span class='field-value'>" . $row["Family Name"] . "</span>
                        </td>
                    </tr>";

        $userInfo .= "<tr>
                        <td>Date of birth</td>
                        <td><span class='field-value'>" . $row["Date of birth"] . "</span>
                        </td>
                    </tr>";

        $userInfo .= "<tr>
                        <td>Gender</td>
                        <td><span class='field-value'>" . $row["Gender"] . "</span>
                            <span class='edit-icon' data-field='Gender'><i class='fas fa-pencil-alt'></i></span>
                        </td>
                    </tr>";

        $userInfo .= "<tr>
                        <td>Contact Information</td>
                        <td><span class='field-value'>" . $row["Contact Information"] . "</span>
                        </td>
                    </tr>";

        $userInfo .= "<tr>
                        <td>Emergency Contact information</td>
                        <td><span class='field-value'>" . $row["Emergency Contact information"] . "</span>
                        </td>
                    </tr>";

        $userInfo .= "<tr>
                        <td>Marital status</td>
                        <td><span class='field-value'>" . $row["Marital status"] . "</span>
                            <span class='edit-icon' data-field='Marital status'><i class='fas fa-pencil-alt'></i></span>
                        </td>
                    </tr>";

        $userInfo .= "<tr>
                        <td>Occupation</td>
                        <td><span class='field-value'>" . $row["Occupation"] . "</span>
                            <span class='edit-icon' data-field='Occupation'><i class='fas fa-pencil-alt'></i></span>
                        </td>
                    </tr>";

        $userInfo .= "<tr>
                        <td>Family Medical History</td>
                        <td><span class='field-value'>" . $row["Family Medical History"] . "</span>
                        </td>
                    </tr>";

        $userInfo .= "<tr>
                        <td>Social History</td>
                        <td><span class='field-value'>" . $row["Social History"] . "</span>
                        </td>
                    </tr>";

        $userInfo .= "<tr>
                        <td>Health Insurance Details</td>
                        <td><span class='field-value'>" . $row["Health Insurance Details"] . "</span>
                        </td>
                    </tr>";

        $userInfo .= "<tr>
                        <td>Government ID</td>
                        <td><span class='field-value'>" . $row["Government ID"] . "</span>
                        </td>
                    </tr>";

        $userInfo .= "<tr>
                        <td>Payment Information</td>
                        <td><span class='field-value'>" . $row["Payment Information"] . "</span>
                        </td>
                    </tr>";

        $userInfo .= "</table>";
    } else {
        $message = "User not found!";
    }
    
    $conn->close();
    ?>


<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <meta charset="UTF-8">
    <title>Account Settings</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
    $(document).ready(function() {
        $('.edit-icon').click(function() {
            var field = $(this).data('field');
            var currentValue = $(this).parent().text().trim();
            var inputHtml = '<input type="text" id="edit-' + field + '" value="' + currentValue + '">';
            inputHtml += '<button onclick="updateDetail(\'' + field + '\')">Save</button>';
            $(this).parent().html(inputHtml);
        });
    });
        function updateDetail(field) {
        var newValue = $('#edit-' + field).val();
        $.ajax({
            type: "POST",
            url: window.location.href,
            data: {
                action: 'updateDetails',
                field: field,
                newValue: newValue
            },
            success: function(response) {
                if(response == "Success") {
                    alert('Update successful');
                    location.reload(); 
                } else {
                    alert('Update failed');
                }
            }
        });
    }
    </script>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('your-background-image.jpg');
            background-size: cover;
            background-position: center;
            color: #333;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            width: 80%; 
            background-color: rgba(255, 255, 255, 0.9);
            text-align: center;
            padding: 20px;
            border-radius: 10px;
        }
        table {
            width: 50%; 
            border-collapse: collapse;
            margin: 20px auto; 
            background-color: rgba(255, 255, 255, 0.9);

        }
        th, td {
            padding: 8px;
            text-align: center; 
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #f2f2f2;
        }
        a i.fas {
                color: #4a4a4a;
                margin-left: 5px; 
            }

        a:hover i.fas {
            color: #000000; 
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
    <h1>Account Settings</h1>
    <div><?php echo $message; ?></div>
    <div><?php echo $userInfo; ?></div>
    <a href="loginpage.php" class="button">Back to Main Page</a>
    <a href="book_appointment.php" class="button">Book an Appointment</a>
    <a href="order_medication.php" class="button">Order Prescription Medication</a>
    <a href="view_records.php?patient_id=<?php echo $_SESSION['id']; ?>" class="button">View Past Records</a>
</div>

</body>
</html>