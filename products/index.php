<?php

# index.php (Display Products Once Clicked).
# Created on August 4, 2019.
# Created by Elias Gutierrez.

// *************************************** //
// ************ DOCUMENTATION ************ //

/*

*/

// ************ DOCUMENTATION ************ //
// *************************************** //

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/config.inc.php');

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/secure.php');

function validate_url($url) {
    $path = parse_url($url, PHP_URL_PATH);
    $encoded_path = array_map('urlencode', explode('/', $path));
    $url = str_replace($path, implode('/', $encoded_path), $url);

    return filter_var($url, FILTER_VALIDATE_URL) ? true : false;
}

if (isset($_GET['isd']) /*&& validate_url('http://localhost/FilmIndustry/eCommerce/products/index.php?isd=' . $_GET['isd'] . '&department=' . $_GET['department'] . '&format=' . $_GET['format'])*/) {

    require(MYSQL);

    $product_isd = mysqli_real_escape_string($dbc, $_GET['isd']);
    /*$product_department = mysqli_real_escape_string($dbc, $_GET['department']);
    $product_format = mysqli_real_escape_string($dbc, $_GET['format']);*/

    $q = "SELECT id FROM products WHERE isd='" . $product_isd . "'";
    $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

    if (mysqli_num_rows($r) == 1) {

        $q_product = "SELECT DISTINCT p.name AS product_name, DATE_FORMAT(p.release_date, '%M %d, %Y') AS product_release_date, p.description AS product_desc, p.isd AS product_isd, p.sku AS product_sku, p.unit_price AS product_price, p.stock AS product_stock, p.image_1 AS product_image_1, p.image_2 AS product_image_2, f.format AS product_format, d.department AS product_department, pd.edition AS product_edition, pd.discs AS product_discs, pd.runtime AS product_runtime, DATE_FORMAT(pd.media_date, '%M %d, %Y') AS product_media_date, pd.more_description AS product_more_desc, r.rated AS product_rated, s.spec_format_type AS product_spec_format_type, s.video_desc AS product_video_desc, s.audio_desc AS product_audio_desc, s.subtitles_desc AS product_sub_desc FROM products AS p JOIN formats AS f ON p.format_id=f.id JOIN departments AS d ON p.department_id=d.id JOIN productdetails AS pd ON p.id=pd.id JOIN ratings AS r ON pd.rated_id=r.id JOIN specs AS s ON pd.spec_id=s.id WHERE p.isd='" . $product_isd . "'";
        $r_product = mysqli_query($dbc, $q_product) or trigger_error("Query: $q_product\n<br>MySQL Error: " . mysqli_error($dbc));
        $product = mysqli_fetch_array($r_product, MYSQLI_ASSOC);

        $q_genre = "SELECT DISTINCT g.genre AS product_genre FROM genres AS g JOIN products_genres AS pg ON g.id=pg.genre_id JOIN products AS p ON pg.product_id=p.id WHERE p.isd='" . $product_isd . "' ORDER BY g.genre";
        $r_genre = mysqli_query($dbc, $q_genre) or trigger_error("Query: $q_genre\n<br>MySQL Error: " . mysqli_error($dbc));

        $q_director = "SELECT DISTINCT d.id AS director_id, d.first_name AS director_fn, d.middle_name AS director_mn, d.last_name AS director_ln, d.img AS director_img FROM directors AS d JOIN products_directors AS pd ON d.id=pd.director_id JOIN products AS p ON pd.product_id=p.id WHERE p.isd='" . $product_isd . "' ORDER BY d.last_name";
        $r_director = mysqli_query($dbc, $q_director) or trigger_error("Query: $q_director\n<br>MySQL Error: " . mysqli_error($dbc));

        $q_writer = "SELECT DISTINCT w.id AS writer_id, w.first_name AS writer_fn, w.middle_name AS writer_mn, w.last_name AS writer_ln, w.img AS writer_img FROM writers AS w JOIN products_writers AS pw ON w.id=pw.writer_id JOIN products AS p ON pw.product_id=p.id WHERE p.isd='" . $product_isd . "' ORDER BY w.last_name";
        $r_writer = mysqli_query($dbc, $q_writer) or trigger_error("Query: $q_writer\n<br>MySQL Error: " . mysqli_error($dbc));

        $q_actor = "SELECT DISTINCT a.id AS actor_id, a.first_name AS actor_fn, a.middle_name AS actor_mn, a.last_name AS actor_ln, a.img AS actor_img FROM actors AS a JOIN products_actors AS pa ON a.id=pa.actor_id JOIN products AS p ON pa.product_id=p.id WHERE p.isd='" . $product_isd . "' ORDER BY a.last_name";
        $r_actor = mysqli_query($dbc, $q_actor) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

        $q_producer = "SELECT DISTINCT pro.id AS producer_id, pro.first_name AS producer_fn, pro.middle_name AS producer_mn, pro.last_name AS producer_ln, pro.img AS producer_img FROM producers AS pro JOIN products_producers AS ppro ON pro.id=ppro.producer_id JOIN products AS p ON ppro.product_id=p.id WHERE p.isd='" . $product_isd . "' ORDER BY pro.last_name";
        $r_producer = mysqli_query($dbc, $q_producer) or trigger_error("Query: $q_producer\n<br>MySQL Error: " . mysqli_error($dbc));

        $q_dp = "SELECT DISTINCT dp.id AS dp_id, dp.first_name AS dp_fn, dp.middle_name AS dp_mn, dp.last_name AS dp_ln, dp.img AS dp_img FROM dps AS dp JOIN products_dps AS pdp ON dp.id=pdp.dp_id JOIN products AS p ON pdp.product_id=p.id WHERE p.isd='" . $product_isd . "' ORDER BY dp.last_name";
        $r_dp = mysqli_query($dbc, $q_dp) or trigger_error("Query: $q_dp\n<br>MySQL Error: " . mysqli_error($dbc));

        $q_studio = "SELECT DISTINCT s.id AS studio_id, s.studio_name AS studio_name, s.img AS studio_img FROM studios AS s JOIN products_studios AS ps ON s.id=ps.studio_id JOIN products AS p ON ps.product_id=p.id WHERE p.isd='" . $product_isd . "' ORDER BY s.studio_name";
        $r_studio = mysqli_query($dbc, $q_studio) or trigger_error("Query: $q_studio\n<br>MySQL Error: " . mysqli_error($dbc));

        $page_title = $product['product_name'];

        include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/header.html');

        echo '<div class="container--product-view"><div class="main-info--product-view"><div class="image--product-view"><img src="/FilmIndustry/uploads/products/' . $product['product_image_1'] . '"></div><div class="product-info-option"><div class="product-title--info-option"><h1>' . $product['product_name'] . '</h1></div><div class="product-edition--info-option"><h3>' . $product['product_edition'] . '</h3></div></div><div class="cart-wishlist-container"><form method="post" action="/FilmIndustry/eCommerce/cart/index.php?action=add&isd=' . $product_isd . '" id="cartCard"><div class="cart-quantity"><label for="cartQuantity">Qty: </label><select name="quantity" id="cartQuantity">';

        for ($i = 1; $i < ($product['product_stock'] - 3); $i++) {
            echo '<option value="' . $i . '"';

            $selected = ($i === 1) ? ' selected' : '';

            echo $selected . '>' . $i . '</option>';
        }

        echo '</select></div><input type="submit" value="Add to Cart"><a href="/FilmIndustry/eCommerce/wishlist/index.php?action=add&isd=' . $product_isd . '">Wishlist Add</a></form></div></div><div class="cast-crew-info--product-view"><div class="cast-crew-title--product-view"><h2>Cast & Crew</h2></div><div class="cast-crew-container"><div class="director-list-container--product-view"><div class="director-title--product-view"><h4>Directors</h4></div><table class="director-list--product-view"><thead><tr><th colspan="2" class="space--product-view"></th></tr></thead><tbody>';

        while ($director = mysqli_fetch_array($r_director, MYSQLI_ASSOC)) {

            $director_id_encrypt = urlencode(my_encrypt($director['director_id'], KEY));

            echo '<tr><td class="cast-crew-image--product-view"><a href="/FilmIndustry/eCommerce/artists/profile/index.php?role=director&artist=' . $director_id_encrypt. '"><img alt="' . $director['director_fn'] . ' ' . $director['director_mn'] . ' ' . $director['director_ln'] . '" title="' . $director['director_fn'] . ' ' . $director['director_mn'] . ' ' . $director['director_ln'] . '" src="/FilmIndustry/eCommerce/img/' . $director['director_img'] . '"></a></td><td class="cast-crew-name--product-view"><span class="cast-crew-dot-dots"> . . . . </span><a href="/FilmIndustry/eCommerce/artists/profile/index.php?role=director&artist=' . $director_id_encrypt. '">' . $director['director_fn'] . ' ' . $director['director_mn'] . ' ' . $director['director_ln'] . '</a></td></tr>';

        }

        echo '</tbody></table></div><div class="writer-list-container--product-view"><div class="writer-title--product-view"><h4>Writers</h4></div><table class="writer-list--product-view"><thead><tr><th colspan="2" class="space--product-view"></th></tr></thead><tbody>';

        while ($writer = mysqli_fetch_array($r_writer, MYSQLI_ASSOC)) {

            $writer_id_encrypt = urlencode(my_encrypt($writer['writer_id'], KEY));

            echo '<tr><td class="cast-crew-image--product-view"><a href="/FilmIndustry/eCommerce/artists/profile/index.php?role=writer&artist=' . $writer_id_encrypt . '"><img alt="' . $writer['writer_fn'] . ' ' . $writer['writer_mn'] . ' ' . $writer['writer_ln'] . '" title="' . $writer['writer_fn'] . ' ' . $writer['writer_mn'] . ' ' . $writer['writer_ln'] . '" src="/FilmIndustry/eCommerce/img/' . $writer['writer_img'] . '"></a></td><td class="cast-crew-name--product-view"><span class="cast-crew-dot-dots"> . . . . </span><a href="/FilmIndustry/eCommerce/artists/profile/index.php?role=writer&artist=' . $writer_id_encrypt . '">' . $writer['writer_fn'] . ' ' . $writer['writer_mn'] . ' ' . $writer['writer_ln'] . '</a></td></tr>';

        }

        echo '</tbody></table></div><div class="actor-list-container--product-view"><div class="actor-title--product-view"><h4>Actors</h4></div><table class="actor-list--product-view"><thead><tr><th colspan="2" class="space--product-view"></th></tr></thead><tbody>';

        while ($actor = mysqli_fetch_array($r_actor, MYSQLI_ASSOC)) {

            $actor_id_encrypt = urlencode(my_encrypt($actor['actor_id'], KEY));

            echo '<tr><td class="cast-crew-image--product-view"><a href="/FilmIndustry/eCommerce/artists/profile/index.php?role=actor&artist=' . $actor_id_encrypt . '"><img alt="' . $actor['actor_fn'] . ' ' . $actor['actor_mn'] . ' ' . $actor['actor_ln'] . '" title="' . $actor['actor_fn'] . ' ' . $actor['actor_mn'] . ' ' . $actor['actor_ln'] . '" src="/FilmIndustry/eCommerce/img/' . $actor['actor_img'] . '"></a></td><td class="cast-crew-name--product-view"><span class="cast-crew-dot-dots"> . . . . </span><a href="/FilmIndustry/eCommerce/artists/profile/index.php?role=actor&artist=' . $actor_id_encrypt . '">' . $actor['actor_fn'] . ' ' . $actor['actor_mn'] . ' ' . $actor['actor_ln'] . '</a></td></tr>';
        }

        echo '</tbody></table></div><div class="producer-list-container--product-view"><div class="producer-title--product-view"><h4>Producers</h4></div><table class="producer-list--product-view"><thead><tr><th colspan="2" class="space--product-view"></th></tr></thead><tbody>';

        while ($producer = mysqli_fetch_array($r_producer, MYSQLI_ASSOC)) {

            $producer_id_encrypt = urlencode(my_encrypt($producer['producer_id'], KEY));

            echo '<tr><td class="cast-crew-image--product-view"><a href="/FilmIndustry/eCommerce/artists/profile/index.php?role=producer&artist=' . $producer_id_encrypt . '"><img alt="' . $producer['producer_fn'] . ' ' . $producer['producer_mn'] . ' ' . $director['producer_ln'] . '" title="' . $producer['producer_fn'] . ' ' . $producer['producer_mn'] . ' ' . $producer['producer_ln'] . '" src="/FilmIndustry/eCommerce/img/' . $producer['producer_img'] . '"></a></td><td class="cast-crew-name--product-view"><span class="cast-crew-dot-dots"> . . . . </span><a href="/FilmIndustry/eCommerce/artists/profile/index.php?role=producer&artist=' . $producer_id_encrypt . '">' . $producer['producer_fn'] . ' ' . $producer['producer_mn'] . ' ' . $producer['producer_ln'] . '</a></td></tr>';

        }

        echo '</tbody></table></div><div class="cinematographer-list-container--product-view"><div class="cinematographer-title--product-view"><h4>Cinematographers</h4></div><table class="cinematographer-list--product-view"><thead><tr><th colspan="2" class="space--product-view"></th></tr></thead><tbody>';

        while ($dp = mysqli_fetch_array($r_dp, MYSQLI_ASSOC)) {

            $dp_id_encrypt = urlencode(my_encrypt($dp['dp_id'], KEY));

            echo '<tr><td class="cast-crew-image--product-view"><a href="/FilmIndustry/eCommerce/artists/profile/index.php?role=dp&artist=' . $dp_id_encrypt . '"><img alt="' . $dp['dp_fn'] . ' ' . $dp['dp_mn'] . ' ' . $dp['dp_ln'] . '" title="' . $dp['dp_fn'] . ' ' . $dp['dp_mn'] . ' ' . $dp['dp_ln'] . '" src="/FilmIndustry/eCommerce/img/' . $dp['dp_img'] . '"></a></td><td class="cast-crew-name--product-view"><span class="cast-crew-dot-dots"> . . . . </span><a href="/FilmIndustry/eCommerce/artists/profile/index.php?role=dp&artist=' . $dp_id_encrypt . '">' . $dp['dp_fn'] . ' ' . $dp['dp_mn'] . ' ' . $dp['dp_ln'] . '</a></td></tr>';

        }

        echo '</tbody></table></div><div class="studio-list-container--product-view"><div class="studio-title--product-view"><h4>Studios</h4></div><table class="studio-list--product-view"><thead><tr><th colspan="2" class="space--product-view"></th></tr></thead><tbody>';

        while ($studio = mysqli_fetch_array($r_studio, MYSQLI_ASSOC)) {

            $studio_id_encrypt = urlencode(my_encrypt($studio['studio_id'], KEY));

            echo '<tr><td class="cast-crew-image--product-view"><a href="/FilmIndustry/eCommerce/studios/profile/index.php?role=studio&company=' . $studio_id_encrypt . '"><img alt="' . $studio['studio_name'] . '" title="' . $studio['studio_name'] . '" src="/FilmIndustry/eCommerce/img/' . $studio['studio_img'] . '"></a></td><td class="cast-crew-name--product-view"><span class="cast-crew-dot-dots"> . . . . </span><a href="/FilmIndustry/eCommerce/studios/profile/index.php?role=studio&company=' . $studio_id_encrypt . '">' . $studio['studio_name'] . '</a></td></tr>';

        }

        echo '</tbody></table></div></div></div><div class="extra-desc-product-info--product-view"><div class="extra-desc-title--product-view"><h2>Extra Description</h2></div><div class="extra-desc-info--product-view"><p>' . $product['product_more_desc'] . '</p></div></div><div class="product-details-info--product-view"><div class="product-details-title--product-view"><h2>Product Details</h2></div><table class="product-details-list--product-view"><tbody><tr><td class="medium-title">Medium:</td><td class="medium-type">' . $product['product_department'] . '</td></tr><tr><td class="format-title">Format:</td><td class="format-type">' . $product['product_format'] . '</td></tr><tr><td class="disc-title">Number of discs:</td><td class="disc-type">' . $product['product_discs'] . '</td></tr><tr><td class="rating-title">Rated:</td><td class="rated-type">' . $product['product_rated'] . '</td></tr><tr><td class="theatre-date-title">Theatrical Release Date:</td><td class="theatre-date">' . $product['product_release_date'] . '</td></tr><tr><td class="home-media-date-title">Home Media Date:</td><td class="home-media-date">' . $product['product_media_date'] . '</td></tr><tr><td class="runtime-title">Run Time:</td><td class="runtime">' . $product['product_runtime'] . ' minutes' . '</td></tr><tr><td class="genre-title">Genre:</td><td class="genre-type">';

        while ($genre = mysqli_fetch_array($r_genre, MYSQLI_ASSOC)) {
            echo '<span>' . $genre['product_genre'] . '</span>';
        }

        echo '</td></tr><tr><td class="sku-title">SKU:</td><td class="sku-type">' . $product['product_sku'] . '</td></tr><tr><td class="isd-title">ISD:</td><td class="isd-type">' . $product['product_isd'] . '</td></tr></tbody></table></div><div class="product-specs-info--product-view"><div class="product-specs-title--product-view"><h2>Product Specs</h2></div><table class="product-specs-list--product-view"><thead><tr><th class="spec-format-type-title">Format Type</th><th class="spec-video-desc-title">Video Description</th><th class="spec-audio-desc-title">Audio Description</th><th class="spec-sub-desc-title">Subtitle Description</th></tr></thead><tbody><tr><td class="spec-format-type">' . $product['product_spec_format_type'] . '</td><td class="product-video-desc">' . $product['product_video_desc'] . '</td><td class="product-audio-desc">' . $product['product_audio_desc'] . '</td><td class="product-sub-desc">' . $product['product_sub_desc'] . '</td></tr></tbody></table></div></div>';

        mysqli_free_result($r);
        mysqli_close($dbc);

        include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/footer.html');

    } else {

        $url = BASE_URL . 'index.php';

        mysqli_close($dbc);

        ob_end_clean();
        header("Location: $url");
        exit();

    }

} else {

    $url = BASE_URL . 'index.php';

    ob_end_clean();
    header("Location: $url");
    exit();

}
?>