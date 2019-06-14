<?php

# forgot_password.php (Suppliers forgotten password).
# Created on June 14, 2019.
# Created by Elias Gutierrez.

// *************************************** //
// ************ DOCUMENTATION ************ //

/*

*/

// ************ DOCUMENTATION ************ //
// *************************************** //

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/config.inc.php');

$page_title = 'Forgot Password';

include('includes/header.html');

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    require(MYSQL);

    $sid = FALSE;

    if (!empty($_POST['email'])) {

        $q = 'SELECT id FROM suppliers WHERE email="' . mysqli_real_escape_string($dbc, $_POST['email']) . '"';
        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

        if (mysqli_num_rows($r) == 1) {

            list($sid) = mysqli_fetch_array($r, MYSQLI_NUM);

        } else {

            echo '<p class="error">The submitted email address does not match those on file!</p>';

        }

    } else {

        echo '<p class="error">You forgot to enter your email address!</p>';

    }

    if ($uid) {
        
    }

}

?>