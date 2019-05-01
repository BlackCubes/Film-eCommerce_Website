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

}

?>