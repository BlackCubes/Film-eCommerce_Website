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

if (isset($_GET['artist'], $_GET['role']) && preg_match('/((\bactors\b)|(\bdirectors\b)|(\bproducers\b)|(\bdps\b)|(\bwriters\b))(?!;)/', $_GET['role'])) {

    $id_decrypt = urldecode(my_decrypt($_GET['artist'], KEY));

    if (is_numeric($id_decrypt) && preg_match('/^[1-9]{1}([0-9]{1,10})?$/', $id_decrypt)) {

        require(MYSQL);

        $role = mysqli_real_escape_string($dbc, $_GET['role']);

        $id = $id_decrypt;

        $q = "SELECT id FROM `{$role}` WHERE id={$id}";
        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));
        $selected_id = mysqli_fetch_array($r, MYSQLI_ASSOC);

        if ((mysqli_num_rows($r) == 1) && ($selected_id['id'] === $id)) {

            $q_artist = "SELECT first_name AS artist_fn, middle_name AS artist_mn, last_name AS artist_ln, about AS artist_bio, img AS artist_img FROM `{$role}` WHERE id={$id}";
            $r_artist = mysqli_query($dbc, $q_artist) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));
            $artist = mysqli_fetch_array($r_artist, MYSQLI_ASSOC);

            $page_title = $artist['artist_fn'] . ' ' . $artist['artist_mn'] . ' ' . $artist['artist_ln'];

            include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/header.html');

            echo '<div class="container--artist-view"><div class="main-info--artist-view"><div class="artist-name--product-view"><h2>' . $artist['artist_fn'] . ' ' . $artist['artist_mn'] . ' ' . $artist['artist_ln'] . '</h2></div><div class="image--artist-view"><img src="/FilmIndustry/eCommerce/img/' . $artist['artist_img'] . '"></div></div><div class="product-artist-info--artist-view"></div></div>';

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