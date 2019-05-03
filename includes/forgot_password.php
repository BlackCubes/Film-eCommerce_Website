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

        // For the second if-statement, the conditional checks if the user does exist in the system. This is done by using the function mysqli_num_rows() where it returns the number of rows in a result set. If it equals to 1, then the user exists. If it equals to 0, then the user does not exist which would lead to an error at the else-statment:
        if (mysqli_num_rows($r) == 1) {

            // This retrieves the user's id by matching the database value into the local variable. In this case, the local variable is $uid (user's id) and the database value is $r. The function list() assigns the local variable as if it were an array. The function mysqli_fetch_array() fetches a result row (in Procedural Programming) as a numeric array where the result row is the variable $r, and the numeric array is the value MYSQLI_NUM (using MYSQLI_NUM gives you numbered indices). It then returns an array that corresponds the fetched row and moves the internal pointer ahead. Combining the two gives the result: $uid[0] = id:
            list($uid) = mysqli_fetch_array($r, MYSQLI_NUM);

        } else { // No database match.

            echo '<p class="error">The submitted email address does not match those on file!</p>';
            
        }

    } else { // The POST was empty.

        echo '<p class="error">You forgot to enter your email address!</p>';

    } // End of empty($_POST[email]).
}

?>