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
}

?>