<?php

# logout.php.
# Created on May 1, 2019.
# Created by Elias Gutierrez.

require('includes/config.inc.php');

$page_title = 'Logout';

include('includes/header.html');

if (!isset($_SESSION['first_name'])) {

    $url = BASE_URL . 'index.php';

    ob_end_clean();

    header("Location: $url");

    exit();

} else {

    $url = BASE_URL . 'index.php';

    $_SESSION = [];

    session_destroy();

    setcookie(session_name(), '', time()-3600);

    header("Location: $url");
    exit();

}
?>