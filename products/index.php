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

    $product_isd = mysqli_real_escape_string($dbc, sanitize_input($_GET['isd']));
    /*$product_department = mysqli_real_escape_string($dbc, $_GET['department']);
    $product_format = mysqli_real_escape_string($dbc, $_GET['format']);*/

    $q = "SELECT id FROM products WHERE isd='" . $product_isd . "'";
    $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

    if (mysqli_num_rows($r) == 1) {

        $q_product = "SELECT DISTINCT p.name AS product_name, DATE_FORMAT(p.release_date, '%M %d, %Y') AS product_release_date, p.description AS product_desc, p.isd AS product_isd, p.sku AS product_sku, p.unit_price AS product_price, p.stock AS product_stock, p.image_1 AS product_image_1, p.image_2 AS product_image_2, f.format AS product_format, d.department AS product_department, pd.edition AS product_edition, pd.discs AS product_discs, pd.runtime AS product_runtime, DATE_FORMAT(pd.media_date, '%M %d, %Y') AS product_media_date, pd.more_description AS product_more_desc, r.rated AS product_rated, s.spec_format_type AS product_spec_format_type, s.video_desc AS product_video_desc, s.audio_desc AS product_audio_desc, s.subtitles_desc AS product_sub_desc FROM products AS p JOIN formats AS f ON p.format_id=f.id JOIN departments AS d ON p.department_id=d.id JOIN productdetails AS pd ON p.id=pd.id JOIN ratings AS r ON pd.rated_id=r.id JOIN specs AS s ON pd.spec_id=s.id WHERE p.isd='" . $product_isd . "'";
        $r_product = mysqli_query($dbc, $q_product) or trigger_error("Query: $q_product\n<br>MySQL Error: " . mysqli_error($dbc));
        $product = mysqli_fetch_array($r_product, MYSQLI_ASSOC);

        if ($_SERVER['REQUEST_METHOD'] == 'POST') {

            session_start();

            $post_action = sanitize_input($_POST['submit']);

            $quan = FALSE;

            if ((is_numeric($_POST['quantity'])) && ($_POST['quantity'] > 0) && ($_POST['quantity'] < ($product['product_stock'] - 1))) {
                $quantityErr = '';
                $quan = TRUE;
                $_SESSION['quantity_cart'] = $_POST['quantity'];
            } else {
                $quantityErr = 'Please enter a valid quantity!';
            }

            if ($quan) {

                switch ($post_action) {

                    case "Add to Cart":

                        $url = BASE_URL . 'cart/index.php?action=add&isd=' . $product_isd;
                        ob_end_clean();
                        header("Location: $url");
                        exit();

                        break;

                    case "Wishlist":

                        $url = BASE_URL . 'wishlist/index.php?action=add&isd=' . $product_isd;
                        ob_end_clean();
                        header("Location: $url");
                        exit();

                        break;

                }
            }

        }

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

        include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/breadcrumb.php');

        $breadcrumb = new breadcrumb();

        if ($product['product_department'] === 'Movies') {
            $department_title = 'FILMS';
        } elseif ($product['product_department'] === 'TV') {
            $department_title = $product['product_department'];
        }

        echo '<div class="container--product-view"><div class="breadcrumb">' . $breadcrumb->build(array(ucfirst(strtolower($department_title)) => strtolower($department_title) . '/index.php', $product['product_name'] => '')) . '</div><div class="main-info--product-view"><div class="image--product-view"><img alt="' . $product['product_name'] . '" src="/FilmIndustry/uploads/products/' . $product['product_image_1'] . '"></div><div class="product-info-option"><div class="product-title--info-option"><h1>' . $product['product_name'] . '</h1></div><div class="product-edition--info-option"><h3>';
        
        if (!empty($product['product_edition'])) {
            echo $product['product_edition'];
        } else {
            echo 'Null';
        }
        
        echo '</h3></div><div class="cast-crew-format--info-option">';

        $cast_values = $cast_actors = array();

        while ($cast_actor = mysqli_fetch_array($r_actor, MYSQLI_ASSOC)) {

            $actor_id_encrypt = urlencode(my_encrypt($cast_actor['actor_id'], KEY));

            if (empty($cast_actor['actor_mn'])) {
                $cast_actors[] = '<span class="cast-actor"><a href="/FilmIndustry/eCommerce/films/index.php?type=actor&name=' . $actor_id_encrypt . '">' . $cast_actor['actor_fn'] . ' ' . $cast_actor['actor_ln'] . '</a><span class="contribution"> (Actor), </span></span>';
            } else {
                $cast_actors[] = '<span class="cast-actor"><a href="/FilmIndustry/eCommerce/films/index.php?type=actor&name=' . $actor_id_encrypt . '">' . $cast_actor['actor_fn'] . ' ' . $cast_actor['actor_mn'] . ' ' . $cast_actor['actor_ln'] . '</a><span class="contribution"> (Actor), </span></span>';
            }

        }

        for ($i = 0; $i < 2; $i++) {
            $cast_values[$i] = $cast_actors[$i];
        }

        $crew_values = $crew_directors = array();

        while ($crew_director = mysqli_fetch_array($r_director, MYSQLI_ASSOC)) {

            $crew_id_encrypt = urlencode(my_encrypt($crew_director['director_id'], KEY));
            
            if (empty($crew_director['director_mn'])) {
                $crew_directors[] = '<span class="crew-director"><a href="/FilmIndustry/eCommerce/films/index.php?type=director&name=' . $crew_id_encrypt . '">' . $crew_director['director_fn'] . ' ' . $crew_director['director_ln'] . '</a><span class="contribution"> (Director)</span></span>';
            } else {
                $crew_directors[] = '<span class="crew-director"><a href="/FilmIndustry/eCommerce/films/index.php?type=director&name=' . $crew_id_encrypt . '">' . $crew_director['director_fn'] . ' ' . $crew_director['director_mn'] . ' ' . $crew_director['director_ln'] . '</a><span class="contribution"> (Director)</span></span>';
            }

        }

        for ($i = 0; $i < 1; $i++) {
            $crew_values[$i] = $crew_directors[$i];
        }

        foreach ($cast_values as $cast) {
            echo $cast;
        }

        foreach ($crew_values as $crew) {
            echo $crew;
        }

        echo '<span class="cast-crew-format-separator">|</span><span class="format-title">Format: </span><span class="format-type">' . $product['product_format'] . '</span><span class="cast-crew-format-separator">|</span><span class="department-title">Department: </span><span class="department-type">' . $product['product_department'] . '</span></div><hr><div class="additional-table-container--info-option"><div class="table-head-container"><table class="additional-options-title"><tbody><tr><td class="additional-format-title">Additional 4K options</td><td class="additional-edition-title secondary-color">Edition</td><td class="additional-disc-title secondary-color">Discs</td><td class="additional-price-title secondary-color">Price</td></tr></tbody></table></div><div class="table-body-container"><table class="additional-options-description"><tbody><tr><td class="additional-format-date-value"><span class="indentation">' . $product['product_format'] . '<br>(' . $product['product_media_date'] . ')</span></td><td class="additional-edition-value">';

        if (!empty($product['product_edition'])) {
            echo $product['product_edition'];
        } else {
            echo '-';
        }
        
        echo '</td><td class="additional-disc-value">' . $product['product_discs'] . '</td><td class="product-price">$' . $product['product_price'] . '</td></tr></tbody></table></div></div><div class="main-description-container"><div class="main-description-inner"><div class="description-title"><h4>Description</h4></div><div class="description-value"><p>' . $product['product_desc'] . '</p></div></div></div></div><div class="cart-wishlist-container"><form method="post" action="/FilmIndustry/eCommerce/products/index.php?isd=' . $product_isd . '" id="cartCard"><div class="cart-card-inner"><div class="cart-product-price"><div class="price-title-left"><span class="cart-price-title">Buy New</span></div><div class="price-value-right"><span class="cart-price-value">$' . $product['product_price'] . '</span></div></div><div class="cart-quantity"><label for="cartQuantity">Qty: </label><select name="quantity" id="cartQuantity">';

        for ($i = 1; $i < ($product['product_stock'] - 1); $i++) {
            echo '<option value="' . $i . '"';

            $selected = ($i === 1) ? ' selected' : '';

            echo $selected . '>' . $i . '</option>';
        }

        echo '</select></div>';

        if (isset($quantityErr)) {
            echo '<div class="quantity-error"><p>' . $quantityErr . '</p></div>';
        }

        echo '<div class="cart-stock"><span class="stock-success">In Stock.</span></div><div class="cart-add-button"><input type="submit" class="product-cart-button" name="submit" value="Add to Cart"></div><div class="wishlist-add-button"><input type="submit" class="product-wishlist-button" name="submit" value="Wishlist"></div></div></form></div></div><div class="cast-crew-info--product-view"><div class="cast-crew-title--product-view"><h2>Cast & Crew</h2></div><div class="cast-crew-container"><div class="director-list-container--product-view"><div class="director-title--product-view"><h4>Directors</h4></div><table class="director-list--product-view"><thead><tr><th colspan="2" class="space--product-view"></th></tr></thead><tbody>';

        mysqli_data_seek($r_director, 0);

        while ($director = mysqli_fetch_array($r_director, MYSQLI_ASSOC)) {

            $director_id_encrypt = urlencode(my_encrypt($director['director_id'], KEY));

            echo '<tr><td class="cast-crew-image--product-view"><a href="/FilmIndustry/eCommerce/artists/profile/index.php?role=director&artist=' . $director_id_encrypt. '"><img alt="' . $director['director_fn'] . ' ' . $director['director_mn'] . ' ' . $director['director_ln'] . '" title="' . $director['director_fn'] . ' ' . $director['director_mn'] . ' ' . $director['director_ln'] . '" src="/FilmIndustry/eCommerce/img/' . $director['director_img'] . '"></a></td><td class="cast-crew-name--product-view"><a href="/FilmIndustry/eCommerce/artists/profile/index.php?role=director&artist=' . $director_id_encrypt. '">' . $director['director_fn'] . ' ' . $director['director_mn'] . ' ' . $director['director_ln'] . '</a></td></tr>';

        }

        echo '</tbody></table></div><div class="writer-list-container--product-view"><div class="writer-title--product-view"><h4>Writers</h4></div><table class="writer-list--product-view"><thead><tr><th colspan="2" class="space--product-view"></th></tr></thead><tbody>';

        while ($writer = mysqli_fetch_array($r_writer, MYSQLI_ASSOC)) {

            $writer_id_encrypt = urlencode(my_encrypt($writer['writer_id'], KEY));

            echo '<tr><td class="cast-crew-image--product-view"><a href="/FilmIndustry/eCommerce/artists/profile/index.php?role=writer&artist=' . $writer_id_encrypt . '"><img alt="' . $writer['writer_fn'] . ' ' . $writer['writer_mn'] . ' ' . $writer['writer_ln'] . '" title="' . $writer['writer_fn'] . ' ' . $writer['writer_mn'] . ' ' . $writer['writer_ln'] . '" src="/FilmIndustry/eCommerce/img/' . $writer['writer_img'] . '"></a></td><td class="cast-crew-name--product-view"><a href="/FilmIndustry/eCommerce/artists/profile/index.php?role=writer&artist=' . $writer_id_encrypt . '">' . $writer['writer_fn'] . ' ' . $writer['writer_mn'] . ' ' . $writer['writer_ln'] . '</a></td></tr>';

        }

        echo '</tbody></table></div><div class="actor-list-container--product-view"><div class="actor-title--product-view"><h4>Actors</h4></div><table class="actor-list--product-view"><thead><tr><th colspan="2" class="space--product-view"></th></tr></thead><tbody>';

        mysqli_data_seek($r_actor, 0);

        while ($actor = mysqli_fetch_array($r_actor, MYSQLI_ASSOC)) {

            $actor_id_encrypt = urlencode(my_encrypt($actor['actor_id'], KEY));

            echo '<tr><td class="cast-crew-image--product-view"><a href="/FilmIndustry/eCommerce/artists/profile/index.php?role=actor&artist=' . $actor_id_encrypt . '"><img alt="' . $actor['actor_fn'] . ' ' . $actor['actor_mn'] . ' ' . $actor['actor_ln'] . '" title="' . $actor['actor_fn'] . ' ' . $actor['actor_mn'] . ' ' . $actor['actor_ln'] . '" src="/FilmIndustry/eCommerce/img/' . $actor['actor_img'] . '"></a></td><td class="cast-crew-name--product-view"><a href="/FilmIndustry/eCommerce/artists/profile/index.php?role=actor&artist=' . $actor_id_encrypt . '">' . $actor['actor_fn'] . ' ' . $actor['actor_mn'] . ' ' . $actor['actor_ln'] . '</a></td></tr>';
        }

        echo '</tbody></table></div><div class="producer-list-container--product-view"><div class="producer-title--product-view"><h4>Producers</h4></div><table class="producer-list--product-view"><thead><tr><th colspan="2" class="space--product-view"></th></tr></thead><tbody>';

        while ($producer = mysqli_fetch_array($r_producer, MYSQLI_ASSOC)) {

            $producer_id_encrypt = urlencode(my_encrypt($producer['producer_id'], KEY));

            echo '<tr><td class="cast-crew-image--product-view"><a href="/FilmIndustry/eCommerce/artists/profile/index.php?role=producer&artist=' . $producer_id_encrypt . '"><img alt="' . $producer['producer_fn'] . ' ' . $producer['producer_mn'] . ' ' . $director['producer_ln'] . '" title="' . $producer['producer_fn'] . ' ' . $producer['producer_mn'] . ' ' . $producer['producer_ln'] . '" src="/FilmIndustry/eCommerce/img/' . $producer['producer_img'] . '"></a></td><td class="cast-crew-name--product-view"><a href="/FilmIndustry/eCommerce/artists/profile/index.php?role=producer&artist=' . $producer_id_encrypt . '">' . $producer['producer_fn'] . ' ' . $producer['producer_mn'] . ' ' . $producer['producer_ln'] . '</a></td></tr>';

        }

        echo '</tbody></table></div><div class="cinematographer-list-container--product-view"><div class="cinematographer-title--product-view"><h4>Cinematographers</h4></div><table class="cinematographer-list--product-view"><thead><tr><th colspan="2" class="space--product-view"></th></tr></thead><tbody>';

        while ($dp = mysqli_fetch_array($r_dp, MYSQLI_ASSOC)) {

            $dp_id_encrypt = urlencode(my_encrypt($dp['dp_id'], KEY));

            echo '<tr><td class="cast-crew-image--product-view"><a href="/FilmIndustry/eCommerce/artists/profile/index.php?role=dp&artist=' . $dp_id_encrypt . '"><img alt="' . $dp['dp_fn'] . ' ' . $dp['dp_mn'] . ' ' . $dp['dp_ln'] . '" title="' . $dp['dp_fn'] . ' ' . $dp['dp_mn'] . ' ' . $dp['dp_ln'] . '" src="/FilmIndustry/eCommerce/img/' . $dp['dp_img'] . '"></a></td><td class="cast-crew-name--product-view"><a href="/FilmIndustry/eCommerce/artists/profile/index.php?role=dp&artist=' . $dp_id_encrypt . '">' . $dp['dp_fn'] . ' ' . $dp['dp_mn'] . ' ' . $dp['dp_ln'] . '</a></td></tr>';

        }

        echo '</tbody></table></div><div class="studio-list-container--product-view"><div class="studio-title--product-view"><h4>Studios</h4></div><table class="studio-list--product-view"><thead><tr><th colspan="2" class="space--product-view"></th></tr></thead><tbody>';

        while ($studio = mysqli_fetch_array($r_studio, MYSQLI_ASSOC)) {

            $studio_id_encrypt = urlencode(my_encrypt($studio['studio_id'], KEY));

            echo '<tr><td class="cast-crew-image--product-view"><a href="/FilmIndustry/eCommerce/studios/profile/index.php?role=studio&company=' . $studio_id_encrypt . '"><img alt="' . $studio['studio_name'] . '" title="' . $studio['studio_name'] . '" src="/FilmIndustry/eCommerce/img/' . $studio['studio_img'] . '"></a></td><td class="cast-crew-name--product-view"><a href="/FilmIndustry/eCommerce/studios/profile/index.php?role=studio&company=' . $studio_id_encrypt . '">' . $studio['studio_name'] . '</a></td></tr>';

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