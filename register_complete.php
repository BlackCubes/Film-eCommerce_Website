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

    if (preg_match('/^[A-Z0-9 ,#\'\/.]{3,46}$/iu', sanitize_input($_POST['address2']))) {
        $_SESSION['a2Err'] = '';
        $_SESSION['a2'] = mysqli_real_escape_string($dbc, sanitize_input($_POST['address2']));
    } elseif (empty(sanitize_input($_POST['address2']))) {
        $_SESSION['a2Err'] = '';
        $_SESSION['a2'] = mysqli_real_escape_string($dbc, sanitize_input($_POST['address2']));
    } else {
        $_SESSION['a2Err'] = 'Please enter a valid second address!';
    }

    if (preg_match('/^(\p{L}+(?:([\ \-\']|(\.\ ))\p{L}+)*){3,50}$/u', sanitize_input($_POST['city']))) {
        $_SESSION['cErr'] = '';
        $_SESSION['c'] = mysqli_real_escape_string($dbc, sanitize_input($_POST['city']));
        $c = TRUE;
    } else {
        $_SESSION['cErr'] = 'Please enter a valid city!';
    }

    if (preg_match('/^(\p{L}+(?:([\ \-\']|(\.\ ))\p{L}+)*){2,50}$/u', sanitize_input($_POST['state']))) {
        $_SESSION['sErr'] = '';
        $_SESSION['s'] = mysqli_real_escape_string($dbc, sanitize_input($_POST['state']));
        $s = TRUE;
    } else {
        $_SESSION['sErr'] = 'Please enter a valid state!';
    }

    if (preg_match('/^(\d{5})(-\d{4})?\s?$/', sanitize_input($_POST['zip']))) {
        $_SESSION['zipErr'] = '';
        $_SESSION['z'] = mysqli_real_escape_string($dbc, sanitize_input($_POST['zip']));
        $z = TRUE;
    } else {
        $_SESSION['zipErr'] = 'Please enter a valid zip code!';
    }

    if (preg_match('/^[0-9]{3}-[0-9]{3}-[0-9]{4}$/', sanitize_input($_POST['phone_num']))) {
        $_SESSION['phoneErr'] = '';
        $_SESSION['phone_num'] = mysqli_real_escape_string($dbc, sanitize_input($_POST['phone_num']));
    } elseif (empty(sanitize_input($_POST['phone_num']))) {
        $_SESSION['phoneErr'] = '';
        $_SESSION['phone_num'] = mysqli_real_escape_string($dbc, sanitize_input($_POST['phone_num']));
    } else {
        $_SESSION['phoneErr'] = 'Please enter a valid phone number!';
    }

    if ($a1 && $c && $s && $z) {

    } else {
        $_SESSION['systemErr1'] = 'Please try again';
        header("Location: http://localhost/FilmIndustry/eCommerce/register_page2.php");
        exit;
    }

}

?>