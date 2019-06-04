<?php

# index.php (Directors page).
# Created February 10, 2019.
# PHP with SQL created June 4, 2019.
# Created by Elias Gutierrez.

// *************************************** //
// ************ DOCUMENTATION ************ //

/*

*/

// ************ DOCUMENTATION ************ //
// *************************************** //

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/header.html');

$page_title = 'Directors';

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/header.html');

require(MYSQL);

$display = 15;

$sort = (isset($_GET['sort'])) ? $_GET['sort'] : 'all';

switch ($sort) {
    case 'f':
        $where = "WHERE gender='F'";
        break;
    case 'm':
        $where = "WHERE gender='M'";
        break;
    default:
        $where = '';
        $sort = 'all';
        break;
}

if (isset($_GET['p']) && is_numeric($_GET['p'])) {
    $pages = $_GET['p'];
} else {
    $q = "SELECT COUNT(id) FROM directors $where";
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

$q = "SELECT first_name, middle_name, last_name, img FROM directors $where ORDER BY last_name LIMIT $start, $display";
$r = mysqli_query($dbc, $q);

echo '<div class="container-fluid">
<nav class="breadcrumb t-uppercase" role="navigation" aria-label="breadcrumbs">
    <li><a href="' . BASE_URL . 'index.php">Home</a></li>
    <li><a href="' . BASE_URL . 'directors/index.php">' . $page_title . '</a></li>
</nav>
<div class="row">
    <div class="col-2">
        <p><b>Gender</b></p>
        <p><a href="index.php?sort=f">Female</a></p>
        <p><a href="index.php?sort=m">Male</a></p>
    </div>
    <div class="col-8 inline" id="blurayFilmCollection">
        <div class="row grid grid--view-items">';
        
echo '</div></div>
<div class="col-2"></div>
</div></div>';

?>

<div class="container-fluid">
    <nav class="breadcrumb t-uppercase" role="navigation" aria-label="breadcrumbs">
        <li><a href="/FilmIndustry/eCommerce/index.php">Home</a></li>
        <li>Directors</li>
    </nav>
    <div class="row">
        <div class="col-2"></div>
        <!-- For this next one, later change the 'id' to reflect the page's content -->
        <div class="col-8 inline" id="blurayFilmCollection">
            <div class="row grid grid--view-items">
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-1" src="/FilmIndustry/eCommerce/img/directors/akirakurosawa_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Akira Kurosawa</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-2" src="/FilmIndustry/eCommerce/img/directors/alfredhitchcock_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Alfred Hitchcock</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-3" src="/FilmIndustry/eCommerce/img/directors/chrisnolan_Cover.jpeg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Christopher Nolan</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-4" src="/FilmIndustry/eCommerce/img/directors/davidfincher_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">David Fincher</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-5" src="/FilmIndustry/eCommerce/img/directors/davidlynch_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">David Lynch</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-6" src="/FilmIndustry/eCommerce/img/directors/franciscoppola_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Francis Ford Coppola</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-7" src="/FilmIndustry/eCommerce/img/directors/jamescameron_Cover.jpg" alt="4"></a>
                        <a href="#"><div class="h4 grid-view-item_title">James Cameron</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-8" src="/FilmIndustry/eCommerce/img/directors/kathrynbigelow_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Kathryn Bigelow</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-9" src="/FilmIndustry/eCommerce/img/directors/martinscorsese_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Martin Scorsese</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-10" src="/FilmIndustry/eCommerce/img/directors/pta_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Paul Thomas Anderson</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-11" src="/FilmIndustry/eCommerce/img/directors/quentintarantino_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Quentin Tarantino</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-12" src="/FilmIndustry/eCommerce/img/directors/romanpolanski_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Roman Polanski</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-13" src="/FilmIndustry/eCommerce/img/directors/stanleykubrick_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Stanley Kubrick</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-14" src="/FilmIndustry/eCommerce/img/directors/stevenspielberg_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Steven Spielberg</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-15" src="/FilmIndustry/eCommerce/img/directors/wesanderson_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Wes Anderson</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-16" src="/FilmIndustry/eCommerce/img/directors/woodyallen_Cover.jpeg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Woody Allen</div></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-2"></div>
    </div>
</div>
<?php include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/footer.html') ?>