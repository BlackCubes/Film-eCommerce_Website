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

    $table_type = mysqli_real_escape_string($dbc, sanitize_input($_GET['type']));

    switch ($table_type) {

        case "genres":

            $q = "SELECT DISTINCT g.genre AS genres FROM genres g JOIN products_genres pg ON g.id=pg.genre_id JOIN products p ON pg.product_id=p.id JOIN departments d ON p.department_id=d.id WHERE d.department='" . $department . "'";

            $r_genre = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

            break;
        
        case "actors":
        default:

            $q = "SELECT ";

            break;

        case "studios":

            break;

    }
?>

<?php

    mysqli_free_result($r);
    mysqli_close($dbc);

    include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/footer.html');

} else {
    $url = BASE_URL . 'index.php';
    ob_end_clean();
    header("Location: $url");
    exit();
}
?>