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

    
if (preg_match('/((\badd\b)|(\bdelete\b)|(\blater\b)|(\bomit\b)|(\bmove\b))(?!;)?/', $_GET['action'])) {

    require(MYSQL);

    $product_isd = mysqli_real_escape_string($dbc, $_GET['isd']);

    $q = "SELECT id FROM products WHERE isd='" . $product_isd . "'";
    $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

    if (mysqli_num_rows($r) == 1) {

        $cart_action = $_GET['action'];

        $product_id = mysqli_fetch_array($r, MYSQLI_NUM);

        switch ($cart_action) {

            case "add":

                if ($_SERVER['REQUEST_METHOD'] == 'POST') {

                    if (!empty($_POST['quantity']) && $_POST['quantity'] > 0) {

                        $_SESSION['systemErr'] = '';

                        $q = "SELECT p.id AS product_id, p.isd AS product_isd, p.name AS product_name, p.unit_price AS product_price, p.stock AS product_stock, p.image_1 AS product_image, d.department AS product_department, f.format AS product_format, dir.first_name AS director_fn, dir.middle_name AS director_mn, dir.last_name AS director_ln FROM products AS p JOIN departments AS d ON p.department_id=d.id JOIN formats AS f ON p.format_id=f.id JOIN products_directors AS pdir ON p.id=pdir.product_id JOIN directors AS dir ON pdir.director_id=dir.id WHERE p.isd='" . $product_isd . "'";

                        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

                        $single_product = mysqli_fetch_array($r, MYSQLI_ASSOC);

                        $items_cart = array($single_product['product_isd'] => array("product_id" => $single_product['product_id'], "product_isd" => $single_product['product_isd'], "product_name" => $single_product['product_name'], "product_price" => $single_product['product_price'], "product_stock" => $single_product['product_stock'], "product_image" => $single_product['product_image'], "product_department" => $single_product['product_department'], "product_format" => $single_product['product_format'], "director_fn" => $single_product['director_fn'], "director_mn" => $single_product['director_mn'], "director_ln" => $single_product['director_ln'], "quantity" => $_POST['quantity']));

                        if (!empty($_SESSION['cart_item'])) {
                            if (in_array($single_product['product_isd'], array_keys($_SESSION['cart_item']))) {
                                foreach ($_SESSION['cart_item'] as $k => $v) {
                                    if ($single_product['product_isd'] == $k) {
                                        if (empty($_SESSION['cart_item'][$k]['quantity'])) {
                                            $_SESSION['cart_item'][$k]['quantity'] = 0;
                                        }
                                        $_SESSION['cart_item'][$k]['quantity'] += $_POST['quantity'];
                                    }
                                }

                                $url = BASE_URL . 'cart/cart.php';
                                mysqli_free_result($r);
                                mysqli_close($dbc);
                                ob_end_clean();
                                header("Location: $url");
                                exit();

                            } else {

                                $_SESSION['cart_item'] = array_merge($_SESSION['cart_item'], $items_cart);

                                $url = BASE_URL . 'cart/cart.php';
                                mysqli_free_result($r);
                                mysqli_close($dbc);
                                ob_end_clean();
                                header("Location: $url");
                                exit();

                            }
                        } else {

                            $_SESSION['cart_item'] = $items_cart;

                            $url = BASE_URL . 'cart/cart.php';
                            mysqli_free_result($r);
                            mysqli_close($dbc);
                            ob_end_clean();
                            header("Location: $url");
                            exit();

                        }

                    } else {

                        $_SESSION['systemErr'] = 'Please enter a quantity of 1 or more!';

                        $url = BASE_URL . 'products/index.php?isd=' . $product_isd;

                        mysqli_close($dbc);

                        ob_end_clean();
                        header("Location: $url");
                        exit();

                    }
                }

                /* Redirect the user to cart view */
                
                break;

            case "delete":

                if (!empty($_SESSION['cart_item'])) {
                    foreach ($_SESSION['cart_item'] as $k => $v) {
                        if ($product_isd == $k) unset($_SESSION['cart_item'][$k]);
                        if (empty($_SESSION['cart_item'])) unset($_SESSION['cart_item']);
                    }

                    $url = BASE_URL . 'cart/cart.php';
                    mysqli_free_result($r);
                    mysqli_close($dbc);
                    ob_end_clean();
                    header("Location: $url");
                    exit();

                }

                break;

            case "empty":
                unset($_SESSION['cart_item']);
                break;

            case "later":

                if (!empty($_SESSION['cart_item'])) {

                    mysqli_autocommit($dbc, FALSE);

                    foreach ($_SESSION['cart_item'] as $k => $v) {
                        if ($product_isd == $k) {
                            $q = "INSERT INTO carts (product_id, product_department, product_format, quantity, date_created, date_modified, user_id) VALUES ({$_SESSION['cart_item'][$k]['product_id']}, '" . $_SESSION['cart_item'][$k]['product_department'] . "', '" . $_SESSION['cart_item'][$k]['product_format'] . "', {$_SESSION['cart_item'][$k]['quantity']}, NOW(), NOW(), {$_SESSION['id']})";
                        }
                    }

                    $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

                    if ($r) {

                        mysqli_commit($dbc);

                        foreach ($_SESSION['cart_item'] as $k => $v) {
                            if ($product_isd == $k) unset($_SESSION['cart_item'][$k]);
                            if (empty($_SESSION['cart_item'])) unset($_SESSION['cart_item']);
                        }

                        $url = BASE_URL . 'cart/cart.php';
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

                } else {
                    $url = BASE_URL . 'index.php';
                    mysqli_close($dbc);
                    ob_end_clean();
                    header("Location: $url");
                    exit();         
                    /* Redirect the user to another location!!! */
                }

                /* Redirect the user */

                break;

            case "omit":

                mysqli_autocommit($dbc, FALSE);

                break;

            case "move":

                $q = "SELECT c.product_id AS product_id, p.isd AS product_isd, p.name AS product_name, p.unit_price AS product_price, p.stock AS product_stock, p.image_1 AS product_image, c.product_department AS product_department, c.product_format AS product_format, dir.first_name AS director_fn, dir.middle_name AS director_mn, dir.last_name AS director_ln, c.quantity AS quantity FROM carts AS c JOIN products AS p ON c.product_id=p.id JOIN products_directors AS pdir ON p.id=pdir.product_id JOIN directors AS dir ON pdir.director_id=dir.id WHERE c.user_id={$_SESSION['id']} AND p.isd='" . $product_isd . "'";

                $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

                $single_product = mysqli_fetch_array($r, MYSQLI_ASSOC);

                $items_cart = $items_cart = array($single_product['product_isd'] => array("product_id" => $single_product['product_id'], "product_isd" => $single_product['product_isd'], "product_name" => $single_product['product_name'], "product_price" => $single_product['product_price'], "product_stock" => $single_product['product_stock'], "product_image" => $single_product['product_image'], "product_department" => $single_product['product_department'], "product_format" => $single_product['product_format'], "director_fn" => $single_product['director_fn'], "director_mn" => $single_product['director_mn'], "director_ln" => $single_product['director_ln'], "quantity" => $single_product['quantity']));

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