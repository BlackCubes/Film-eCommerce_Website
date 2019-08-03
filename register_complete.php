<?php

# register_complete.php (User's Final Registration Page).
# Created August 2, 2019.
# Created by Elias Gutierrez.

// *************************************** //
// ************ DOCUMENTATION ************ //

/*

*/

// ************ DOCUMENTATION ************ //
// *************************************** //

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/config.inc.php');

$page_title = 'Register';

if (!isset($_SESSION)) {
    session_start();
}

if (isset($_SESSION['id'])) {
    ob_end_clean();
    header("Location: http://localhost/FilmIndustry/eCommerce/index.php");
    exit;
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    require(MYSQL);

    function sanitize_input($input) {
        $input = trim($input);
        $input = stripslashes($input);
        $input = htmlspecialchars($input);
        return $input;
    }

    include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/header.html');

    $a1 = $c = $s = $z = FALSE;

    if (preg_match('/^[A-Z0-9 ,#\'\/.]{3,46}$/iu', sanitize_input($_POST['address1']))) {
        $_SESSION['a1Err'] = '';
        $_SESSION['a1'] = mysqli_real_escape_string($dbc, sanitize_input($_POST['address1']));
        $a1 = TRUE;
    } else {
        $_SESSION['a1Err'] = 'Please enter a valid shipping address!';
    }

    if (preg_match('/^(\d{5})(-\d{4})?\s?$/', sanitize_input($_POST['zip']))) {
        $_SESSION['zipErr'] = '';
        $_SESSION['z'] = mysqli_real_escape_string($dbc, sanitize_input($_POST['zip']));
        $z = TRUE;
    } else {
        $_SESSION['zipErr'] = 'Please enter a valid zip code!';
    }

}

?>