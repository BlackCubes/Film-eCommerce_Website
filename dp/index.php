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

$page_title = 'Cinematographers';

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
    $q = "SELECT COUNT(id) FROM dp $where";
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

$q = "SELECT first_name, middle_name, last_name, img FROM dp $where ORDER BY last_name LIMIT $start, $display";
$r = mysqli_query($dbc, $q);

echo '<div class="container-fluid">
<nav class="breadcrumb t-uppercase" role="navigation" aria-label="breadcrumbs">
    <li><a href="' . BASE_URL . 'index.php">Home</a></li>
    <li><a href="' BASE_URL . 'dp/index.php">' . $page_title . '</a></li>
</nav>
<div class="row">
    <div class="col-2">
        <p><b>Gender</b></p>
        <p><a href="index.php?sort=f">Female</a></p>
        <p><a href="index.php?sort=m">Male</a></p>
    </div>
    <div class="col-8 inline" id="dpCollection">
        <div class="row grid grid--view-items">';

echo '</div></div>
<div class="col-2"></div>
</div></div>';

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/footer.html');
?>

<div class="container-fluid">
    <nav class="breadcrumb t-uppercase" role="navigation" aria-label="breadcrumbs">
        <li><a href="/FilmIndustry/eCommerce/index.php">Home</a></li>
        <li>DP</li>
    </nav>
    <div class="row">
        <div class="col-2"></div>
        <div class="col-8 inline" id="dpCollection"><!-- Could we somehow change the id name, or do we need it? -->
            <div class="row grid grid--view-items">
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-1" src="/FilmIndustry/eCommerce/img/dp/agnèsgodard_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Agnès Godard</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-2" src="/FilmIndustry/eCommerce/img/dp/alfonsocuarón_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Alfonso Cuarón</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-3" src="/FilmIndustry/eCommerce/img/dp/andrewlesnie_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Andrew Lesnie</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-4" src="/FilmIndustry/eCommerce/img/dp/anthonydodmantle_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Anthony Dodmantle</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-5" src="/FilmIndustry/eCommerce/img/dp/asakazunakai_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="grid-view-item_title">Asakazu Nakai</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-6" src="/FilmIndustry/eCommerce/img/dp/billywilliams_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Billy Williams</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-7" src="/FilmIndustry/eCommerce/img/dp/birgitguðjónsdóttir_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Birgit Guðjónsdóttir</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-8" src="/FilmIndustry/eCommerce/img/dp/bradfordyoung_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Bradford Young</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-9" src="/FilmIndustry/eCommerce/img/dp/brunodelbonnel_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Bruno Delbonnel</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-10" src="/FilmIndustry/eCommerce/img/dp/burnettguffey_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Burnett Guffey</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-11" src="/FilmIndustry/eCommerce/img/dp/charleslang_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Charles Lang</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-12" src="/FilmIndustry/eCommerce/img/dp/charlottebruuschristensen_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Charlotte Bruus Christensen</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-13" src="/FilmIndustry/eCommerce/img/dp/chrismenges_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Chris Menges</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-14" src="/FilmIndustry/eCommerce/img/dp/claudiomiranda_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Claudio Miranda</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-15" src="/FilmIndustry/eCommerce/img/dp/conradhall_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Conrad Hall</div></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-2"></div>
    </div>
</div>
<?php

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/footer.html')

?>