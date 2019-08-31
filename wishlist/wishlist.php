<?php

# wishlist.php (Users View their Wishlists).
# Created on August 29, 2019.
# Created by Elias Gutierrez.

// *************************************** //
// ************ DOCUMENTATION ************ //

/*

*/

// ************ DOCUMENTATION ************ //
// *************************************** //

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/config.inc.php');

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/secure.php');

$page_title = 'Your Wishlists';

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/header.html');

if (!isset($_SESSION['id']) || isset($_SESSION['supplier_id'])) {
    ob_end_clean();
    header("Location: $url");
    exit();
}

require(MYSQL);

$q = "SELECT product_department FROM wishlists WHERE user_id={$_SESSION['id']} LIMIT 1";
$r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

if (mysqli_num_rows($r) == 1){

    $q = "SELECT DISTINCT p.name AS product_name, p.unit_price AS product_price, p.stock AS product_stock, p.image_1 AS product_image, a.first_name AS actor_fn, a.middle_name AS actor_mn, a.last_name AS actor_ln, wl.product_department AS product_department, wl.product_format AS product_format, wl.quantity AS product_quantity, wl.date_created AS product_date_created FROM wishlists AS wl JOIN products AS p ON wl.product_id=p.id JOIN products_actors AS pa ON p.id=pa.product_id JOIN actors AS a ON pa.actor_id=a.id WHERE wl.user_id={$_SESSION['id']} ORDER BY a.last_name";

    $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

?>
<div class="container--wishlist-view">
    <h2>Your Wishlists</h2>
</div>
<?php } else { ?>
<p>Your wishlist is empty!</p>
<?php
}
include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/footer.html');

?>