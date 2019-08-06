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

$page_title = 'Test';

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/header.html');

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

        /*$q = "SELECT DISTINCT p.name AS product_name, p.release_date AS product_release_date, p.description AS product_desc, p.isd AS product_isd, p.sku AS product_sku, p.unit_price AS product_price, p.stock AS product_stock, p.image_1 AS product_image_1, p.image_2 AS product_image_2, f.format AS product_format, d.department AS product_department, pd.edition AS product_edition, pd.discs AS product_discss, pd.runtime AS product_runtime, pd.media_date AS product_media_date, pd.more_description AS product_more_desc, r.rated AS product_rated, s.spec_format_type AS product_spec_format_type, s.video_desc AS product_video_desc, s.audio_desc AS product_audio_desc, s.subtitles_desc AS product_sub_desc, g.genre AS product_genre, a.first_name AS actor_fn, a.middle_name AS actor_mn, a.last_name AS actor_ln, dp.first_name AS dp_fn, dp.middle_name AS dp_mn, dp.last_name AS dp_ln, dir.first_name AS director_fn, dir.middle_name AS director_mn, dir.last_name AS director_ln, pro.first_name AS producer_fn, pro.middle_name AS producer_mn, pro.last_name AS producer_ln, w.first_name AS writer_fn, w.middle_name AS writer_mn, w.last_name AS writer_ln, stu.studio_name AS studio_name FROM products AS p JOIN formats AS f ON p.format_id=f.id JOIN departments AS d ON p.department_id=d.id JOIN productdetails AS pd ON p.id=pd.id JOIN ratings AS r ON pd.rated_id=r.id JOIN specs AS s ON pd.spec_id=s.id JOIN products_genres AS pg ON p.id=pg.product_id JOIN genres AS g ON pg.genre_id=g.id JOIN products_actors AS pa ON p.id=pa.product_id JOIN actors AS a ON pa.actor_id=a.id JOIN products_dps AS pdp ON p.id=pdp.product_id JOIN dps AS dp ON pdp.dp_id=dp.id JOIN products_directors AS pdir ON p.id=pdir.product_id JOIN directors AS dir ON pdir.director_id=dir.id JOIN products_producers AS ppro ON p.id=ppro.product_id JOIN producers AS pro ON ppro.producer_id=pro.id JOIN products_writers AS pw ON p.id=pw.product_id JOIN writers AS w ON pw.writer_id=w.id JOIN products_studios AS pstu ON p.id=pstu.product_id JOIN studios AS stu ON pstu.studio_id=stu.id WHERE (p.isd='" . $product_isd . "')";*/
        $q_product = "SELECT DISTINCT p.name AS product_name, p.release_date AS product_release_date, p.description AS product_desc, p.isd AS product_isd, p.sku AS product_sku, p.unit_price AS product_price, p.stock AS product_stock, p.image_1 AS product_image_1, p.image_2 AS product_image_2, f.format AS product_format, d.department AS product_department, pd.edition AS product_edition, pd.discs AS product_discs, pd.runtime AS product_runtime, pd.media_date AS product_media_date, pd.more_description AS product_more_desc, r.rated AS product_rated, s.spec_format_type AS product_spec_format_type, s.video_desc AS product_video_desc, s.audio_desc AS product_audio_desc, s.subtitles_desc AS product_sub_desc, g.genre AS product_genre FROM products AS p JOIN formats AS f ON p.format_id=f.id JOIN departments AS d ON p.department_id=d.id JOIN productdetails AS pd ON p.id=pd.id JOIN ratings AS r ON pd.rated_id=r.id JOIN specs AS s ON pd.spec_id=s.id JOIN products_genres AS pg ON p.id=pg.product_id JOIN genres AS g ON pg.genre_id=g.id WHERE p.isd='" . $product_isd . "'";
        $r_product = mysqli_query($dbc, $q_product) or trigger_error("Query: $q_product\n<br>MySQL Error: " . mysqli_error($dbc));
        $product = mysqli_fetch_array($r_product, MYSQLI_ASSOC);

        $q_director = "SELECT DISTINCT d.first_name AS director_fn, d.middle_name AS director_mn, d.last_name AS director_ln, d.img AS director_img FROM directors AS d JOIN products_directors AS pd ON d.id=pd.director_id JOIN products AS p ON pd.product_id=p.id WHERE p.isd='" . $product_isd . "'";
        $r_director = mysqli_query($dbc, $q_director) or trigger_error("Query: $q_director\n<br>MySQL Error: " . mysqli_error($dbc));

        $q_writer = "SELECT DISTINCT w.first_name AS writer_fn, w.middle_name AS writer_mn, w.last_name AS writer_ln, w.img AS writer_img FROM writers AS w JOIN products_writers AS pw ON w.id=pw.writer_id JOIN products AS p ON pw.product_id=p.id WHERE p.isd='" . $product_isd . "'";
        $r_writer = mysqli_query($dbc, $q_writer) or trigger_error("Query: $q_writer\n<br>MySQL Error: " . mysqli_error($dbc));

        $q_actor = "SELECT DISTINCT a.first_name AS actor_fn, a.middle_name AS actor_mn, a.last_name AS actor_ln, a.img AS actor_img FROM actors AS a JOIN products_actors AS pa ON a.id=pa.actor_id JOIN products AS p ON pa.product_id=p.id WHERE p.isd='" . $product_isd . "'";
        $r_actor = mysqli_query($dbc, $q_actor) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

        $q_producer = "SELECT DISTINCT pro.first_name AS producer_fn, pro.middle_name AS producer_mn, pro.last_name AS producer_ln, pro.img AS producer_img FROM producers AS pro JOIN products_producers AS ppro ON pro.id=ppro.producer_id JOIN products AS p ON ppro.product_id=p.id WHERE p.isd='" . $product_isd . "'";
        $r_producer = mysqli_query($dbc, $q_producer) or trigger_error("Query: $q_producer\n<br>MySQL Error: " . mysqli_error($dbc));

        $q_dp = "SELECT DISTINCT dp.first_name AS dp_fn, dp.middle_name AS dp_mn, dp.last_name AS dp_ln, dp.img AS dp_img FROM dps AS dp JOIN products_dps AS pdp ON dp.id=pdp.dp_id JOIN products AS p ON pdp.product_id=p.id WHERE p.isd='" . $product_isd . "'";
        $r_dp = mysqli_query($dbc, $q_dp) or trigger_error("Query: $q_dp\n<br>MySQL Error: " . mysqli_error($dbc));

        $q_studio = "SELECT DISTINCT s.first_name AS studio_fn, s.middle_name AS studio_mn, s.last_name AS studio_ln, s.img AS studio_img FROM studios AS s JOIN products_studios AS ps ON s.id=ps.studio_id JOIN products AS p ON ps.product_id=p.id WHERE p.isd='" . $product_isd . "'";
        $r_studio = mysqli_query($dbc, $q_studio) or trigger_error("Query: $q_studio\n<br>MySQL Error: " . mysqli_error($dbc));

        echo '<div class="product-container--view"><div class="main-product-info--view"><div class="product-image--view"><img src="/FilmIndustry/uploads/products/' . $product['product_image_1'] . '"></div></div><div class="cast-crew-product-info--view">';

        

        echo '</div><div class="extra-desc-product-info--view"></div><div class="details-product-info--view"></div></div>';

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