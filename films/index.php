<?php

# index.php (Users/Customers Shop for Films page).
# Created by Elias Gutierrez.
# Created on July 6, 2019.

// *************************************** //
// ************ DOCUMENTATION ************ //

/*

*/

// ************ DOCUMENTATION ************ //
// *************************************** //

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/config.inc.php');

$page_title = 'Films';

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/header.html');

require(MYSQL);

?>
<div class="container">
    <div class="sidebar-a">
        <p><b>Genre</b></p>
        <?php

        $q = "SELECT genre FROM genres ORDER BY genre";
        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error " . mysqli_error($dbc));

        while ($genre = mysqli_fetch_array($r, MYSQLI_ASSOC)) {
            echo '<p>' . $genre['genre'] . '</p>';
        }

        ?>
    </div>
    <div class="main-product">
        <?php

        $q = "SELECT p.name, f.format, p.unit_price, p.image_1 FROM products AS p JOIN formats AS f ON p.format_id=f.id ORDER BY p.name";
        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error " . mysqli_error($dbc));

        while ($product = mysqli_fetch_array($r, MYSQLI_ASSOC)) {
            echo '<img src="/FilmIndustry/uploads/products/' . $product['image_1'] .'" style="max-width:280px;max-height:280px"; alt="#"><p>' . $product['name'] . '</p>' . $product['format'] . $product['unit_price'];
        }

        ?>
    </div>
    <div class="sidebar-b"></div>
</div>
<?php include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/footer.html'); ?>