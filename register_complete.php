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

        $_SESSION['systemErr1'] = '';

        $a = md5(uniqid(rand(), true));

        mysqli_autocommit($dbc, FALSE);

        $q1 = "INSERT INTO users (`first_name`, `last_name`, `email`, `pass`, `phone_num`, `verify_code`, `registration_date`) VALUES ('{$_SESSION['fn']}', '{$_SESSION['ln']}', '{$_SESSION['email']}', '{$_SESSION['p']}', '{$_SESSION['phone_num']}', '{$a}', NOW())";
        $r1 = mysqli_query($dbc, $q1) or trigger_error("Query: $q1\n<br>MySQL Error: " . mysqli_error($dbc));

        $user_id = "SELECT id FROM useres WHERE email='{$_SESSION['email']}'";

        $q2 = "INSERT INTO shippingaddress (`user_id`, `address_1`, `address_2`, `city`, `state`, `zip`, `country`) VALUES ('{$user_id}', '{$_SESSION['a1']}', '{$_SESSION['a2']}', '{$_SESSION['c']}', '{$_SESSION['s']}', '{$_SESSION['z']}', 'United States')";
        $r2 = mysqli_query($dbc, $q2) or trigger_error("Query: $q1\n<br>MySQL Error: " . mysqli_error($dbc));

        if ($r1 && $r2) {

            mysqli_commit($dbc);

            $body = "Thank you for registering to buy your favorite films and television shows at the Film eCommerce website! To activate your account, please click on this link\n\n";
            $body .= BASE_URL . 'activate.php?x=' . urlencode($_SESSION['email']) . "&y=$a";

            mail($_SESSION['email'], 'Registration Confirmation', $body, 'From: gutierrezelias1991@gmail.com');

            $_SESSION = [];

            session_destroy();

            setcookie(session_name(), '', time()-3600);

        } else {

            mysqli_rollback($dbc);

            $_SESSION = [];

            session_destroy();

            setcookie(session_name(), '', time()-3600);            
            
            echo '<div class="registerUserErrorCard"><div class="register-error-card--user"><div class="user-error--register"><p>You could not be registered with the given information due to a system error. Please contact the system administrator. We apologize for any inconvenience.</p></div></div></div>';

            include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/footer.html');

        }

    } else {
        $_SESSION['systemErr1'] = 'Please try again';
        header("Location: http://localhost/FilmIndustry/eCommerce/register_page2.php");
        exit;
    }

}

?>