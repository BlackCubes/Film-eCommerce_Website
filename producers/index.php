<?php

# index.php (Producers page).
# Created February 15, 2019.
# PHP with SQL created June 2, 2019.
# Created by Elias Gutierrez.

// *************************************** //
// ************ DOCUMENTATION ************ //

/*

*/

// ************ DOCUMENTATION ************ //
// *************************************** //

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/config.inc.php');

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/secure.php');

$page_title = 'Producers';

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/header.html');

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/breadcrumb.php');

require(MYSQL);

$display = 21;

$sort = (isset($_GET['sort'])) ? $_GET['sort']: 'all';

switch ($sort) {
    case 'f':
        $where = "WHERE pro.gender='F'";
        break;
    case 'm':
        $where = "WHERE pro.gender='M'";
        break;
    default:
        $where = '';
        $sort = 'all';
        break;
}

if (isset($_GET['p']) && is_numeric($_GET['p'])) {
    $pages = $_GET['p'];
} else {
    $q = "SELECT COUNT(DISTINCT ppro.producer_id) FROM products_producers AS ppro JOIN producers AS pro ON ppro.producer_id=pro.id $where";
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

$breadcrumb = new breadcrumb();

echo '<div class="container" id="templateArtists">
<div class="breadcrumb">' . $breadcrumb->build(array('Producers' => 'producers/index.php')) . '</div>
<div class="sidebar-a">
    <div class="results">
        <p><b>Gender</b></p>
        <p><a href="/FilmIndustry/eCommerce/producers/index.php?sort=f">Female</a></p>
        <p><a href="/FilmIndustry/eCommerce/producers/index.php?sort=m">Male</a></p>
    </div>
</div>';

$q = "SELECT DISTINCT pro.id AS id, pro.first_name AS first_name, pro.middle_name AS middle_name, pro.last_name AS last_name, pro.img AS img FROM producers AS pro JOIN products_producers AS ppro ON pro.id=ppro.producer_id JOIN products AS p ON ppro.product_id=p.id $where ORDER BY pro.last_name LIMIT $start, $display";
$r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

echo '<div class="main-artists">';

while ($producer = mysqli_fetch_array($r, MYSQLI_ASSOC)) {

    $producer_id_encrypt = urlencode(my_encrypt($producer['id'], KEY));

    echo '<div class="container-artist"><div class="artist-image"><a href="/FilmIndustry/eCommerce/artists/profile/index.php?role=producer&artist=' . $producer_id_encrypt . '"><img src="/FilmIndustry/eCommerce/img/' . $producer['img'] . '" alt="#"></a></div><div class="artist-name">' . $producer['first_name'] . ' ' . $producer['middle_name'] . ' ' . $producer['last_name'] . '</div></div>';
}

echo '</div>';

mysqli_free_result($r);
mysqli_close($dbc);

if ($pages > 1) {

    echo '<div class="pagination">';
    $current_page = ($start/$display) + 1;

    if ($current_page != 1) {
        echo '<a href="/FilmIndustry/eCommerce/actors/index.php?s=0&p=' . $pages . '&sort=' . $sort . '"><i class="fas fa-caret-left"></i><i class="fas fa-caret-left"></i></a><a href="/FilmIndustry/eCommerce/producers/index.php?s=' . ($start - $display) . '&p=' . $pages . '&sort=' . $sort . '"><i class="fas fa-caret-left"></i></a>';
    }

    for ($i = 1; $i <= $pages; $i++) {
        if ($i != $current_page) {
            echo '<a href="/FilmIndustry/eCommerce/producers/index.php?s=' . (($display * ($i - 1))) . '&p=' . $pages . '&sort=' . $sort . '">' . $i . '</a>';
        } else {
            echo '<a class="active">' . $i . '</a>';
        }
    }

    if ($current_page != $pages) {
        echo '<a href="/FilmIndustry/eCommerce/producers/index.php?s=' . ($start + $display) .'&p=' . $pages . '&sort=' . $sort .'"><i class="fas fa-caret-right"></i></a><a href="/FilmIndustry/eCommerce/actors/index.php?s=' . (($display * ($pages - 1))) . '&p=' . $pages . '&sort=' . $sort . '"><i class="fas fa-caret-right"></i><i class="fas fa-caret-right"></i></a>';
    }

    echo '</div>';

}

echo '</div>';

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/footer.html');
?>