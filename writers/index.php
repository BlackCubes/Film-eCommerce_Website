<?php

# index.php (Writers page).
# Created February 17, 2019.
# PHP with SQL created June 3, 2019.
# Created by Elias Gutierrez.

// *************************************** //
// ************ DOCUMENTATION ************ //

/*

*/

// ************ DOCUMENTATION ************ //
// *************************************** //

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/config.inc.php');

$page_title = 'Writers';

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
    $q = "SELECT COUNT(id) FROM writers $where";
    $r = mysqli_query($dbc, $q);
    $row = mysqli_fetch_array($r, MYSLI_NUM);
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

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/footer.html');
?>

<div class="container-fluid">
    <nav class="breadcrumb t-uppercase" role="navigation" aria-label="breadcrumbs">
        <li><a href="/FilmIndustry/eCommerce/index.php">Home</a></li>
        <li>Writers</li>
    </nav>
    <div class="row">
        <div class="col-2"></div>
        <div class="col-8 inline" id="writersCollection">
            <div class="row grid grid--view-items">
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-1" src="/FilmIndustry/eCommerce/img/writers/aaron-sorkin_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Aaron Sorkin</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-2" src="/FilmIndustry/eCommerce/img/writers/abi-morgan_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Abi Morgan</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-3" src="/FilmIndustry/eCommerce/img/writers/adam-mckay_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Adam McKay</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-4" src="/FilmIndustry/eCommerce/img/writers/alan-yang_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Alan Yang</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-5" src="/FilmIndustry/eCommerce/img/writers/alejandro-gonzález-iñárritu_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Alejandro González Iñárritu</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-6" src="/FilmIndustry/eCommerce/img/writers/alexander-dinelaris-jr_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Alexander Dinelaris Jr.</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-7" src="/FilmIndustry/eCommerce/img/writers/alexander-payne_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Alexander Payne</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-8" src="/FilmIndustry/eCommerce/img/writers/alex-gansa_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Alex Gansa</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-9" src="/FilmIndustry/eCommerce/img/writers/amy-shermanpalladino_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Amy Sherman-Palladino</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-10" src="/FilmIndustry/eCommerce/img/writers/armando-bó_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Armando Bó</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-11" src="/FilmIndustry/eCommerce/img/writers/armando-iannucci_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Armando Iannucci</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-12" src="/FilmIndustry/eCommerce/img/writers/aziz-ansari_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Aziz Ansari</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-13" src="/FilmIndustry/eCommerce/img/writers/barry-jenkins_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Barry Jenkins</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-14" src="/FilmIndustry/eCommerce/img/writers/bruce-miller_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Bruce Miller</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-15" src="/FilmIndustry/eCommerce/img/writers/charles-randolph_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Charles Randolph</div></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-2"></div>
    </div>
</div>
<?php include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/footer.html') ?>