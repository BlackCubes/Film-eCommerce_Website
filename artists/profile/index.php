<?php

# index.php (Display Artists once clicked).
# Created on August 9, 2019.
# Created by Elias Gutierrez.

// *************************************** //
// ************ DOCUMENTATION ************ //

/*

*/

// ************ DOCUMENTATION ************ //
// *************************************** //

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/config.inc.php');

$page_title = 'Artist Profile Test';

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/secure.php');

if (isset($_GET['artist'], $_GET['role'])) {

    $id_decrypt = urldecode(my_decrypt($_GET['artist'], KEY));

    $role = $_GET['role'];

    if (is_numeric($id_decrypt) && preg_match('/^[1-9]{1}([0-9]{1,10})?$/', $id_decrypt)) {

        require(MYSQL);

        $id = $id_decrypt;
        
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