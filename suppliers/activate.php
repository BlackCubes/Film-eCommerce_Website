<?php

# activate.php (Suppliers activation).
# Created on June 14, 2019.
# Created by Elias Gutierrez.

// *************************************** //
// ************ DOCUMENTATION ************ //

/*

*/

// ************ DOCUMENTATION ************ //
// *************************************** //

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/config.inc.php');

$page_title = 'Activate Your Account';

include('includes/header.html');

if (isset($_GET['x'], $_GET['y']) && filter_var($_GET['x'], FILTER_VALIDATE_EMAIL) && (strlen($_GET['y']) == 32)) {

    require(MYSQL);
    $q = "UPDATE suppliers SET verify_code=NULL WHERE (email='" . mysqli_real_escape_string($dbc, $_GET['x']) . "' AND verify_code='" . mysqli_real_escape_string($dbc, $_GET['y']) . "') LIMIT 1";
    $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

}

?>