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

$page_title = 'Actors';

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/header.html');

require(MYSQL);

$display = 15;

if (isset($_GET['p']) && is_numeric($_GET['p'])) {
    $pages = $_GET['p'];
} else {
    $q = "SELECT COUNT(id) FROM actors";
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

$q = "SELECT first_name, middle_name, last_name, img FROM actors LIMIT $start, $display";
$r = mysqli_query($dbc, $q);

echo '<div class="container-fluid">
<nav class="breadcrumb t-uppercase" role="navigation" aria-label="breadcrumbs">
    <li><a href="' . BASE_URL . 'index.php">Home</a></li>
    <li>' . $page_title . '</li>
</nav>
<div class="row">
    <div class="col-2"></div>
    <div class="col-8 inline" id="actorsCollection">
        <div class="row grid grid--view-items">';

while ($row = mysqli_fetch_array($r, MYSQLI_ASSOC)) {
    echo '<div class="col grid_item">
    <div class="grid-view-item">
        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-1" src="' . BASE_URL . 'img/' . $row['img'] . '" alt="#"></a>
        <a href="#"><div class="h4 grid-view-item_title">' . $row['first_name'] . ' ' . $row['middle_name'] . ' ' . $row['last_name'] . '</div></a>
    </div>
</div>';
}

echo '</div></div>
<div class="col-2"></div>
</div></div>';
mysqli_free_result($r);
mysqli_close($dbc);

if ($pages > 1) {

    echo '<br><p>';
    $current_page = ($start/$display) + 1;

    if ($current_page != 1) {
        echo '<a href="index.php?s=' . ($start - $display) . '&p=' . $pages . '">Previous</a>';
    }

    for ($i = 1; $i <= $pages; $i++) {
        if ($i != $current_page) {
            echo '<a href="index.php?s=' . (($display * ($i - 1))) . '&p=' . $pages . '">' . $i . '</a>';
        } else {
            echo $i . ' ';
        }
    }

    if ($current_page != $pages) {
        echo '<a href="index.php?s=' . ($start + $display) . '&p=' . $pages . '">Next</a>';
    }

    echo '</p>';
}

include($_SERVER['DOCUMENT_ROOT'].'FilmIndustry/eCommerce/includes/footer.html');
?>