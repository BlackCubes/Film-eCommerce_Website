<?php

# change_password.php.
# Created on May 3, 2019.
# Created by Elias Gutierrez.


// *************************************** //
// ************ DOCUMENTATION ************ //

/*
    This file would allow the user to change their current password into a new one, and to check if they are logged in is by using sessions. If they are not logged in, then they are redirected to the home page. There is also an HTML form after the first PHP code that lets the logged in user to type in their inputs to change their password, and once submitted is where it uses the POST method.
*/

// ************ DOCUMENTATION ************ //
// *************************************** //


// Including the configuration file which includes some of the variables and the error management that would be used later in this file:
require('includes/config.inc.php');

// Naming the proper page title:
$page_title = 'Change Password';

// Including the header file:
include('includes/header.html');

// This first if-statement checks to see if the user is logged in by using session of the stored user's id. If the user is not logged in (fulfilling the if-conditional), then the individual is redirected to the home page where BASE_URL is the variable defined in config.inc.php. The function ob_end_clean() erases the output buffer and turns off output buffering on line 32. On line 33, the header() function sends a raw HTTP header to a client. Lastly, the exit() function on line 34 terminates the script:
if (!isset($_SESSION['user_id'])) {

    $url = BASE_URL . 'index.php';
    ob_end_clean();
    header("Location: $url");
    exit();

}

// This is the main Submit Conditional once the user submitted the HTML form input, and uses the POST metthod:
if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    // Including the database connection which was defined in config.inc.php:
    require(MYSQL);

    // Setting the boolean value for the password variable to be FALSE. This would be used later where the value for $p would store the user's new password. If the user's stored new password is the old password, then the affected rows in the database would return 0 where the user would see a message telling them to enter a new password that is not the old one:
    $p = FALSE;
}

?>