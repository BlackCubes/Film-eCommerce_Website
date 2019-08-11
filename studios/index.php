<?php

# index.php (Studios page).
# Created February 19, 2018
# PHP with MySQL created June 11, 2019.
# Created by Elias Gutierrez.

// *************************************** //
// ************ DOCUMENTATION ************ //

/*

*/

// ************ DOCUMENTATION ************ //
// *************************************** //

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/config.inc.php');

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/secure.php');

$page_title = 'Studios';

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/header.html');

require(MYSQL);

$display = 21;

if (isset($_GET['p']) && is_numeric($_GET['p'])) {
    $pages = $_GET['p'];
} else {
    $q = "SELECT COUNT(DISTINCT ps.studio_id) FROM products_studios AS ps JOIN studios AS s ON ps.studio_id=s.id";
    $r = mysqli_query($dbc, $q);
    $row = mysqli_fetch_array($r, MYSQLI_NUM);
    $records = $row[0];
    if ($records > $display) {
        $pages = ceil($records/$display);
    } else {
        $pages = 1;
    }
}

if (isset($_GET['s']) && is_numeric($_GET['s'])) {
    $start = $_GET['s'];
} else {
    $start = 0;
}

echo '<div class="container" id="templateStudios">
<div class="sidebar-a">
    <div class="results">
        <p><b>Organize On Gender Amount</b></p>
        <p>Female</p>
        <p>Male</p>
    </div>
</div>';

$q = "SELECT DISTINCT s.id AS studio_id, s.studio_name AS studio_name, s.img AS studio_img FROM studios AS s JOIN products_studios AS ps ON s.id=ps.studio_id JOIN products AS p ON ps.product_id=p.id ORDER BY s.studio_name LIMIT $start, $display";
$r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error " . mysqli_close($dbc));

echo '<div class="main-studios">';

while ($studio = mysqli_fetch_array($r, MYSQLI_ASSOC)) {

    $studio_id_encrypt = urlencode(my_encrypt($studio['studio_id'], KEY));

    echo '<div class="container-studio"><div class="studio-image"><a href="/FilmIndustry/eCommerce/studios/profile/index.php?role=studio&company=' . $studio_id_encrypt . '"><img src="/FilmIndustry/eCommerce/img/' . $studio['studio_img'] . '"></a></div></div>';

}

echo '</div>';

mysqli_free_result($r);
mysqli_close($dbc);

if ($pages > 1) {

    echo '<div class="pagination">';
    $current_page = ($start/$display) + 1;

    if ($current_page != 1) {
        echo '<a href="/FilmIndustry/eCommerce/studios/index.php?s=0&p=' . $pages . '"><i class="fas fa-caret-left"></i><i class="fas fa-caret-left"></i></a><a href="/FilmIndustry/eCommerce/studios/index.php?s=' . ($start - $display) . '&p=' . $pages . '"><i class="fas fa-caret-left"></i></a>';
    }

    for ($i = 1; $i <= $pages; $i++) {
        if ($i != $current_page) {
            echo '<a href="/FilmIndustry/eCommerce/studios/index.php?s=' . (($display * ($i - 1))) . '&p=' . $pages . '">' . $i . '</a>';
        } else {
            echo '<a class="active">' . $i . '</a>';
        }
    }

    if ($current_page != $pages) {
        echo '<a href="/FilmIndustry/eCommerce/studios/index.php?s=' . ($start + $display) . '&p=' . $pages . '"><i class="fas fa-caret-right"></i></a><a href="/FilmIndustry/eCommerce/studios/index.php?s=' . (($display * ($pages - 1))) . '&p=' . $pages . '"><i class="fas fa-caret-right"></i><i class="fas fa-caret-right"></i></a>';
    }

    echo '</div>';

}

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/footer.html');
?>