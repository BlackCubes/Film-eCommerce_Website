<?php

# Film eCommerce v.3 - Homepage
# Created on October 17, 2019.
# Created by Elias Gutierrez.

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/config.inc.php');

$page_title = 'Film eCommerce';

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/header.html');
?>
<section class="homepage-section">
    <div class="website-intro-card">
        <div class="unit-wrapper">
            <div class="unit-headline-wrapper">
                <h2 class="headline">Film eCommerce</h2>
                <h3 class="subhead">Professional Artists. The Best Studios. The Hottest Deals.</h3>
                <p class="info">A website dedicated to the people whom have revolutionized entire cultures in the land that never sleeps.</p>
                <div class="homepage-links">
                    <a class="page-links" href="#">Learn more about Artists</a>
                    <a class="page-links" href="#">Explore Products</a>
                    <a class="page-links" href="#">Create Account or Login</a>
                </div>
            </div>
            <div class="unit-image-wrapper">
                <img class="unit-image" src="/FilmIndustry/eCommerce/img/homepage/d-b-weiss_Cover.png">
                <img class="unit-image" src="/FilmIndustry/eCommerce/img/homepage/breaking-bad-split.png">
                <img class="unit-image" src="/FilmIndustry/eCommerce/img/homepage/log-in.svg">
            </div>
        </div>
    </div>
    <div class="films-television-card">
        <div class="unit-wrapper">
            <div class="unit-headline-wrapper">
                <h2 class="headline">Films and Television</h2>
                <h3 class="subhead">Buy the best stories in the best formats at the best price.</h3>
                <div class="homepage-links">
                    <a class="page-links" href="#">Explore Films</a>
                    <a class="page-links" href="#">Explore Television</a>
                </div>
            </div>
            <div class="unit-image-wrapper">
                <img class="unit-image" src="/FilmIndustry/eCommerce/img/homepage/john-wick-3.jpg">
                <img class="unit-image" src="/FilmIndustry/eCommerce/img/homepage/mission-impossible-4.jpg">
                <img class="unit-image" src="/FilmIndustry/eCommerce/img/homepage/the-dark-knight.jpg">
                <img class="unit-image" src="/FilmIndustry/eCommerce/img/homepage/sherlock.jpg">
                <img class="unit-image" src="/FilmIndustry/eCommerce/img/homepage/harry-potter-3.jpg">
                <img class="unit-image" src="/FilmIndustry/eCommerce/img/homepage/game-of-thrones-s5.jpg">
                <img class="unit-image" src="/FilmIndustry/eCommerce/img/homepage/castle-rock.png">
                <img class="unit-image" src="/FilmIndustry/eCommerce/img/homepage/westworld-s2.jpg">
            </div>
        </div>
    </div>
</section>
<section class="homepage-section">
    <div class="actor-director-card">
        <div class="unit-wrapper">
            <div class="unit-wraper-headline">
                <h2 class="headline">Actors&nbsp;|&nbsp;Directors</h2>
                <h3 class="subhead">The best performers. The visionary geniuses.</h3>
                <div class="homepage-links">
                    <a class="page-links" href="#">View Directors</a>
                    <a class="page-links" href="#">View Actors</a>
                </div>
            </div>
            <div class="unit-image-wrapper">
                <img class="unit-image" src="/FilmIndustry/eCommerce/img/homepage/christopher-nolan_Cover.png">
                <img class="unit-image" src="/FilmIndustry/eCommerce/img/homepage/emilia-clarke_Cover.png">
            </div>
        </div>
    </div>
    <div class="writer-cinematographer-card">
        <div class="unit-wrapper">
            <div class="unit-wrapper-headline">
                <h2 class="headline">Writers&nbsp;|&nbsp;Cinematographers</h2>
                <h3 class="subhead">Creating stories from pen to lens.</h3>
                <div class="homepage-links">
                    <a class="page-links" href="#">View Cinematographers</a>
                    <a class="page-links" href="#">View Writers</a>
                </div>
            </div>
            <div class="unit-image-wrapper">
                <img class="unit-image" src="/FilmIndustry/eCommerce/img/homepage/stephen-king_Cover.jpg">
            </div>
        </div>
    </div>
    <div class="producer-studio-card">
        <div class="unit-wrapper">
            <div class="unit-wrapper-headline">
                <h2 class="headline">Producers&nbsp;|&nbsp;Studios</h2>
                <h3 class="subhead">The ambitious ones. The game changers.</h3>
                <div class="homepage-links">
                    <a class="page-links" href="#">View Studios</a>
                    <a class="page-links" href="#">View Producers</a>
                </div>
            </div>
            <div class="unit-image-wrapper">
                <img class="unit-image" src="/FilmIndustry/eCommerce/img/homepage/marvel-studios_Cover.png">
                <img class="unit-image" src="/FilmIndustry/eCommerce/img/homepage/ryan-reynolds-large.png">
                <img class="unit-image" src="/FilmIndustry/eCommerce/img/homepage/stan-lee_Cover.jpg">
            </div>
        </div>
    </div>
    <div class="login-info-card">
        <div class="unit-wrapper">
            <div class="unit-wrapper-headline">
                <h2 class="headline">Join</h2>
                <h3 class="subhead">Enjoy your favorite products, exclusives, and rarities.</h3>
                <h3 class="subhead">Enjoy your experience.</h3>
            </div>
            <div class="unit-image-wrapper"></div>
        </div>
    </div>
</section>
<!-- Try to fix the id of section0 -->
<!-- Maybe for the CSS, don't need the id's? Maybe could call it from the div or class instead? -->
<!-- Later, delete the id's of leftSide, rightSide, televisionHeadline, and filmHeadline from CSS -->
<!-- TV -->
<!--<section id="section0">
    <div class="container-fluid">
        <article>
            <h1 class="product-headline">Television</h1>
            <h6 class="product-subheadline">Time after time, creativity on storytelling has brought new forms of art.</h6>
        </article>
    </div>
</section>
<section id="section1">
    <div class="container-fluid">
        <div class="row">
            <div class="col">
                <article>
                    <h2 class="product-headline">BluRay</h2>
                    <h6 class="product-subheadline">With blue laser reading your disc, you can enjoy your favorite TV Shows in high quality 1080p and up to 2160p resolution</h6>
                </article>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-8">
                <figure class="product-image">
                    <div id="carouselBluray" class="carousel slide" data-ride="carousel" data-pause="false">
                        <ol class="carousel-indicators">
                            <li data-target="#carouselBluray" data-slide-to="0" class="active"></li>
                            <li data-target="#carouselBluray" data-slide-to="1"></li>
                            <li data-target="#carouselBluray" data-slide-to="2"></li>
                            <li data-target="#carouselBluray" data-slide-to="3"></li>
                        </ol>
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img class="d-block w-100" src="/FilmIndustry/eCommerce/img/homepage/tv/blurayCarousel/breakingbad1.jpg" width="1100" height="400" alt="First Slide">
                                <div class="carousel-caption d-none d-md-block">
                                    <p class="product-image-paragraph">Winner of 16 Primetime Emmy Awards, created by by Vince Gilligan, and starring Bryan Cranston and Aaron Paul</p>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100" src="/FilmIndustry/eCommerce/img/homepage/tv/blurayCarousel/breakingbad2.jpg" width="1100" height="400" alt="Second Slide">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100" src="/FilmIndustry/eCommerce/img/homepage/tv/blurayCarousel/breakingbad3.jpg" width="1100" height="400" alt="Third Slide">
                            </div>
                            <div class="carousel-item">
                                <img src="/FilmIndustry/eCommerce/img/homepage/tv/blurayCarousel/breakingbad4.jpg" width="1100" height="400" alt="Fourth Slide">
                                <div class="carousel-caption d-none d-md-block">
                                    <p class="product-image-paragraph">Own Breaking Bad on Bluray</p>
                                </div>
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#carouselBluRay" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselBluray" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </figure>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <article>
                    <p class="product-paragraph">Let's hope that the resolution from Breaking Bad does not drug you out</p>
                    <p class="product-link"><a href="#">Shop</a></p>
                </article>
            </div>
        </div>
    </div>
</section>
<section id="section2">
    <div class="container-fluid">
        <div class="row">
            <div class="col">
                <h2 class="product-headline">DVD</h2>
                <h6 class="product-subheadline">The format that began the digital revolution</h6>
            </div>
        </div>
        <div class="row">
            <div class="col-6">
                <figure class="product-image">
                    <div id="carouselDVD" class="carousel slide" data-ride="carousel" data-pause="false">
                        <ol class="carousel-indicators">
                            <li data-target="#carouselDVD" data-slide-to="0" class="active"></li>
                            <li data-target="#carouselDVD" data-slide-to="1"></li>
                            <li data-target="#carouselDVD" data-slide-to="2"></li>
                        </ol>
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img class="d-block w-100" src="/FilmIndustry/eCommerce/img/homepage/tv/dvdCarousel/sopranos1.jpeg" width="1100" height="400" alt="First Slide">
                                <div class="carousel-caption d-none d-md-block">
                                    <p class="product-image-paragraph">Named the best-written TV series of all time by the Writers Guild of America, this legendary show stars James Gandolfini and created by David Chase</p>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100" src="/FilmIndustry/eCommerce/img/homepage/tv/dvdCarousel/sopranos2.jpeg" width="1100" height="400" alt="Second Slide">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100" src="/FilmIndustry/eCommerce/img/homepage/tv/dvdCarousel/sopranos3.jpg" alt="Third Slide">
                                <div class="carousel-caption d-none d-md-block">
                                    <p class="product-image-paragraph">Become part of the family by owning The Sopranos on DVD</p>
                                </div>
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#carouselDVD" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselDVD" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </figure>
            </div>
            <div class="col">
                <article>
                    <p class="product-paragraph">Own some of your favorite shows like the popular and critically acclaimed that revolutionize TV forever: The Sopranos</p>
                    <p class="product-link"><a href="#">Shop</a></p>
                </article>
            </div>
        </div>
    </div>
</section>
<section id="section3">
    <div class="container-fluid">
        <div class="row">
            <div class="col">
                <h2 class="product-headline">4K UHD</h2>
                <h6 class="product-subheadline">With new advancements of technology and digital information, you can now watch your favorite shows in Ultra High Definition</h6>
                <h6 class="product-subheadline">What does that mean? 4x as many pixels as 1080p</h6>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-10">
                <figure class="product-image">
                    <div id="carousel4K" class="carousel slide" data-ride="carousel" data-pause="false">
                        <ol class="carousel-indicators">
                            <li data-target="#carousel4K" data-slide-to="0" class="active"></li>
                            <li data-target="#carousel4K" data-slide-to="1"></li>
                            <li data-target="#carousel4K" data-slide-to="2"></li>
                            <li data-target="#carousel4K" data-slide-to="3"></li>
                            <li data-target="#carousel4K" data-slide-to="4"></li>
                        </ol>
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img class="d-block w-100" src="/FilmIndustry/eCommerce/img/homepage/tv/uhdCarousel/gameofthrones1.jpg" width="1100" height="500" alt="First Slide">
                                <div class="carousel-caption d-none d-md-block">
                                    <p class="product-image-paragraph">Based on the best-selling books, this strong international fan base and record breaking viewership on HBO has excellent casts of Peter Dinklage, Emilia Clarke, and Kit Harington</p>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100" src="/FilmIndustry/eCommerce/img/homepage/tv/uhdCarousel/gameofthrones2.jpg" width="1100" height="500" alt="Second Slide">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100" src="/FilmIndustry/eCommerce/img/homepage/tv/uhdCarousel/gameofthrones3.jpg" width="1100" height="500" alt="Third Slide">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100" src="/FilmIndustry/eCommerce/img/homepage/tv/uhdCarousel/gameofthrones4.jpg" width="1100" height="500" alt="Fourth Slide">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100" src="/FilmIndustry/eCommerce/img/homepage/tv/uhdCarousel/gameofthrones5.jpg" width="1100" height="500" alt="Fifth Slide">
                                <div class="carousel-caption d-none d-md-block">
                                    <p class="product-image-paragraph">Clearer Action. Better Clarity. More Immersion</p>
                                </div>
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#carousel4K" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carousel4K" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </figure>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <article>
                    <p class="product-paragraph">Just imagine watching Game of Thrones in 4K UHD, bringing you closer to the books</p>
                    <p class="product-link"><a href="#">Shop</a></p>
                </article>
            </div>
        </div>
    </div>
</section>-->
<?php include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/footer.html'); ?>