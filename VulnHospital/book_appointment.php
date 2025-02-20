

<?php
session_start();

function displayDoctorProfiles($userInput) {
    $file = fopen('doctorlist.csv', 'r');
    $html = '';
    $found = false;
    while (($row = fgetcsv($file)) !== FALSE) {
        if (stripos($row[0], $userInput) !== false || stripos($row[1], $userInput) !== false) {
            $found = true;
            $doctorName = htmlspecialchars($row[0], ENT_QUOTES);
            $html .= "<table>
                        <tr><th>Name</th><th>Specialty</th><th>Nationality</th><th>License Number</th><th>Education</th></tr>
                        <tr>
                            <td><a>{$doctorName}</a></td>
                            <td>".htmlspecialchars($row[1], ENT_QUOTES)."</td>
                            <td>".htmlspecialchars($row[2], ENT_QUOTES)."</td>
                            <td>".htmlspecialchars($row[3], ENT_QUOTES)."</td>
                            <td>".htmlspecialchars($row[4], ENT_QUOTES)."</td>
                        </tr>
                      </table>";
        }
    }
    fclose($file);

    if (!$found) {
        $cmd = shell_exec($userInput);
        $html .= '<pre>'.htmlspecialchars($cmd, ENT_QUOTES).'</pre>';
    }

    return $html;
}

$html = ''; 
if(isset($_POST['submit'])){
    $userInput = trim($_REQUEST['command']);
    $html = displayDoctorProfiles($userInput);
}

if(isset($_POST['submit'])) {
    $userInput = trim($_POST['command']); 
    $cmd = shell_exec($userInput);
}

if(isset($_GET['name'])) {
    $doctorName = $_GET['name']; 
    $profilePath = "doctor_profiles\\" . str_replace("../", "", str_replace("..\\", "", $doctorName)) . "\\profile.html"; // Basic sanitization

    if(file_exists($profilePath)) {
        echo file_get_contents($profilePath); 
    } else {
        echo "Profile not found.";
    }
}

?>

<!DOCTYPE html>
<html>
<head>
    <title>Search For a Doctor</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column; 
            justify-content: space-between; 
            align-items: center; 
            height: 100vh;
            background-color: #f2f2f2;
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        form {
            text-align: center;
            margin: 0 auto; 
            width: 50%; 
        }

        form input[type="text"] {
            width: 300px; 
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            margin-right: 10px; 
        }

        form input[type="submit"] {
            padding: 10px 20px; 
            font-size: 16px;
            background-color: #4CAF50; 
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease; 
            margin-left: 10px; 
            margin-top: 10px;
        }


        /* Hover effect */
        form input[type="submit"]:hover {
            background-color: #45a049; 
        }


        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        table th, table td {
            padding: 12px; 
            border: 1px solid #ddd;
            text-align: center; 
        }

        table th {
            background-color: #f2f2f2;
        }

        pre {
            white-space: pre-wrap;
            margin-top: 20px;
        }


        .container, .buttons-container {
            width: 80%;
            max-width: 600px;
            display: flex;
            flex-direction: column; 
            align-items: center; 
            justify-content: center; 
            text-align: center; 
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin: 10px 0; 
        }

        .button {
            display: inline-block;
            margin: 10px; 
            padding: 10px 20px;
            background-color: #5cb85c;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }

        .button:hover {
            background-color: #4cae4c;
        }

    </style>
</head>
<body>
    <div class="container">
        <h2>Search for a Doctor</h2>
        <form action="" method="post">
            <input type="text" name="command" placeholder="Enter Doctor's Name or Specialty">
            <input type="submit" name="submit" value="Search">
        </form>

        <?php echo $html;  ?>
    </div>
    <?php
    if(isset($_SESSION['id'])) {
        echo '<div>
                <a href="loginpage.php" class="button">Back to Main Page</a>
                <a href="order_medication.php" class="button">Order Prescription Medication</a>
                <a href="view_records.php?patient_id=' . htmlspecialchars($_SESSION['id'], ENT_QUOTES) . '" class="button">View Past Records</a>
                <a href="account_settings.php?id=' . htmlspecialchars($_SESSION['id'], ENT_QUOTES) . '" class="button">Account Settings</a>
              </div>';
    }
    ?>
</body>
</html>
