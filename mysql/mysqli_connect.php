<?php

# mysqli_connect.php
# Created on April 7, 2019.
# Created by Elias Gutierrez.

// This file contains the database access information.
// This file also establishes a connection to MySQL and selects the database.

// Setting the database access information as constants:
define('DB_USER', 'username'); # For now, it will be 'username', but later it would change once the database has been created.
define('DB_PASSWORD', 'password'); # For now, it will be 'password', but it would change later.
define('DB_HOST', 'localhost'); # This would be from my computer. On a hosted website, it would be the location of that provided host.
define('DB_NAME', 'filmeCommerce'); # This would be the name of the database once it is established.

// Making the connection:
$dbc = @mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);

// If there were no connection, trigger an error:
if (!$dbc) {
    trigger_error('Could not connect to MySQL: ' . mysqli_connect_error());
} else { // If there were no error, set the proper encoding:
    mysqli_set_charset($dbc, 'utf8');
}