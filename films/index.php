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
        <?php

        $q = "SELECT format FROM formats ORDER BY format";
        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error " . mysqli_error($dbc));
        echo '<div class="results"><p><b>Formats</b></p>';
        while ($format = mysqli_fetch_array($r, MYSQLI_ASSOC)) {
            echo '<p>' . $format['format'] . '</p>';
        }
        echo '</div>';

        $q = "SELECT genre FROM genres ORDER BY genre";
        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error " . mysqli_error($dbc));
        echo '<div class="results"><p><b>Genres</b></p>';
        while ($genre = mysqli_fetch_array($r, MYSQLI_ASSOC)) {
            echo '<p>' . $genre['genre'] . '</p>';
        }
        echo '</div>';

        $q = "SELECT first_name, middle_name, last_name FROM actors ORDER BY last_name";
        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error " . mysqli_error($dbc));
        echo '<div class="results"><p><b>Actors</b></p>';
        while ($actor = mysqli_fetch_array($r, MYSQLI_ASSOC)) {
            echo '<p>' . $actor['first_name'] . ' ' . $actor['middle_name'] . ' ' . $actor['last_name'] . '</p>';
        }
        echo '</div>';

        $q = "SELECT first_name, middle_name, last_name FROM directors ORDER BY last_name";
        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error " . mysqli_error($dbc));
        echo '<div class="results"><p><b>Directors</b></p>';
        while ($director = mysqli_fetch_array($r, MYSQLI_ASSOC)) {
            echo '<p>' . $director['first_name'] . ' ' . $director['middle_name'] . ' ' . $director['last_name'] . '</p>';
        }
        echo '</div>';

        $q = "SELECT first_name, middle_name, last_name FROM writers ORDER BY last_name";
        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error " . mysqli_error($dbc));
        echo '<div class="results"><p><b>Writers</b></p>';
        while ($writer = mysqli_fetch_array($r, MYSQLI_ASSOC)) {
            echo '<p>' . $writer['first_name'] . ' ' . $writer['middle_name'] . ' ' . $writer['last_name'] . '</p>';
        }
        echo '</div>';

        $q = "SELECT first_name, middle_name, last_name FROM producers ORDER BY last_name";
        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error " . mysqli_error($dbc));
        echo '<div class="results"><p><b>Producers</b></p>';
        while ($producer = mysqli_fetch_array($r, MYSQLI_ASSOC)) {
            echo '<p>' . $producer['first_name'] . ' ' . $producer['middle_name'] . ' ' . $producer['last_name'] . '</p>';
        }
        echo '</div>';

        $q = "SELECT first_name, middle_name, last_name FROM dps ORDER BY last_name";
        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error " . mysqli_error($dbc));
        echo '<div class="results"><p><b>Cinematographers</b></p>';
        while ($dp = mysqli_fetch_array($r, MYSQLI_ASSOC)) {
            echo '<p>' . $dp['first_name'] . ' ' . $dp['middle_name'] . ' ' . $dp['last_name'] . '</p>';
        }
        echo '</div>';

        $q = "SELECT studio_name FROM studios ORDER BY studio_name";
        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error " . mysqli_error($dbc));
        echo '<div class="results"><p><b>Studios</b></p>';
        while ($studio = mysqli_fetch_array($r, MYSQLI_ASSOC)) {
            echo '<p>' . $studio['studio_name'] . '</p>';
        }
        echo '</div>';

        ?>
    </div>
    <div class="main-product">
        <?php

        $display = 21;

        $q = "SELECT name, unit_price, image_1 FROM products ORDER BY name";
        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error " . mysqli_error($dbc));

        while ($product = mysqli_fetch_array($r, MYSQLI_ASSOC)) {

            if (empty($product['image_1'])) {
                $product_image = '/FilmIndustry/eCommerce/img/unavailable-image.jpg';
            } else {
                $product_image = "/FilmIndustry/uploads/products/{$product['image_1']}";
            }

            echo '<div class="container-product"><div class="product-image"><img src="' . $product_image . '" alt="#"></div><div class="product-name">' . $product['name'] . '</div><div class="product-price">$' . $product['unit_price'] . '</div></div>';
        }

        ?>
    </div>
</div>
<?php include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/footer.html'); ?>