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

$q = "SELECT product_department FROM wishlists WHERE user_id={$_SESSION['id']}";
$r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

if (mysqli_num_rows($r) == 1){
?>
<?php } else { ?>
<p>Your wishlist is empty!</p>
<?php
}
include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/footer.html');

?>