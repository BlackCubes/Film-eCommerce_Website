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

if (!isset($_SESSION['id'])) {
    $url = BASE_URL . 'login.php';
    ob_end_clean();
    header("Location: $url");
    exit();
}

require(MYSQL);

$q = "SELECT product_department FROM wishlists WHERE user_id={$_SESSION['id']} LIMIT 1";
$r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

if (mysqli_num_rows($r) == 1){

    $q = "SELECT p.isd AS product_isd, p.name AS product_name, p.unit_price AS product_price, p.stock AS product_stock, p.image_1 AS product_image, MIN(dir.first_name) AS director_fn, MIN(dir.middle_name) AS director_mn, MIN(dir.last_name) AS director_ln, wl.product_department AS product_department, wl.product_format AS product_format, wl.quantity AS product_quantity, DATE_FORMAT(wl.date_created, '%M %d, %Y') AS wishlist_date_created FROM wishlists AS wl JOIN products AS p ON wl.product_id=p.id JOIN products_directors AS pdir ON p.id=pdir.product_id JOIN directors AS dir ON pdir.director_id=dir.id WHERE wl.user_id={$_SESSION['id']} GROUP BY product_isd, product_name ORDER BY DATE_FORMAT(wl.date_created, '%M %d, %Y %T') DESC";

    $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

?>
<div class="container--wishlist-view">
    <div class="main-info--wishlist-view">
        <div class="wishlist-title--wishlist-view">
            <h2>Your Wishlists</h2>
        </div>
        <div class="results--wishlist-view">
            <?php while ($wishlist = mysqli_fetch_array($r, MYSQLI_ASSOC)) { ?>
            <div class="wish-list--wishlist-view">
                <div class="product-image--wishlist-view">
                    <a href="/FilmIndustry/eCommerce/products/index.php?isd=<?php echo $wishlist['product_isd']; ?>"><img alt="<?php echo $wishlist['product_name']; ?>" src="/FilmIndustry/uploads/products/<?php echo $wishlist['product_image']; ?>"></a>
                </div>
                <div class="product-info--wishlist-view">
                    <div class="product-name--wishlist-view">
                        <p><a href="/FilmIndustry/eCommerce/products/index.php?isd=<?php echo $wishlist['product_isd']; ?>"><?php echo $wishlist['product_name']; ?></a></p>
                    </div>
                    <div class="product-type--wishlist-view">
                        <p>(<?php echo $wishlist['product_department'] . ': ' . $wishlist['product_format']; ?>)</p>
                    </div>
                    <div class="product-cast--wishlist-view">
                        <p>Directed by <?php echo $wishlist['director_fn'] . ' ' . $wishlist['director_mn'] . ' ' . $wishlist['director_ln']; ?></p>
                    </div>
                </div>
                <div class="product-more-info--wishlist-view">
                    <div class="product-price--wishlist-view">
                        <p>$<?php echo $wishlist['product_price']; ?></p>
                    </div>
                    <div class="product-quantity--wishlist-view">
                        <p>Qty: <?php echo $wishlist['product_quantity']; ?></p>
                    </div>
                    <div class="product-stock--wishlist-view">
                        <p><?php echo $wishlist['product_stock']; ?> in Stock</p>
                    </div>
                    <div class="product-cart-check--wishlist-view">
                        <p>In cart: 
                            <?php
                            if (isset($_SESSION['cart_item'])) {
                                if (in_array($wishlist['product_isd'], array_keys($_SESSION['cart_item']))) {
                                    echo 'Yes';
                                } else {
                                    echo 'No';
                                }
                            } else {
                                echo 'No';
                            }
                            ?>
                        </p>
                    </div>
                </div>
                <div class="product-options--wishlist-view">
                    <div class="wishlist-date-created--wishlist-view">
                        <p>Item added <?php echo $wishlist['wishlist_date_created']; ?></p>
                    </div>
                    <div class="cart-move-submit">
                        <a href="/FilmIndustry/eCommerce/wishlist/index.php?action=cart&isd=<?php echo $wishlist['product_isd']; ?>">Add to Cart</a>
                    </div>
                    <div class="wishlist-delete-submit">
                        <a href="/FilmIndustry/eCommerce/wishlist/index.php?action=delete&isd=<?php echo $wishlist['product_isd']; ?>">Delete</a>
                    </div>
                </div>
            </div>
            <?php } ?>
        </div>
        <?php } else { ?>
        <div class="empty-title--wishlist-view">
            <h2>Your wishlist is empty!</h2>
        </div>
        <?php } ?>
    </div>
</div>
<?php include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/footer.html'); ?>