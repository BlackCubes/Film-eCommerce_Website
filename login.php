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
}
?>