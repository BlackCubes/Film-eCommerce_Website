<?php

# cart.php (Users view Shopping Cart before checkout).
# Created on August 18, 2019.
# Created by Elias Gutierrez.

// *************************************** //
// ************ DOCUMENTATION ************ //

/*

*/

// ************ DOCUMENTATION ************ //
// *************************************** //

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/config.inc.php');

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/secure.php');

$page_title = 'Shopping Cart';

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/header.html');

if (!isset($_SESSION['id']) || isset($_SESSION['supplier_id'])) {
    ob_end_clean();
    header("Location: http://localhost/FilmIndustry/eCommerce/index.php");
    exit();
}

if (isset($_SESSION['cart_item'])) {

    $total_quantity = 0;
    $subtotal_price = 0;

    echo '<div class="container--cart-view"><div class="main-info--cart-view"><div class="cart-title--cart-view"><h2>Shopping Cart</h2></div></div>';

    foreach ($_SESSION['cart_item'] as $item) {
        echo '<p>' . $item['product_name'] . '</p>';
    }

    echo '</div>';

} else {
    echo '<p>Your cart is empty!</p>';
}

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/footer.html'); 

?>