<?php

# Film eCommerce v.3 - Homepage
# Created February 11, 2019
# Created January 11, 2019 (v.2)
# Created by Elias Gutierrez

$page_title = 'Welcome to this site!';
include(__DIR__.'\includes\header.html')

?>

<!-- Try to fix the id of section0 -->
<!-- Maybe for the CSS, don't need the id's? Maybe could call it from the div or class instead? -->
<!-- Later, delete the id's of leftSide, rightSide, televisionHeadline, and filmHeadline from CSS -->
<!-- TV -->
<section id="section0"> <!-- "What do you like more?" -->
    <div class="container-fluid">
        <article>  <!-- Do we need to have article's? -->
            <h1 class="product-headline">Television</h1>
            <h6 class="product-subheadline">Time after time, creativity on storytelling has brought new forms of art.</h6>
        </article>
    </div>
</section>
<!-- Bluray -->
<section id="section1">  <!-- Need to have an id of section? -->
    <div class="container-fluid">  <!-- Need to have so many container fluids on one page? Can we not condense it? -->
        <div class="row">
            <div class="col">
                <article>
                    <h2 class="product-headline">BluRay</h2>
                    <h6 class="product-subheadline">With blue laser reading your disc, you can enjoy your favorite TV Shows in high quality 1080p and up to 2160p resolution</h6>
                </article>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-8">  <!-- a class of "section-content" afterwards? -->
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
<!-- DVD -->
<section id="section2">
    <div class="container-fluid">
        <div class="row">
            <div class="col"><!-- Too many cols? Is it necessary? -->
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
<!-- 4K UHD -->
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
                    <p class="product-link"><a href="#">Shop</a></p><!-- Shop in article??? -->
                </article>
            </div>
        </div>
    </div>
</section>

<?php

include(__DIR__.'\includes\footer.html')

?>