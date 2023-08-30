<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    
    $email = $_POST["email"];


    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        header("Location: 2ndSignUp.html"); 
        exit;
    }


    $password = password_hash($_POST["password"], PASSWORD_DEFAULT);
    $correct_password = password_hash($_POST["confirm-password"],PASSWORD_DEFAULT );


    // Database connection
    $servername = "localhost";
    $username = "root";
    $password = "";    
    $dbname = "Kanban_Board";

    $conn = new mysqli($servername, $username, $password, $dbname);

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

     // Check if email already exists
     $email_check_query = "SELECT * FROM users WHERE Email='$email'";
     $result = $conn->query($email_check_query);
     
     if ($result->num_rows > 0) {
         $_SESSION['error'] = "An account with this email already exists. Please enter a different email or sign in.";
         header("Location: 2ndSignUp.html");
         exit;
     }
     else{

        // Insert data into database
    $sql = "INSERT INTO users (Email, Password, Correct_password) VALUES ('$email', '$password', '$correct_password')";

    if ($conn->query($sql) === TRUE) {
        echo "Account created successfully!";
        header("Location: board/4thBoard.html");
        exit;
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

}

    $conn->close();
}
?>

