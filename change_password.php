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

    // This second if-statement validates the new password by first checking if the length of the new password is greater than or equal to 10, and this is done by using the strlen() function. If it does not meet the conditional, then an error would occur telling the user to enter a valid password. Once it passes the conditional, it goes to another if-statement (third one in the entire file) where the conditional checks if the user properly confirmed their new password by re-typing it in. If it does not pass that conditional, then the user would see an error message telling them that they did not properly confirmed the two password inputs. Once it does meet the requirements for the third if-statement is where the new password is stored in the variable $p, and where the password is hashed with the function password_hash() with PASSWORD_DEFAULT acts as a one-way hashing algorithm giving the result of 255 characters:
    if (strlen($_POST['password1']) >= 10) {
        if ($_POST['password1'] == $_POST['password2']) {
            $p = password_hash($_POST['password1'], PASSWORD_DEFAULT);
        } else {
            echo '<p class="error">Your password did not match the confirmed password!</p>';
        }
    } else {
        echo '<p class="error">Please enter a valid password!</p>';
    }
}

?>