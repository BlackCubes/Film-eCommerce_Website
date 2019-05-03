<?php

# forgot_password.php.
# Created on May 2, 2019.
# Created by Elias Gutierrez.

// This file would send the user a temporary password to their email to use to log in if they are registered in the system.

// Including the configuration file which would use some of the variables and the error management:
require('includes/config.inc.php');

// Naming the proper page title:
$page_title = 'Forgot Password';

// Include the header file:
include('includes/header.html');

// This is the main Submit Conditional after the user submits using the POST method:
if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    // Include the database connection which the variable was defined on line 35 in the file config.inc.php:
    require(MYSQL);

    // The variable $uid (which is the user's id) is set to FALSE assuming that the particular individual has not logged in yet. This variable will be used later:
    $uid = FALSE;

    // For the first if-statement in the main Submit Conditional, it checks if the user properly entered their email address. If not, then an error would occur telling them that the user has forgotten to enter an email address:
    if (!empty($_POST['email'])) {

        // The following query takes the user's submitted email address to look for the user's id in the system, and it removes any special characters by the function mysqli_real_escape_string(). After storing the query in the variable $q, the result of the query statement is stored in the variable $r where an error is triggered if something did not go right. A little bit later in the code, this will be used in the second if-statement to check if the user exist in the system:
        $q = 'SELECT id FROM users WHERE email="' . mysqli_real_escape_string($dbc, $_POST['email']) . '"';
        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));
    }
}

?>