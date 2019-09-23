<?php

# index.php (Users/Customers Shop for TV page).
# Re-created on September 22, 2019.
# Created by Elias Gutierrez.

// *************************************** //
// ************ DOCUMENTATION ************ //

/*

*/

// ************ DOCUMENTATION ************ //
// *************************************** //

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/config.inc.php');

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/secure.php');

$page_title = 'Television';

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/header.html');

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/breadcrumb.php');

require(MYSQL);

$breadcrumb = new breadcrumb();
?>

<div class="container-fluid">
    <nav class="breadcrumb t-uppercase" role="navigation" aria-label="breadcrumbs">
        <li><a href="/FilmIndustry/eCommerce/index.php">Home</a></li>
        <li>TV</li>
    </nav>
    <div class="row">
        <div class="col-2"></div>
        <div class="col-8 inline" id="tvCollection">
            <div class="row grid grid--view-items">
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-1" src="/FilmIndustry/eCommerce/img/tv/bluray/battlestargalactica-CompleteCollection_Bluray.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Battlestar Galactica: The Complete Series Bluray</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-2" src="/FilmIndustry/eCommerce/img/tv/uhd/blueplanet2_UHD.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Blue Planet II UHD</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-3" src="/FilmIndustry/eCommerce/img/tv/bluray/breakingbad-season1_Bluray.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Breaking Bad Season 1 Bluray</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-4" src="/FilmIndustry/eCommerce/img/tv/bluray/breakingbad-season2_Bluray.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Breaking Bad Season 2 Bluray</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-5" src="/FilmIndustry/eCommerce/img/tv/bluray/breakingbad-season3_Bluray.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Breaking Bad Season 3 Bluray</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-6" src="/FilmIndustry/eCommerce/img/tv/bluray/breakingbad-season4_Bluray.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Breaking Bad Season 4 Bluray</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-7" src="/FilmIndustry/eCommerce/img/tv/bluray/breakingbad-season5_Bluray.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Breaking Bad Season 5 Bluray</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-8" src="/FilmIndustry/eCommerce/img/tv/bluray/breakingbad-season6_Bluray.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Breaking Bad Season 6 Bluray</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-9" src="/FilmIndustry/eCommerce/img/tv/bluray/breakingbad-CompleteCollection_Bluray.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Breaking Bad: The Complete Series Bluray</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-10" src="/FilmIndustry/eCommerce/img/tv/uhd/castlerock-season1_UHD.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Castle Rock Season 1 UHD</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-11" src="/FilmIndustry/eCommerce/img/tv/bluray/deadwood-CompleteCollection_Bluray.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Deadwood: The Complete Series Bluray</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-12" src="/FilmIndustry/eCommerce/img/tv/uhd/doctorwho-twiceuponatime_UHD.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Doctor Who: Twice Upon a Time UHD</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-13" src="/FilmIndustry/eCommerce/img/tv/bluray/downtonabbey-season1_Bluray.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Downton Abbey Season 1 Bluray</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-14" src="/FilmIndustry/eCommerce/img/tv/bluray/downtonabbey-season2_Bluray.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Downton Abbey Season 2 Bluray</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-15" src="/FilmIndustry/eCommerce/img/tv/bluray/downtonabbey-season3_Bluray.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Downton Abbey Season 3 Bluray</div></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-2"></div>
    </div>
</div>
<?php include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/footer.html'); ?>