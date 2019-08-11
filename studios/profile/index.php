<?php

# index.php (Display Studios once clicked).
# Created on August 11, 2019.
# Created by Elias Gutierrez

// *************************************** //
// ************ DOCUMENTATION ************ //

/*

*/

// ************ DOCUMENTATION ************ //
// *************************************** //

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/config.inc.php');

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/secure.php');

if (isset($_GET['role'], $_GET['company']) && preg_match('/(\bstudio\b)(?!;)/', $_GET['role'])) {

    $id_decrypt = urldecode(my_decrypt($_GET['company'], KEY));
    
} else {

    $url = BASE_URL . 'index.php';

    ob_end_clean();
    header("Location: $url");
    exit();

}
?>