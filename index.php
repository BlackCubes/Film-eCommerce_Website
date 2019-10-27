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
        <div class="unit-wrapper dark-bg">
            <div class="unit-headline-wrapper">
                <h2 class="headline">Film eCommerce</h2>
                <h3 class="subhead">Professional Artists. The Best Studios. The Hottest Deals.</h3>
                <p class="info">A website dedicated to the people whom have revolutionized entire cultures in the land that never sleeps.</p>
                <div class="homepage-links">
                    <div class="page-links">
                        <a href="#">Learn more about Artists</a>
                    </div>
                    <div class="page-links">
                        <a href="#">Explore Products</a>
                    </div>
                    <div class="page-links">
                        <a href="/FilmIndustry/eCommerce/register_page1.php">Create Account or Login</a>
                    </div>
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
                <h2 class="headline">Films&nbsp;|&nbsp;Television</h2>
                <h3 class="subhead">Buy the best stories in the best formats at the best price.</h3>
                <div class="homepage-links">
                    <div class="page-links">
                        <a href="/FilmIndustry/eCommerce/films/index.php">Explore Films</a>
                    </div>
                    <div class="page-links">
                        <a href="/FilmIndustry/eCommerce/tv/index.php">Explore Television</a>
                    </div>
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
            <div class="unit-headline-wrapper">
                <h4 class="headline">Actors&nbsp;|&nbsp;Directors</h4>
                <h5 class="subhead">The legendary performers. The visionary geniuses.</h5>
                <div class="homepage-links">
                    <div class="page-links">
                        <a href="/FilmIndustry/eCommerce/directors/index.php">View Directors</a>
                    </div>
                    <div class="page-links">
                        <a href="/FilmIndustry/eCommerce/actors/index.php">View Actors</a>
                    </div>
                </div>
            </div>
            <div class="unit-image-wrapper">
                <img class="unit-image" src="/FilmIndustry/eCommerce/img/homepage/christopher-nolan_Cover.png">
                <img class="unit-image" src="/FilmIndustry/eCommerce/img/homepage/emilia-clarke_Cover.png">
            </div>
        </div>
    </div>
    <div class="writer-cinematographer-card">
        <div class="unit-wrapper dark-bg">
            <div class="unit-headline-wrapper">
                <h4 class="headline">Writers&nbsp;|&nbsp;Cinematographers</h4>
                <h5 class="subhead">Creating stories from pen to lens.</h5>
                <div class="homepage-links">
                    <div class="page-links">
                        <a href="/FilmIndustry/eCommerce/dp/index.php">View Cinematographers</a>
                    </div>
                    <div class="page-links">
                        <a href="/FilmIndustry/eCommerce/writers/index.php">View Writers</a>
                    </div>
                </div>
            </div>
            <div class="unit-image-wrapper">
                <img class="unit-image" src="/FilmIndustry/eCommerce/img/homepage/stephen-king_Cover.jpg">
            </div>
        </div>
    </div>
    <div class="producer-studio-card">
        <div class="unit-wrapper yellow-bg">
            <div class="unit-headline-wrapper">
                <h4 class="headline">Producers&nbsp;|&nbsp;Studios</h4>
                <h5 class="subhead">The ambitious ones. The game changers.</h5>
                <div class="homepage-links">
                    <div class="page-links">
                        <a href="/FilmIndustry/eCommerce/studios/index.php">View Studios</a>
                    </div>
                    <div class="page-links">
                        <a href="/FilmIndustry/eCommerce/producers/index.php">View Producers</a>
                    </div>
                </div>
            </div>
            <div class="unit-image-wrapper">
                <img class="unit-image" src="/FilmIndustry/eCommerce/img/homepage/stan-lee_Cover.jpg">
                <img class="unit-image" src="/FilmIndustry/eCommerce/img/homepage/marvel-studios_Cover.png">
                <img class="unit-image" src="/FilmIndustry/eCommerce/img/homepage/ryan-reynolds-large.png">
            </div>
        </div>
    </div>
    <div class="login-info-card">
        <div class="unit-wrapper">
            <div class="unit-headline-wrapper">
                <h4 class="headline">Join</h4>
                <h5 class="subhead">Enjoy your favorite products, exclusives, and rarities.</h5>
                <h5 class="subhead">Own your experience.</h5>
            </div>
            <div class="unit-image-wrapper"></div>
        </div>
    </div>
</section>
<?php include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/footer.html'); ?>