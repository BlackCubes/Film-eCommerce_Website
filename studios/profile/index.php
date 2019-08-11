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

    if (is_numeric($id_decrypt) && preg_match('/^[1-9]{1}([0-9]{1,10})?$/', $id_decrypt)) {

    } else {

        $url = BASE_URL . 'index.php';

        ob_end_clean();
        header("Location: $url");
        exit();

    }
    
} else {

    $url = BASE_URL . 'index.php';

    ob_end_clean();
    header("Location: $url");
    exit();

}
?>