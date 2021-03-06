<?php

# index.php (Actors' page).
# Created February 16, 2019.
# PHP with SQL created May 25, 2019.
# Created by Elias Gutierrez.

// *************************************** //
// ************ DOCUMENTATION ************ //

/*

*/

// ************ DOCUMENTATION ************ //
// *************************************** //

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/config.inc.php');

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/secure.php');

$page_title = 'Actors';

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/header.html');

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/breadcrumb.php');

require(MYSQL);

$display = 18;

$sort = (isset($_GET['sort'])) ? $_GET['sort'] : 'all';

switch ($sort) {
    case 'f':
        $where = "WHERE a.gender='F'";
        break;
    case 'm':
        $where = "WHERE a.gender='M'";
        break;
    default:
        $where = '';
        $sort = 'all';
        break;
}

if (isset($_GET['p']) && is_numeric($_GET['p'])) {
    $pages = $_GET['p'];
} else {
    $q = "SELECT COUNT(DISTINCT pa.actor_id) FROM products_actors AS pa JOIN actors AS a ON pa.actor_id=a.id $where";
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
<div class="breadcrumb">' . $breadcrumb->build(array('Actors' => 'actors/index.php')) . '</div>
<div class="sidebar-a">
    <div class="results">
        <p><b>Gender</b></p>
        <p><a href="/FilmIndustry/eCommerce/actors/index.php?sort=f">Female</a></p>
        <p><a href="/FilmIndustry/eCommerce/actors/index.php?sort=m">Male</a></p>
    </div>
</div>
<div class="page-title">
    <h1>Actors</h1>
</div>';

$q = "SELECT DISTINCT a.id AS id, a.first_name AS first_name, a.middle_name AS middle_name, a.last_name AS last_name, a.img AS img FROM actors AS a JOIN products_actors AS pa ON a.id=pa.actor_id JOIN products AS p ON pa.product_id=p.id $where ORDER BY a.last_name LIMIT $start, $display";
$r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error " . mysqli_close($dbc));

echo'<div class="main-artists">';

while ($actor = mysqli_fetch_array($r, MYSQLI_ASSOC)) {

    $actor_id_encrypt = urlencode(my_encrypt($actor['id'], KEY));

    echo '<div class="container-artist"><div class="artist-image"><a href="/FilmIndustry/eCommerce/artists/profile/index.php?role=actor&artist=' . $actor_id_encrypt . '"><img src="/FilmIndustry/eCommerce/img/' . $actor['img'] . '" alt="#"></a></div><div class="artist-name">' . $actor['first_name'] . ' ' . $actor['middle_name'] . ' ' . $actor['last_name'] . '</div></div>';

}

echo '</div>';

mysqli_free_result($r);
mysqli_close($dbc);

if ($pages > 1) {

    echo '<div class="pagination">';
    $current_page = ($start/$display) + 1;

    if ($current_page != 1) {
        echo '<a href="/FilmIndustry/eCommerce/actors/index.php?s=0&p=' . $pages . '&sort=' . $sort . '"><i class="fas fa-caret-left"></i><i class="fas fa-caret-left"></i></a><a href="/FilmIndustry/eCommerce/actors/index.php?s=' . ($start - $display) . '&p=' . $pages . '&sort=' . $sort . '"><i class="fas fa-caret-left"></i></a>';
    }

    for ($i = 1; $i <= $pages; $i++) {
        if ($i != $current_page) {
            echo '<a href="/FilmIndustry/eCommerce/actors/index.php?s=' . (($display * ($i - 1))) . '&p=' . $pages . '&sort=' . $sort . '">' . $i . '</a>';
        } else {
            echo '<a class="active">' . $i . '</a>';
        }
    }

    if ($current_page != $pages) {
        echo '<a href="/FilmIndustry/eCommerce/actors/index.php?s=' . ($start + $display) .'&p=' . $pages . '&sort=' . $sort .'"><i class="fas fa-caret-right"></i></a><a href="/FilmIndustry/eCommerce/actors/index.php?s=' . (($display * ($pages - 1))) . '&p=' . $pages . '&sort=' . $sort . '"><i class="fas fa-caret-right"></i><i class="fas fa-caret-right"></i></a>';
    }

    echo '</div>';

}

echo '</div>';

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/footer.html');
?>