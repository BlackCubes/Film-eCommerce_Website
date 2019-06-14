<?php

# logout.php (Suppliers logout).
# Created on June 14, 2019.
# Created by Elias Gutierrezz.

// *************************************** //
// ************ DOCUMENTATION ************ //

/*

*/

// ************ DOCUMENTATION ************ //
// *************************************** //

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/config.inc.php');

$page_title="Logout";

include('includes/header.html');

if (!isset($_SESSION['id'])) {

    $url = BASE_URL . 'index.php';
    ob_end_clean();
    header("Location: $url");
    exit();

} else {

    $_SESSION = [];

    session_destroy();

    setcookie(session_name(), '', time()-3600);

}

include('includes/footer.html');
?>