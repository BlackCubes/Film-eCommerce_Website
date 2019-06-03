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

$page_title = 'Producers';

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/header.html');

require(MYSQL);

$display = 15;

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/footer.html');
?>

<div class="container-fluid">
    <nav class="breadcrumb t-uppercase" role="navigation" aria-label="breadcrumbs">
        <li><a href="/FilmIndustry/eCommerce/index.php">Home</a></li>
        <li>Producers</li>
    </nav>
    <div class="row">
        <div class="col-2"></div>
        <div class="col-8 inline" id="producersCollection">
            <div class="row grid grid--view-items">
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-2" src="/FilmIndustry/eCommerce/img/producers/aaron-sorkin_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Aaron Sorkin</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-2" src="/FilmIndustry/eCommerce/img/producers/adam-mckay_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Adam McKay</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-3" src="/FilmIndustry/eCommerce/img/producers/adele-romanski_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Adele Romanski</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-4" src="/FilmIndustry/eCommerce/img/producers/alex-gansa_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Alex Gansa</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-5" src="/FilmIndustry/eCommerce/img/producers/alfonso-cuarón_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="grid-view-item_title">Alfonso Cuarón</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-6" src="/FilmIndustry/eCommerce/img/producers/allie-goss_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Allie Goss</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-7" src="/FilmIndustry/eCommerce/img/producers/amanda-posey_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Amanda Posey</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-8" src="/FilmIndustry/eCommerce/img/producers/amy-pascal_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Amy Pascal</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-9" src="/FilmIndustry/eCommerce/img/producers/amy-shermanpalladino_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Amy Sherman-Palladino</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-10" src="/FilmIndustry/eCommerce/img/producers/angie-fielder_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Angie Fielder</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-11" src="/FilmIndustry/eCommerce/img/producers/bill-gerber_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Bill Gerber</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-12" src="/FilmIndustry/eCommerce/img/producers/bradley-cooper_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Bradley Cooper</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-13" src="/FilmIndustry/eCommerce/img/producers/brian-currie_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Brian Currie</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-14" src="/FilmIndustry/eCommerce/img/producers/bruce-miller_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Bruce Miller</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-15" src="/FilmIndustry/eCommerce/img/producers/carla-hacken_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Carla Hacken</div></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-2"></div>
    </div>
</div>
<?php include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/footer.html') ?>