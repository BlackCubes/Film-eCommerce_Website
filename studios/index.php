<?php

# index.php (Studios page).
# Created February 19, 2018
# PHP with MySQL created June 11, 2019.
# Created by Elias Gutierrez.

// *************************************** //
// ************ DOCUMENTATION ************ //

/*

*/

// ************ DOCUMENTATION ************ //
// *************************************** //

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/config.inc.php');

$page_titile = 'Studios';

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/header.html');

?>

<div class="container-fluid">
    <nav class="breadcrumb t-uppercase" role="navigation" aria-label="breadcrumbs">
        <li><a href="/FilmIndustry/eCommerce/index.php">Home</a></li>
        <li>Studios</li>
    </nav>
    <div class="row">
        <div class="col-2"></div>
        <div class="col-8 inline" id="studiosCollection">
            <div class="row grid grid--view-items">
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-1" src="/FilmIndustry/eCommerce/img/studios/20th-century-fox_Cover.png" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">20th Century Fox</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-2" src="/FilmIndustry/eCommerce/img/studios/20th-century-fox-animation_Cover.png" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">20th Century Fox Animation</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-3" src="/FilmIndustry/eCommerce/img/studios/adult-swim_Cover.png" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Adult Swim</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-4" src="/FilmIndustry/eCommerce/img/studios/affirm-films_Cover.png" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Affirm Films</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-5" src="/FilmIndustry/eCommerce/img/studios/amazon-studios_Cover.png" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Amazon Studios</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-6" src="/FilmIndustry/eCommerce/img/studios/amblin-partners_Cover.png" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Amblin Partners</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-7" src="/FilmIndustry/eCommerce/img/studios/bardel-entertainment_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Bardel Entertainment</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-8" src="/FilmIndustry/eCommerce/img/studios/big-idea-entertainment_Cover.png" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Big Idea Entertainment</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-9" src="/FilmIndustry/eCommerce/img/studios/blue-sky-studios_Cover.png" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Blue Sky Studios</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-10" src="/FilmIndustry/eCommerce/img/studios/carnival-films_Cover.jpg" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Carnival Films</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-11" src="/FilmIndustry/eCommerce/img/studios/cartoon-network-studios_Cover.png" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Cartoon Network Studios</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-12" src="/FilmIndustry/eCommerce/img/studios/castle-rock-entertainment_Cover.png" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Castle Rock Entertainment</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-13" src="/FilmIndustry/eCommerce/img/studios/cbs-films_Cover.png" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">CBS Films</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-14" src="/FilmIndustry/eCommerce/img/studios/columbia-pictures_Cover.png" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Columbia Pictures</div></a>
                    </div>
                </div>
                <div class="col grid_item">
                    <div class="grid-view-item">
                        <a class="grid-view-item_link" href="#"><img id="productImage-collection-template-15" src="/FilmIndustry/eCommerce/img/studios/comedy-central-films_Cover.png" alt="#"></a>
                        <a href="#"><div class="h4 grid-view-item_title">Comedy Central Films</div></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-2"></div>
    </div>
</div>
<?php include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/footer.html') ?>