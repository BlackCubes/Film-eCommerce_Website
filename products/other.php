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

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/breadcrumb.php');

if (isset($_GET['department'], $_GET['format'], $_GET['type']) && preg_match('/((\bMovies\b)|(\bTV\b))(?!;)/', $_GET['department']) && preg_match('/((\bBlu-Ray\b)|(\b4K-UHD\b)|(\bDVD\b)|(\ball\b))(?!;)/', $_GET['format']) && preg_match('/((\bgenre\b)|(\bactor\b)|(\bdirector\b)|(\bwriter\b)|(\bproducer\b)|(\bdp\b)|(\bstudio\b))(?!;)/', $_GET['type'])) {

    require(MYSQL);

    $department = mysqli_real_escape_string($dbc, sanitize_input($_GET['department']));

    if (sanitize_input($_GET['format']) == 'all') {

        $format_join = $format_where = $format = '';
        $format_to_url = sanitize_input($_GET['format']);

    } else {

        $format_join = "JOIN formats f ON p.format_id=f.id";

        $format = mysqli_real_escape_string($dbc, sanitize_input($_GET['format']));

        $format_where = "AND f.format='{$format}'";

        $format_to_url = sanitize_input($_GET['format']);
    }

    $table_type = mysqli_real_escape_string($dbc, sanitize_input($_GET['type']) . 's');
    $column_type = mysqli_real_escape_string($dbc, sanitize_input($_GET['type']));

    switch ($column_type) {

        case "genre":

            $q = "SELECT DISTINCT g.id AS genre_id, g.genre AS genres FROM genres g JOIN products_genres pg ON g.id=pg.genre_id JOIN products p ON pg.product_id=p.id JOIN departments d ON p.department_id=d.id " . $format_join . " WHERE d.department='" . $department . "' " . $format_where . $format . " ORDER BY g.genre";

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

            $q = "SELECT DISTINCT a.id AS artist_id, a.first_name AS artist_fn, a.middle_name AS artist_mn, a.last_name AS artist_ln FROM `{$table_type}` a JOIN `products_{$table_type}` pa ON a.id=pa.{$column_type}_id JOIN products p ON pa.product_id=p.id JOIN departments d ON p.department_id=d.id WHERE d.department='" . $department . "' ORDER BY artist_ln";

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

            $q = "SELECT DISTINCT s.id AS studio_id, s.studio_name AS studio_name FROM `{$table_type}` s JOIN `products_{$table_type}` ps ON s.id=ps.{$column_type}_id JOIN products p ON ps.product_id=p.id JOIN departments d ON p.department_id=d.id WHERE d.department='" . $department . "' ORDER BY studio_name";

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

    $breadcrumb = new breadcrumb();

    if ($department === 'Movies') {
        $department_domain_name = 'FILMS';
    } elseif ($department === 'TV') {
        $department_domain_name = 'TV';
    }

    if ($table_type === 'dps') {
        $title_name = 'Cinematographers';
    } else {
        $title_name = $table_type;
    }

?>
<div class="container--option-view">
    <div class="breadcrumb">
        <?php echo $breadcrumb->build(array(ucfirst(strtolower($department_domain_name)) => strtolower($department_domain_name) . '/index.php', ucfirst($title_name) => '')); ?>
    </div>
    <div class="main-info--option-view">
        <div class="option-title-letters--option-view">
            <div class="option-header-center--option-view">
                <span class="option-title--option-view">Viewing:</span>
                <span class="option-name-type--option-view"><?php if ($column_type == 'dp') { echo 'Cinematographer'; } else { echo ucfirst($column_type); } ?></span>
                <span class="option-letters--option-view">#</span>
                <?php foreach (range('A', 'Z') as $letters) { echo '<span class="option-letters--option-view">' . $letters . '</span>'; } ?>
            </div>
        </div>
        <div class="option-lists--option-view">
<?php

    if ($r_genre) {

        $result_list = $column_values_1 = $column_values_2 = $column_values_3 = $genres = array();

        while ($genre = mysqli_fetch_array($r_genre, MYSQLI_ASSOC)) {

            $genre_id_encrypt = urlencode(my_encrypt($genre['genre_id'], KEY));

            $genres[] = '<li><a title="' . $genre['genres'] . '" href="/FilmIndustry/eCommerce/' . strtolower($department_domain_name) . '/index.php?format=' . $_GET['format'] . '&type=' . $column_type . '&name=' . $genre_id_encrypt . '">' . $genre['genres'] . '</a></li>';
        }

        for ($j = 0; $j < $row_display; $j++) {
            $column_values_1[$j] = $genres[$j];
        }
        for ($j = $row_display; $j < 2*$row_display; $j++) {
            $column_values_2[$j] = $genres[$j];
        }
        for ($j = 2*$row_display; $j < $records; $j++) {
            $column_values_3[$j] = $genres[$j];
        }

        $result_list = array(0 => $column_values_1, 1 => array_values($column_values_2), 2 => array_values($column_values_3));

        /*print_r($result_list);*/

        for ($i = 0; $i < $column_display; $i++) {
            echo '<ul>';
            for ($j = 0; $j < count($result_list[$i]); $j++) {
                echo $result_list[$i][$j];
            }
            echo '</ul>';
        }

        /*echo '<ul>';
        for ($i = 0; $i < $row_display; $i++) {
            echo '<li><a href="#">' . $genre['genres'] . '</a></li>';
        }
        echo '</ul>';*/

        echo '</div><div class="option-title-letters--option-view">
        <div class="option-header-center--option-view"><span class="option-title--option-view">Viewing:</span><span class="option-name-type--option-view">';

        if ($column_type == 'dp') {
            echo 'Cinematographer';
        } else {
            echo ucfirst($column_type);
        }
        
        echo '</span><span class="option-letters--option-view">#</span>';
        
        foreach (range('A', 'Z') as $letters) {
            echo '<span class="option-letters--option-view">' . $letters . '</span>';
        }
        
        echo '</div></div></div></div>';

        mysqli_free_result($r_genre);
        mysqli_close($dbc);

        include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/footer.html');

    } elseif ($r_artist) {

        $result_list = $column_values_1 = $column_values_2 = $column_values_3 = $artists = array();

        while ($artist = mysqli_fetch_array($r_artist, MYSQLI_ASSOC)) {

            $artist_id_encrypt = urlencode(my_encrypt($artist['artist_id'], KEY));

            if (empty($artist['artist_mn'])) {
                $artists[] = '<li><a title="' . $artist['artist_fn'] . ' ' . $artist['artist_ln'] . '" href="/FilmIndustry/eCommerce/' . strtolower($department_domain_name) . '/index.php?type=' . $column_type . '&name=' . $artist_id_encrypt . '">' . $artist['artist_fn'] . ' ' . $artist['artist_ln'] . '</a></li>';
            } else {
                $artists[] = '<li><a title="' . $artist['artist_fn'] . ' ' . $artist['artist_mn'] . ' ' . $artist['artist_ln'] . '" href="/FilmIndustry/eCommerce/' . strtolower($department_domain_name) . '/index.php?type=' . $column_type . '&name=' . $artist_id_encrypt . '">' . $artist['artist_fn'] . ' ' . $artist['artist_mn'] . ' ' . $artist['artist_ln'] . '</a></li>';
            }

        }

        for ($j = 0; $j < $row_display; $j++) {
            $column_values_1[$j] = $artists[$j];
        }
        for ($j = $row_display; $j < 2*$row_display; $j++) {
            $column_values_2[$j] = $artists[$j];
        }
        for ($j = 2*$row_display; $j < $records; $j++) {
            $column_values_3[$j] = $artists[$j];
        }

        $result_list = array(0 => $column_values_1, 1 => array_values($column_values_2), 2 => array_values($column_values_3));

        /*print_r($result_list);*/

        for ($i = 0; $i < $column_display; $i++) {
            echo '<ul>';
            for ($j = 0; $j < count($result_list[$i]); $j++) {
                echo $result_list[$i][$j];
            }
            echo '</ul>';
        }

        echo '</div><div class="option-title-letters--option-view">
        <div class="option-header-center--option-view"><span class="option-title--option-view">Viewing:</span><span class="option-name-type--option-view">';

        if ($column_type == 'dp') {
            echo 'Cinematographer';
        } else {
            echo ucfirst($column_type);
        }
        
        echo '</span><span class="option-letters--option-view">#</span>';
        
        foreach (range('A', 'Z') as $letters) {
            echo '<span class="option-letters--option-view">' . $letters . '</span>';
        }
        
        echo '</div></div></div></div>';

        mysqli_free_result($r_artist);
        mysqli_close($dbc);

        include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/footer.html');

    } elseif ($r_studio) {

        $result_list = $column_values_1 = $column_values_2 = $column_values_3 = $studios = array();

        while ($studio = mysqli_fetch_array($r_studio, MYSQLI_ASSOC)) {

            $studio_id_encrypt = urlencode(my_encrypt($studio['studio_id'], KEY));

            $studios[] = '<li><a title="' . $studio['studio_name'] . '" href="/FilmIndustry/eCommerce/' . strtolower($department_domain_name) . '/index.php?type=' . $column_type . '&name=' . $studio_id_encrypt . '">' . $studio['studio_name'] . '</a></li>';

        }

        for ($j = 0; $j < $row_display; $j++) {
            $column_values_1[$j] = $studios[$j];
        }
        for ($j = $row_display; $j < 2*$row_display; $j++) {
            $column_values_2[$j] = $studios[$j];
        }
        for ($j = 2*$row_display; $j < $records; $j++) {
            $column_values_3[$j] = $studios[$j];
        }

        $result_list = array(0 => $column_values_1, 1 => array_values($column_values_2), 2 => array_values($column_values_3));

        /*print_r($result_list);*/

        for ($i = 0; $i < $column_display; $i++) {
            echo '<ul>';
            for ($j = 0; $j < count($result_list[$i]); $j++) {
                echo $result_list[$i][$j];
            }
            echo '</ul>';
        }

        echo '</div><div class="option-title-letters--option-view">
        <div class="option-header-center--option-view"><span class="option-title--option-view">Viewing:</span><span class="option-name-type--option-view">';

        if ($column_type == 'dp') {
            echo 'Cinematographer';
        } else {
            echo ucfirst($column_type);
        }
        
        echo '</span><span class="option-letters--option-view">#</span>';
        
        foreach (range('A', 'Z') as $letters) {
            echo '<span class="option-letters--option-view">' . $letters . '</span>';
        }
        
        echo '</div></div></div></div>';

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