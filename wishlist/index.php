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

if (preg_match('/((\badd\b)|(\bmove\b)|(\bdelete\b)|(\bcart\b))(?!;)?/', $_GET['action'])) {

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

                $q = "SELECT product_id FROM wishlists WHERE product_id='" . $product_id[0] . "' AND user_id={$_SESSION['id']}";

                $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

                mysqli_autocommit($dbc, FALSE);

                if (mysqli_num_rows($r) == 0) {

                    $q = "INSERT INTO wishlists (product_id, product_department, product_format, quantity, date_created, date_modified, user_id) VALUES ({$product_id[0]}, '" . $product_department[0] . "', '" . $product_format[0] . "', {$_SESSION['quantity_cart']}, NOW(), NOW(), {$_SESSION['id']})";

                    $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

                    if ($r) {

                        mysqli_commit($dbc);

                        $url = BASE_URL . 'wishlist/wishlist.php';
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

                } elseif (mysqli_num_rows($r) == 1) {

                    $q = "UPDATE wishlists SET quantity=quantity+{$_SESSION['quantity_cart']}, date_modified=NOW() WHERE product_id={$product_id[0]} AND user_id={$_SESSION['id']}";

                    $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

                    if ($r) {

                        mysqli_commit($dbc);

                        $url = BASE_URL . 'wishlist/wishlist.php';
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

                }

                break;

            case "move":

                mysqli_autocommit($dbc, FALSE);

                $q = "SELECT quantity FROM carts WHERE product_id='" . $product_id[0] . "' AND user_id={$_SESSION['id']}";
                $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));
                $cart_quantity = mysqli_fetch_array($r, MYSQLI_NUM);

                $q = "SELECT product_id FROM wishlists WHERE product_id='" . $product_id[0] . "' AND user_id={$_SESSION['id']}";

                $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

                if (mysqli_num_rows($r) == 0) {

                    $q = "INSERT INTO wishlists (product_id, product_department, product_format, quantity, date_created, date_modified, user_id) VALUES ({$product_id[0]}, '" . $product_department[0] . "', '" . $product_format[0] . "', {$cart_quantity[0]}, NOW(), NOW(), {$_SESSION['id']})";

                    $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

                    if ($r) {

                        mysqli_commit($dbc);

                        $q = "DELETE FROM carts WHERE product_id={$product_id[0]} AND user_id={$_SESSION['id']} LIMIT 1";

                        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

                        if ($r) {

                            mysqli_commit($dbc);

                            $url = BASE_URL . 'wishlist/wishlist.php';
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

                } elseif (mysqli_num_rows($r) == 1) {

                    $q = "UPDATE wishlists SET quantity=quantity+{$cart_quantity[0]}, date_modified=NOW() WHERE product_id={$product_id[0]} AND user_id={$_SESSION['id']}";

                    $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

                    if ($r) {

                        mysqli_commit($dbc);

                        $q = "DELETE FROM carts WHERE product_id={$product_id[0]} AND user_id={$_SESSION['id']} LIMIT 1";

                        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

                        if ($r) {

                            mysqli_commit($dbc);

                            $url = BASE_URL . 'wishlist/wishlist.php';
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

                }

                break;

            case "delete":

                mysqli_autocommit($dbc, FALSE);

                $q = "DELETE FROM wishlists WHERE product_id={$product_id[0]} AND user_id={$_SESSION['id']} LIMIT 1";

                $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

                if ($r) {

                    mysqli_commit($dbc);

                    $url = BASE_URL . 'wishlist/wishlist.php';
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

            case "cart":

                $q = "SELECT wl.product_id AS product_id, p.isd AS product_isd, p.name AS product_name, p.unit_price AS product_price, p.stock AS product_stock, p.image_1 AS product_image, wl.product_department AS product_department, wl.product_format AS product_format, dir.first_name AS director_fn, dir.middle_name AS director_mn, dir.last_name AS director_ln, wl.quantity AS quantity FROM wishlists AS wl JOIN products AS p ON wl.product_id=p.id JOIN products_directors AS pdir ON p.id=pdir.product_id JOIN directors AS dir on pdir.director_id=dir.id WHERE wl.user_id={$_SESSION['id']} AND p.isd='" . $product_isd . "'";

                $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

                $single_product = mysqli_fetch_array($r, MYSQLI_ASSOC);

                $items_cart = array($single_product['product_isd'] => array("product_id" => $single_product['product_id'], "product_isd" => $single_product['product_isd'], "product_name" => $single_product['product_name'], "product_price" => $single_product['product_price'], "product_stock" => $single_product['product_stock'], "product_image" => $single_product['product_image'], "product_department" => $single_product['product_department'], "product_format" => $single_product['product_format'], "director_fn" => $single_product['director_fn'], "director_mn" => $single_product['director_mn'], "director_ln" => $single_product['director_ln'], "quantity" => $single_product['quantity']));

                if (!empty($_SESSION['cart_item'])) {
                    if (in_array($single_product['product_isd'], array_keys($_SESSION['cart_item']))) {
                        foreach ($_SESSION['cart_item'] as $k => $v) {
                            if ($single_product['product_isd'] == $k) {
                                if (empty($_SESSION['cart_item'][$k]['quantity'])) {
                                    $_SESSION['cart_item'][$k]['quantity'] = 0;
                                }
                                $_SESSION['cart_item'][$k]['quantity'] += $single_product['quantity'];
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