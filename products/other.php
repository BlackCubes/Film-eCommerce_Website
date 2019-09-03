<?php

# other.php (Users pick the extra options in sidebar to view for products).
# Created on September 2, 2019.
# Created by Elias Gutierrez.

// *************************************** //
// ************ DOCUMENTATION ************ //

/*

*/

// ************ DOCUMENTATION ************ //
// *************************************** //

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/config.inc.php');

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/secure.php');

$page_title = 'See All Results';

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/header.html');

if (isset($_GET['department'], $_GET['format'], $_GET['type']) && preg_match('/((\bMovies\b)|(\bTV\b))(?!;)/', $_GET['department']) /*&& preg_match('/((\b\b))(?!;)/', $_GET['format'])*/ && preg_match('/((\bgenre\b)|(\bactor\b)|(\bdirector\b)|(\bwriter\b)|(\bproducer\b)|(\bdp\b)|(\bstudio\b))(?!;)/', $_GET['type'])) {

    require(MYSQL);

    $department = mysqli_real_escape_string($dbc, sanitize_input($_GET['department']));

    $format = mysqli_real_escape_string($dbc, sanitize_input($_GET['format']));

    $table_type = mysqli_real_escape_string($dbc, sanitize_input($_GET['type']) . 's');
    $column_type = mysqli_real_escape_string($dbc, sanitize_input($_GET['type']));

    switch ($column_type) {

        case "genre":

            $q = "SELECT DISTINCT g.genre AS genres FROM genres g JOIN products_genres pg ON g.id=pg.genre_id JOIN products p ON pg.product_id=p.id JOIN departments d ON p.department_id=d.id WHERE d.department='" . $department . "' ORDER BY g.genre";

            $r_genre = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

            $r_artist = $r_studio = FALSE;

            $q = "SELECT COUNT(DISTINCT g.id) FROM genres g JOIN products_genres pg ON g.id=pg.genre_id JOIN products p ON pg.product_id=p.id JOIN departments d ON p.department_id=d.id WHERE d.department='" . $department . "'";
            $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));
            $row = mysqli_fetch_array($r, MYSQLI_NUM);
            $records = $row[0];

            $column_display = 3;

            $row_display = ceil($records/$column_display);

            break;
        
        case "actor":
        default:

            $q = "SELECT DISTINCT a.first_name AS artist_fn, a.middle_name AS artist_mn, a.last_name AS artist_ln FROM `{$table_type}` a JOIN `products_{$table_type}` pa ON a.id=pa.{$column_type}_id JOIN products p ON pa.product_id=p.id JOIN departments d ON p.department_id=d.id WHERE d.department='" . $department . "' ORDER BY artist_ln";

            $r_artist = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

            $r_genre = $r_studio = FALSE;

            $q = "SELECT COUNT(DISTINCT a.id) FROM `{$table_type}` a JOIN `products_{$table_type}` pa ON a.id=pa.{$column_type}_id JOIN products p ON pa.product_id=p.id JOIN departments d ON p.department_id=d.id WHERE d.department='" . $department . "'";
            $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));
            $row = mysqli_fetch_array($r, MYSQLI_NUM);
            $records = $row[0];

            $column_display = 3;

            $row_display = ceil($records/$column_display);

            break;

        case "studio":

            $q = "SELECT DISTINCT s.studio_name AS studio_name FROM `{$table_type}` s JOIN `products_{$table_type}` ps ON s.id=ps.{$column_type}_id JOIN products p ON ps.product_id=p.id JOIN departments d ON p.department_id=d.id WHERE d.department='" . $department . "' ORDER BY studio_name";

            $r_studio = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

            $r_genre = $r_artist = FALSE;

            $q = "SELECT COUNT(DISTINCT s.id) FROM `{$table_type}` s JOIN `products_{$table_type}` ps ON s.id=ps.{$column_type}_id JOIN products p ON ps.product_id=p.id JOIN departments d ON p.department_id=d.id WHERE d.department='" . $department . "'";
            $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));
            $row = mysqli_fetch_array($r, MYSQLI_NUM);
            $records = $row[0];

            $column_display = 3;

            $row_display = ceil($records/$column_display);

            break;

    }
?>
<p>Viewing: <?php if ($column_type == 'dp') { echo 'Cinematographer'; } else { echo ucfirst($column_type); } ?></p>
<?php

    if ($r_genre) {

        $non_duplication = array();

        while ($genre = mysqli_fetch_array($r_genre, MYSQLI_ASSOC)) {

            $non_duplication = $genre['genres'];

            echo $non_duplication;

            echo '<ul>';
            for ($i = 0; $i < $row_display; $i++) {
                echo '<li><a href="#">' . $genre['genres'] . '</a></li>';
            }
            echo '</ul>';

        }

        mysqli_free_result($r_genre);
        mysqli_close($dbc);

        include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/footer.html');

    } elseif ($r_artist) {

        while ($artist = mysqli_fetch_array($r_artist, MYSQLI_ASSOC)) {
?>
<p><?php echo $artist['artist_fn'] . ' ' . $artist['artist_mn'] . ' ' . $artist['artist_ln']; ?></p>
<?php
        }

        mysqli_free_result($r_artist);
        mysqli_close($dbc);

        include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/footer.html');

    } elseif ($r_studio) {

        while ($studio = mysqli_fetch_array($r_studio, MYSQLI_ASSOC)) {
?>
<p><?php echo $studio['studio_name']; ?></p>
<?php
        }

        mysqli_free_result($r_studio);
        mysqli_close($dbc);

        include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/footer.html');

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