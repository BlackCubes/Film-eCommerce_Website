<?php

# index.php (Display Products Once Clicked).
# Created on August 4, 2019.
# Created by Elias Gutierrez.

// *************************************** //
// ************ DOCUMENTATION ************ //

/*

*/

// ************ DOCUMENTATION ************ //
// *************************************** //

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/config.inc.php');

$page_title = 'Test';

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/header.html');

function validate_url($url) {
    $path = parse_url($url, PHP_URL_PATH);
    $encoded_path = array_map('urlencode', explode('/', $path));
    $url = str_replace($path, implode('/', $encoded_path), $url);

    return filter_var($url, FILTER_VALIDATE_URL) ? true : false;
}

if (isset($_GET['isd'], $_GET['department'], $_GET['format']) && validate_url('http://localhost/FilmIndustry/eCommerce/products/index.php?isd=' . $_GET['isd'] . '&department=' . $_GET['department'] . '&format=' . $_GET['format']) && ($GET['department'] = ('Movies' || 'TV')) && ($_GET['format'] = ('4K UHD' || 'Blu-ray' || 'DVD'))) {

} else {

    $url = BASE_URL . 'index.php';

    ob_end_clean();
    header("Location: $url");
    exit();

}

?>

<?php include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/footer.html'); ?>