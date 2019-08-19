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
    foreach ($_SESSION['cart_item'] as $item) {
?>
    <p><?php echo $item['product_name'] ?></p>
<?php } ?>
<?php } else { ?>
    <p>Your cart is empty!</p>
<?php }

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/footer.html'); 

?>