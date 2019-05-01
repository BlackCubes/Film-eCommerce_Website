<?php

# activate.php.
# Created on May 1, 2019.
# Created by Elias Gutierrez.

// This file activates the user's account after they have registered and clicked on the activation link through their email.

// Include the configuration file (this would be used to call some of the variables and the error management):
require('includes/config.inc.php');

// Include the page title:
$page_title = 'Activate Your Account';

// Include the header file:
include('includes/header.html');

// For this main if-statement, after the user has registered and clicks on the activation link in their email, the GET method extracts the value from the key 'x' (which is the encoded email) and it also extracts the value from the key 'y' (which is the activation code) from the URL. The link was created from register.php where it first contains the BASE_URL defined from the file config.inc.php which is appended to the file activate.php with a separator '?'. After the separator it has the key 'x' with a value of the user's encoded email address to keep it safe in the URL, and it has the key 'y' with a value of the activation code. These query parameters are separated by an ampersand '&' which acts as a delimiter. The function isset() checks if $_GET['x'] and $_GET['y'] are set. The function filter_var filters a variable with the specified filter where the variable is the user's email, and the specified filter is FILTER_VALIDATE_EMAIL which is a filter that validates an email address. The function strlen() converts the string into an integer from the activation code where the activation code was created giving a 32-hexadecimal number from the file register.php. If none of these three conditions are met, then the user is redirected to the home page:
if (isset($_GET['x'], $_GET['y']) && filter_var($_GET['x'], FILTER_VALIDATE_EMAIL) && (strlen($_GET['y']) == 32)) {

    // Updating the the database. Once the user has confirmed their registration by clicking on the activation link, the column 'verify_code' from the table 'users' would be set to NULL. For extra security, the function mysqli_real_escape_string() is used on both the email address and activation code from the GET method. It calls in the variable MYSQL defined in config.inc.php for the database connection, it stores the query statements into the variable $q, and it stores the result of the query statement into the variable $r where an error is triggered if a problem occurs:
    require(MYSQL);
    $q = "UPDATE users SET verify_code=NULL WHERE (email='" . mysqli_real_escape_string($dbc, $_GET['x']) . "' AND verify_code='" . mysqli_real_escape_string($dbc, $_GET['y']) . "') LIMIT 1";
    $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));
}

?>