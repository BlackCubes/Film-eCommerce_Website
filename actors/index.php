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

require('includes/config.inc.php';)

$page_title = 'Actors';

include('includes/header.html')

?>

<div class="container-fluid">
    <nav class="breadcrumb t-uppercase" role="navigation" aria-label="breadcrumbs">
        <li><a href="/FilmIndustry/eCommerce/index.php">Home</a></li>
        <li>Actors</li>
    </nav>
    <div class="row">
        <div class="col-2"></div>
        <div class="col-8 inline" id="actorsCollection">
            <div class="row grid grid--view-items">
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-1" src="/FilmIndustry/eCommerce/img/actors/aaron-paul_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Aaron Paul</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-2" src="/FilmIndustry/eCommerce/img/actors/alec-baldwin_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Alec Baldwin</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-3" src="/FilmIndustry/eCommerce/img/actors/alexander-skarsgård_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Alexander Skarsgård</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-4" src="/FilmIndustry/eCommerce/img/actors/alex-borstein_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Alex Borstein</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-5" src="/FilmIndustry/eCommerce/img/actors/alicia-vikander_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Alicia Vikander</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-6" src="/FilmIndustry/eCommerce/img/actors/allison-janney_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Allison Janney</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-7" src="/FilmIndustry/eCommerce/img/actors/anna-gunn_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Anna Gunn</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-8" src="/FilmIndustry/eCommerce/img/actors/ann-dowd_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Ann Dowd</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-9" src="/FilmIndustry/eCommerce/img/actors/anne-hathaway_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Anne Hathaway</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-10" src="/FilmIndustry/eCommerce/img/actors/benedictcumberbatch_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Benedict Cumberbatch</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-11" src="/FilmIndustry/eCommerce/img/actors/ben-mendelsohn_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Ben Mendelsohn</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-12" src="/FilmIndustry/eCommerce/img/actors/bill-hader_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Bill Hader</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-13" src="/FilmIndustry/eCommerce/img/actors/bill-murray_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Bill Murray</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-14" src="/FilmIndustry/eCommerce/img/actors/bobby-cannavale_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Bobby Cannavale</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-15" src="/FilmIndustry/eCommerce/img/actors/brie-larson_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Brie Larson</div></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-2"></div>
    </div>
</div>

<?php include('includes/footer.html'); ?>