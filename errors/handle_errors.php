<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Reporting Errors</title>
</head>
<body>
<h2>Testing Error Reporting</h2>
<?php

# Error Reporting
# Created February 22, 2019
# Created by Elias Gutierrez

// Flag variable for site status:
define('LIVE', FALSE);

// Create the error handler:
function my_error_handler($e_number, $e_message, $e_file, $e_line, $e_vars) {

    // Build the error message:
    $message = "An error occured in script '$e_file' on line $e_line: $e_message\n";

    // Append $e_vars to $message:
    $message .= print_r($e_vars, 1);

    if (!LIVE) { // Development (print the error).
        echo '<pre>' . $message . "\n";
        debug_print_backtrace();
        echo '</pre><br>';
    } else { // Don't show the error.
        echo '<div class="error">A system error occured. We apologize fro the inconvenience.</div><br>';
    }

} // End of my_error_handler() definition.

// Use my_error_handler() definition:
set_error_handler('my_error_handler');

?>
</body>
</html>