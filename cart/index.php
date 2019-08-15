<?php

# index.php (Code to handle the Shopping Cart).
# Created on August 14, 2019.
# Created by Elias Gutierrez.

// *************************************** //
// ************ DOCUMENTATION ************ //

/*

*/

// ************ DOCUMENTATION ************ //
// *************************************** //

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/config.inc.php');

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/secure.php');

if (!isset($_SESSION)) {
    session_start();
}

if (!isset($_SESSION['id']) || isset($_SESSION['supplier_id'])) {
    ob_end_clean();
    header("Location: http://localhost/FilmIndustry/eCommerce/index.php");
    exit();
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    
    if (preg_match('/((\badd\b)|(\bdelete\b)|(\blater\b))(?!;)?/', $_GET['action'])) {

        require(MYSQL);

        $product_isd = mysqli_real_escape_string($dbc, $_GET['isd']);

        $q = "SELECT id FROM products WHERE id={$product_isd}";
        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

        if (mysqli_num_rows($r) == 1) {

            $cart_action = $_GET['action'];

        } else {

            $url = BASE_URL . 'index.php';

            mysqli_close($dbc);

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
    
}

?>