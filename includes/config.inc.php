<?php

// *************************************** //
// ************ DOCUMENTATION ************ //

/* 
    Welcome to an eCommerce Website that targets on products in the Entertainment Industry whether they are new and old, or TV Shows and Films. Since films have undeniably been an influential part of our cultures, societies, and politics from around the world whether they have been banned or not from different government institutions, I wanted to not only show the availability of products but also from the people that worked so hard on making it happen from the page to the magical giant screen. These include Screenwriters, Film Directors, Director of Photographers, Producers, Actresses/Actors, and amongst other positions that are important. Included also are the Film Studios that also made an important contribution on developing, filming, and marketing and distributing their films on wide domestic releases to internationally excited audiences. These studios include the very big to the smaller ones.
*/

# This site was first started on February 2019 and created by Elias Gutierrez.

# The file config.inc.php was created on April 4, 2019 by Elias Gutierrez.

# Its purpose is to define constants and settings, dictates how errors are handled, and defines useful function.

// ************ DOCUMENTATION ************ //
// *************************************** //


// ********************************** //
// ************ SETTINGS ************ //

// Flag variable for site status:
define('LIVE', FALSE);

// Admin contact address (mine for now, but different for someone else):
define('EMAIL', 'gutierrezelias1991@gmail.com');

// Site URL (base for all redirections):
// This would be for my computer, but would change for finalization:
define('BASE_URL', 'http://localhost/FilmIndustry/eCommerce/');

// Location of the MySQL connection:
// For now, this would be stored in a folder called 'mysql'. For a live functioning site, this would be placed above the web document root for security. Lastly, the absolute path is from my computer which would change for a finalization, or for a live site:
define('MYSQL', 'C:\\xampp\\htdocs\\FilmIndustry\\eCommerce\\mysql\\mysqli_connect.php');

// Time zone (would change for a live site or finalization, but for now the time zone is my nearest location):
date_default_timezone_set('America/Los_Angeles');

// ************ SETTINGS ************ //
// ********************************** //

// ****************************************** //
// ************ ERROR MANAGEMENT ************ //

// Error handler:
function my_error_handler($e_number, $e_message, $e_file, $e_line, $e_vars) {

    // Error message:
    $message = "An error occured in script '$e_file' on line $e_line: $e_message\n";

    // Concatenating the date and time:
    $message .= "Date/Time: " .date('n-j-Y H:i:s') . "\n";

    if (!LIVE) { // During the development stage, print the error:

        // Showing the error message, if not on a live site:
        echo '<div class="error">' . nl2br($message);

        // Adding the variables and a backtrace:
        echo '<pre>' . print_r($e_vars, 1) . "\n";
        debug_print_backtrace();
        echo '</pre></div>';

    } else { // Don't show the errors if on a live site:

        // Sending an email to the admin of the site:
        $body = $message . "\n" . print_r($e_vars, 1);
        mail(EMAIL, 'Site Error!', $body, 'From: user@useremail.com');

        // Print an error message to the user if the error isn't a notice:
        if ($e_number != E_NOTICE) {
            echo '<div class="error">A system error occured. We apologize for the inconvenience.</div><br>';
        }
    } // End of !LIVE.

} // End of my_error_handler() definition.

// Use the error handler:
set_error_handler('my_error_handler');

// ************ ERROR MANAGEMENT ************ //
// ****************************************** //