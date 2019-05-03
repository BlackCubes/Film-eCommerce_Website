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

?>