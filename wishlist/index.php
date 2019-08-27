<?php

# index.php (Code to handle the Wishlists).
# Created on August 27, 2019.
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
    $url = BASE_URL . 'index.php';
    ob_end_clean();
    header("Location: $url");
    exit();
}

if (preg_match('/((\badd\b)|(\bdelete\b)|(\bcart\b))(?!;)?/', $_GET['action'])) {

    require(MYSQL);

    $product_isd = mysqli_real_escape_string($dbc, $_GET['isd']);

    $q = "SELECT id FROM products WHERE isd='" . $product_isd . "'";
    $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

    if (mysqli_num_rows($r) == 1) {

        $wishlist_action = $_GET['action'];

        $product_id = mysqli_fetch_array($r, MYSQLI_NUM);

        $q = "SELECT d.department FROM departments AS d JOIN products AS p ON d.id=p.department_id WHERE p.isd='" . $product_isd . "'";
        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));
        $product_department = mysqli_fetch_array($r, MYSQLI_NUM);

        $q = "SELECT f.format FROM formats AS f JOIN products AS p on f.id=p.format_id WHERE p.isd='" . $product_isd . "'";
        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));
        $product_format = mysqli_fetch_array($r, MYSQLI_NUM);

        switch ($wishlist_action) {

            case "add":

                mysqli_autocommit($dbc, FALSE);

                $q = "INSERT INTO wishlists (product_id, product_department, product_format, quantity, date_created, date_modified, user_id) VALUES ({$product_id}, '" . $product_department . "', '" . $product_format . "', {$_POST['quantity']}, NOW(), NOW(), {$_SESSION['id']})";

                $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

                if ($r) {

                } else {
                    $url = BASE_URL . 'index.php';
                    mysqli_close($dbc);
                    ob_end_clean();
                    header("Location: $url");
                    exit();
                    /* Redirect the user to another location!!! */
                }

                break;

            case "delete":

                break;

            case "cart":

                break;

        }

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

?>