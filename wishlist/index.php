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

                    mysqli_commit($dbc);

                    $url = BASE_URL . 'wishlist/wishlist.php';
                    mysqli_free_result($r);
                    mysqli_close($dbc);
                    ob_end_clean();
                    header("Location: $url");
                    exit();

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

                $q = "SELECT p.id AS product_id, p.isd AS product_isd, p.name AS product_name, p.unit_price AS product_price, p.stock AS product_stock, p.image_1 AS product_image, d.department AS product_department, f.format AS product_format, dir.first_name AS director_fn, dir.middle_name AS director_mn, dir.last_name AS director_ln FROM products AS p JOIN departments AS d ON p.department_id=d.id JOIN formats AS f ON p.format_id=f.id JOIN products_directors AS pdir ON p.id=pdir.product_id JOIN directors AS dir ON pdir.director_id=dir.id WHERE p.isd='" . $product_isd . "'";

                $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

                $single_product = mysqli_fetch_array($r, MYSQLI_ASSOC);

                $item_cart = array($single_product['product_isd'] => array("product_id" => $single_product['product_id'], "product_isd" => $single_product['product_isd'], "product_name" => $single_product['product_name'], "product_price" => $single_product['product_price'], "product_stock" => $single_product['product_stock'], "product_image" => $single_product['product_image'], "product_department" => $single_product['product_department'], "product_format" => $single_product['product_format'], "director_fn" => $single_product['director_fn'], "director_mn" => $single_product['director_mn'], "director_ln" => $single_product['director_ln'], "quantity" => $single_product['quantity']));

                if (!empty($_SESSION['cart_item'])) {

                } else {

                    $_SESSION['cart_item'] = $item_cart;

                    $url = BASE_URL . 'cart/cart.php';
                    mysqli_free_result($r);
                    mysqli_close($dbc);
                    ob_end_clean();
                    header("Location: $url");
                    exit();

                }

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