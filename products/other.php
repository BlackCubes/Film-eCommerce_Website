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

if (isset($_GET['department'], $_GET['format'], $_GET['type']) && preg_match('/((\bMovies\b)|(\bTV\b))(?!;)/', $_GET['department']) /*&& preg_match('/((\b\b))(?!;)/', $_GET['format'])*/ && preg_match('/((\bgenres\b)|(\bactors\b)|(\bdirectors\b)|(\bwriters\b)|(\bproducers\b)|(\bdps\b)|(\bstudios\b))(?!;)/', $_GET['type'])) {

    require(MYSQL);
?>

<?php

} else {
    $url = BASE_URL . 'index.php';
    ob_end_clean();
    header("Location: $url");
    exit();
}

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/footer.html');

?>