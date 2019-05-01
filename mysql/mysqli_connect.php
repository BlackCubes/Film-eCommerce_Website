<?php

# File - mysqli_connect.php
# Created on April 7, 2019.
# Created by Elias Gutierrez.

// This file contains the database access information.
// This file also establishes a connection to MySQL and selects the database.

// Setting the database access information as constants:
define('DB_USER', 'frank'); # User 'frank' has access to only filmecommerce database.
define('DB_PASSWORD', 'Ecommerce.101'); # User frank's password to connect to the database.
define('DB_HOST', 'localhost'); # This would be from my computer. On a hosted website, it would be the location of that provided host.
define('DB_NAME', 'filmecommerce'); # This would be the name of the database once it is established.

// Making the connection:
$dbc = @mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);

// If there were no connection, trigger an error:
if (!$dbc) {
    trigger_error('Could not connect to MySQL: ' . mysqli_connect_error());
} else { // If there were no error, set the proper encoding:
    mysqli_set_charset($dbc, 'utf8');
}