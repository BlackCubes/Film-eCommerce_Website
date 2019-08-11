<?php

# index.php (Display Artists once clicked).
# Created on August 9, 2019.
# Created by Elias Gutierrez.

// *************************************** //
// ************ DOCUMENTATION ************ //

/*

*/

// ************ DOCUMENTATION ************ //
// *************************************** //

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/config.inc.php');

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/secure.php');

if (isset($_GET['artist'], $_GET['role']) && preg_match('/((\bactor\b)|(\bdirector\b)|(\bproducer\b)|(\bdp\b)|(\bwriter\b))(?!;)/', $_GET['role'])) {

    $id_decrypt = urldecode(my_decrypt($_GET['artist'], KEY));

    if (is_numeric($id_decrypt) && preg_match('/^[1-9]{1}([0-9]{1,10})?$/', $id_decrypt)) {

        require(MYSQL);

        $role_column = mysqli_real_escape_string($dbc, $_GET['role']);
        $role_table = mysqli_real_escape_string($dbc, $_GET['role'] . 's');

        $id = $id_decrypt;

        $q = "SELECT id FROM `{$role_table}` WHERE id={$id}";
        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));
        $selected_id = mysqli_fetch_array($r, MYSQLI_ASSOC);

        if ((mysqli_num_rows($r) == 1) && ($selected_id['id'] === $id)) {

            $q_artist = "SELECT first_name AS artist_fn, middle_name AS artist_mn, last_name AS artist_ln, about AS artist_bio, img AS artist_img FROM `{$role_table}` WHERE id={$id}";
            $r_artist = mysqli_query($dbc, $q_artist) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));
            $artist = mysqli_fetch_array($r_artist, MYSQLI_ASSOC);

            $q_pa = "SELECT p.name AS product_name, p.image_1 AS product_img, DATE_FORMAT(p.release_date, '%Y') AS product_year FROM products AS p WHERE p.id IN (SELECT product_id FROM `products_{$role_table}` WHERE `{$role_column}_id`={$id})";
            $r_pa = mysqli_query($dbc, $q_pa) or trigger_error("Query: $q_pa\n<br>MySQL Error: " . mysqli_error($dbc));

            $page_title = $artist['artist_fn'] . ' ' . $artist['artist_mn'] . ' ' . $artist['artist_ln'];

            include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/header.html');

            echo '<div class="container--artist-view"><div class="main-info--artist-view"><div class="artist-name--product-view"><h2>' . $artist['artist_fn'] . ' ' . $artist['artist_mn'] . ' ' . $artist['artist_ln'] . '</h2></div><div class="image--artist-view"><img src="/FilmIndustry/eCommerce/img/' . $artist['artist_img'] . '"></div></div><div class="product-artist-info--artist-view"><div class="product-artist-title"><h2>Filmography</h2></div>';

            while ($product_artist = mysqli_fetch_array($r_pa, MYSQLI_ASSOC)) {
                echo '<div class="product-artist-image--artist-info"><img src="/FilmIndustry/uploads/products/' . $product_artist['product_img'] . '"></div>';
            }

            echo '</div></div>';

            mysqli_free_result($r);
            mysqli_close($dbc);

            include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/footer.html');

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

} else {

    $url = BASE_URL . 'index.php';

    ob_end_clean();
    header("Location: $url");
    exit();

}
?>