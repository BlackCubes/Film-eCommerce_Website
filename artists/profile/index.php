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

$page_title = 'Artist Profile Test';

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/secure.php');

if (isset($_GET['artist'], $_GET['role']) && preg_match('/((\bactors\b)|(\bdirectors\b)|(\bproducers\b)|(\bdps\b)|(\bwriters\b))(?!;)/', $_GET['role'])) {

    $id_decrypt = urldecode(my_decrypt($_GET['artist'], KEY));

    $role = $_GET['role'];

    if (is_numeric($id_decrypt) && preg_match('/^[1-9]{1}([0-9]{1,10})?$/', $id_decrypt)) {

        require(MYSQL);

        $id = $id_decrypt;

        $q = "SELECT id FROM `{$role}` WHERE id={$id}";
        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));
        $selected_id = mysqli_fetch_array($r, MYSQLI_ASSOC);

        if ((mysqli_num_rows($r) == 1) && ($selected_id === $id)) {

            $q_artist = "SELECT first_name AS artist_fn, middle_name AS artist_mn, last_name AS artist_ln, about AS artist_bio, img AS artist_img FROM `{$role}` WHERE id={$id}";
            $r_artist = mysqli_query($dbc, $q_artist) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));
            $artist = mysqli_fetch_array($r_artist, MYSQLI_ASSOC);

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