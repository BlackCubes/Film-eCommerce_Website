<?php

# index.php (Cinematographers page).
# Created February 13, 2019.
# PHP with SQL created June 4, 2019.
# Created by Elias Gutierrez.

// *************************************** //
// ************ DOCUMENTATION ************ //

/*

*/

// ************ DOCUMENTATION ************ //
// *************************************** //

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/config.inc.php');

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/secure.php');

$page_title = 'Cinematographers';

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/header.html');

require(MYSQL);

$display = 21;

$sort = (isset($_GET['sort'])) ? $_GET['sort'] : 'all';

switch ($sort) {
    case 'f':
        $where = "WHERE dp.gender='F'";
        break;
    case 'm':
        $where = "WHERE dp.gender='M'";
        break;
    default:
        $where = '';
        $sort = 'all';
        break;
}

if (isset($_GET['p']) && is_numeric($_GET['p'])) {
    $pages = $_GET['p'];
} else {
    $q = "SELECT COUNT(DISTINCT pdp.dp_id) FROM products_dps AS pdp JOIN dps AS dp ON pdp.dp_id=dp.id $where";
    $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error " . mysqli_error($dbc));
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

echo '<div class="container" id="templateArtists">
<div class="sidebar-a">
    <div class="results">
        <p><b>Gender</b></p>
        <p><a href="/FilmIndustry/eCommerce/dp/index.php?sort=f">Female</a></p>
        <p><a href="/FilmIndustry/eCommerce/dp/index.php?sort=m">Male</a></p>
    </div>
</div>';

$q = "SELECT DISTINCT dp.id AS id, dp.first_name AS first_name, dp.middle_name AS middle_name, dp.last_name AS last_name, dp.img AS img FROM dps AS dp JOIN products_dps AS pdp ON dp.id=pdp.dp_id JOIN products AS p ON pdp.product_id=p.id $where ORDER BY last_name LIMIT $start, $display";
$r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error " . mysqli_error($dbc));

echo '<div class="main-artists">';

while ($dp = mysqli_fetch_array($r, MYSQLI_ASSOC)) {

    $dp_id_encrypt = urlencode(my_encrypt($dp['id'], KEY));

    echo '<div class="container-artist"><div class="artist-image"><img src="/FilmIndustry/eCommerce/img/' . $dp['img'] . '" alt="#"></div><div class="artist-name">' . $dp['first_name'] . ' ' . $dp['middle_name'] . ' ' . $dp['last_name'] . '</div></div>';
}

echo '</div>';

mysqli_free_result($r);
mysqli_close($dbc);

if ($pages > 1) {

    echo '<div class="pagination">';
    $current_page = ($start/$display) + 1;

    if ($current_page != 1) {
        echo '<a href="/FilmIndustry/eCommerce/actors/index.php?s=0&p=' . $pages . '&sort=' . $sort . '"><i class="fas fa-caret-left"></i><i class="fas fa-caret-left"></i></a><a href="/FilmIndustry/eCommerce/dp/index.php?s=' . ($start - $display) . '&p=' . $pages . '&sort=' . $sort . '"><i class="fas fa-caret-left"></i></a>';
    }

    for ($i = 1; $i <= $pages; $i++) {
        if ($i != $current_page) {
            echo '<a href="/FilmIndustry/eCommerce/dp/index.php?s=' . (($display * ($i - 1))) . '&p=' . $pages . '&sort=' . $sort . '">' . $i . '</a>';
        } else {
            echo '<a class="active">' . $i . '</a>';
        }
    }

    if ($current_page != $pages) {
        echo '<a href="/FilmIndustry/eCommerce/dp/index.php?s=' . ($start + $display) . '&p=' . $pages . '&sort=' . $sort . '"><i class="fas fa-caret-right"></i></a><a href="/FilmIndustry/eCommerce/actors/index.php?s=' . (($display * ($pages - 1))) . '&p=' . $pages . '&sort=' . $sort . '"><i class="fas fa-caret-right"></i><i class="fas fa-caret-right"></i></a>';
    }

    echo '</div>';

}

echo '</div>';

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/footer.html');
?>