<?php

# login.php.
# Created on May 1, 2019.
# Created by Elias Gutierrez.

// This file is the login page for the user to login if registered.

// Include the configuration file which would be used to call some of the variables and the error management:
require('includes/config.inc.php');

// Add the proper page title:
$page_title = 'Login';

// Include the header file:
include('includes/header.html');

// The main Submit Conditional using the POST method:
if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    require(MYSQL); // DB connection. Variable defined in config.inc.php.

    // Validating the user's email. If the user's input for the email field in the HTML code section is not empty, then it is stored in a variable $e where it has a function mysqli_real_escape_string() by removing any special characters for security purposes. If it fails the if-conditional, then the variable $e is set to a boolean value of FALSE and creating an error message:
    if (!empty($_POST['email'])) {
        $e = mysqli_real_escape_string($dbc, $_POST['email']);
    } else {
        $e = FALSE;
        echo '<p class="error">You forgot to enter your email address!</p>';
    }

    // Validating the user's password. The logic is the same explanation as in line 23, but the difference is that the use of the function trim() on line 33 which removes any white spaces or other characters from the beginning and end of a string:
    if (!empty($_POST['pass'])) {
        $p = trim($_POST['pass']);
    } else {
        $p = FALSE;
        echo '<p class="error">You forgot to enter your password!</p>';
    }
}
?>