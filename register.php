<?php

# register.php.
# Created on April 30, 2019.
# Created by Elias Gutierrez.

// This file is the registration page for the website.

// Include the configuration script (this would be used to call some of the variables and the error management):
require('includes/config.inc.php');

// Including the page title:
$page_title = 'Register';

// Include the header:
include('includes/header.html');

if ($_SERVER['REQUEST_METHOD'] == 'POST') { // Handling the form after the user submits the form.

    // Getting the database connection:
    require(MYSQL);

    // Trimming the incoming data from potential malicious users by using an array_map which assigns every element from $_POST to the function trim(). This is assigned to the array $trimmed:
    $trimmed = array_map('array', $_POST);

    // Assume any invalid variables that were not used after submitting the form (later, if TRUE then this would not be a problem):
    $fn = $ln = $e = $p = FALSE;

    // Checking for a first name by using regular expressions based on assumptions on what a first name would contain. This is done by using the delimiters first (/ /). Inside the delimiters have different values for a first name such as an uppercase and lowercase, a space, an apostraphe, a period, and a dash. The modifier 'i' enables A-Z case-insensitive, and the apostraphe is escaped by '\'. The range for the length of such a first name is from 2 to 20 characters where 20 is the max length set from VARCHAR in the database. The caret '^' and dollar sign '$' indicates the beginning and end of a string, respectively. This is assigned to preg_match function which performs a regular expression match from the first argument to the second argument (which is the user's first name). If it passes, then the variable $fn gets assigned to the user's first name while escaping any special characters from mysqli_real_escape_string. If it does not pass the if statement, then the user would see an error message:
    if (preg_match('/^[A-Z \'.-]{2,20}$/i', $trimmed['first_name'])) {
        $fn = mysqli_real_escape_string($dbc, $trimmed['first_name']);
    } else {
        echo '<p class="error">Please enter your first name!</p>';
    }

}

?>