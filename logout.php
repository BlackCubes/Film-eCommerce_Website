<?php

# logout.php.
# Created on May 1, 2019.
# Created by Elias Gutierrez.

// This file is the logout page for the user to logout if he is logged in. If the user has not logged in, the option for logging out will not appear.

// Including the configuration file which would be used to call some of the variables and the error management:
require('includes/config.inc.php');

// Including the proper title for this page:
$page_title = 'Logout';

// Including the header file:
include('includes/header.html');

// For the main Submit Conditional, it checks if the first name of the logged in user is not set which is stored in session. If there is no logged in user, then the if-conditional is passed which would redirect the individual to the home page. If the user is logged in, then the if-conditional fails which would go to the else-conditional by actually logging out the logged in user:
if (!isset($_SESSION['first_name'])) {

    // Redirecting the individual if not logged in to the home page. The variable BASE_URL was defined in config.inc.php:
    $url = BASE_URL . 'index.php';

    // The function ob_end_clean() deletes the buffer and sending all data to output:
    ob_end_clean();

    // Sending a raw HTTP header to a client where the header string is to be sent by the defined variable $url:
    header("Location: $url");

    // Terminating the script by using the function exit():
    exit();

} else { // Log out the logged in user.

    // This would destroy all variables associated with the session by sending session an empty array:
    $_SESSION = [];

    // As a precaution, destroy all of the data associated with the current session:
    session_destroy();

    // Destroying the cookie by using the function setcookie() which takes the name of the cookie as the first argument, the value of the cookie (stored on the clients computer) as the second argument, and when the cookie expires as the third argument. The function session_name() gets the current session as the name of the cookie, an empty string is used as the value of the cookie in order to destroy the stored value in the clients computer, and the cookie expiration is set to the past to delete the cookie entirely:
    setcookie(session_name(), '', time()-3600);

}

?>