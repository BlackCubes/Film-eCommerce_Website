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
        echo '<div class="cart-list--cart-view"><div class="product-image--cart-view"><img alt="' . $item['product_name'] . '" src="/FilmIndustry/uploads/products/' . $item['product_image'] . '"></div><div class="product-info--cart-view"><div class="product-name--cart-view"><p><a href="/FilmIndustry/eCommerce/products/index.php?isd=' . $item['product_isd'] . '">' . $item['product_name'] . '</a><span class="director-name--cart-view"> by ' . $item['director_fn'] . ' ' . $item['director_mn'] . ' ' . $item['director_ln'] . '</span></p></div><div class="product-format--cart-view"><p>' . $item['product_format'] . '</p></div><div class="product-options--cart-view"><span class="quantity-view--cart-view">Qty: ' . $item['quantity'] . '</span><span class="product-delete--cart-view"><a href="/FilmIndustry/eCommerce/cart/index.php?action=delete&isd=' . $item['product_isd'] . '">Delete</a></span><span class="product-later--cart-view"><a href="#">Save for later</a></span></div></div><div class="product-price--cart-view"><p>$' . $item['product_price'] . '</p></div></div>';

        $total_quantity += $item['quantity'];

        $subtotal_price += ($item['product_price'] * $item['quantity']);

    }

    $item_count = ($total_quantity > 1) ? ($total_quantity . ' items') : ($total_quantity . ' item');

    echo '<div class="subtotal-cart--cart-view"><span class="subtotal-title-amount--cart-view">Subtotal (' . $item_count . '):</span><span class="subtotal-display--cart-view"> $' . $subtotal_price . '</span></div></div></div></div>';

} else {
    echo '<p>Your cart is empty!</p>';
}

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/footer.html'); 

?>