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

    echo '<div class="container--cart-view"><div class="main-info--cart-view"><div class="cart-title--cart-view"><h2>Shopping Cart</h2></div><div class="results--cart-view">';

    foreach ($_SESSION['cart_item'] as $item) {
        echo '<div class="cart-list--cart-view"><div class="product-image--cart-view">' . $item['product_image'] . '</div><div class="product-info--cart-view"><div class="product-name--cart-view"><p>' . $item['product_name'] . '<span class="director-name--cart-view"> by ' . $item['director_fn'] . ' ' . $item['director_mn'] . ' ' . $item['director_ln'] . '</span></p></div><div class="product-format--cart-view"><p>' . $item['product_format'] . '</p></div><div class="product-options--cart-view"><span class="quantity-option--cart-view"></span><span class="product-delete--cart-view"><a href="#">Delete</a></span><span class="product-later--cart-view"><a href="#">Save for later</a></span></div></div></div>';
    }

    echo '</div></div></div>';

} else {
    echo '<p>Your cart is empty!</p>';
}

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/footer.html'); 

?>