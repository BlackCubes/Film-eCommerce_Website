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

if (isset($_GET['type'], $_GET['name'], $_GET['format'])) {
    if (preg_match('/((\bgenre\b)|(\bactor\b)|(\bdirector\b)|(\bwriter\b)|(\bproducer\b)|(\bdp\b)|(\bstudio\b))(?!;)/', $_GET['type']) && preg_match('/((\bBlu-Ray\b)|(\b4K-UHD\b)|(\bDVD\b)|(\ball\b))(?!;)/', $_GET['format'])) {

        $id_decrypt = urldecode(my_decrypt($_GET['name'], KEY));

        if (is_numeric($id_decrypt) && preg_match('/^[1-9]{1}([0-9]{1,10})?$/', $id_decrypt)) {

            if (sanitize_input($_GET['format']) == 'all') {
                $format_join = '';
                $format_where = '';
                $format_get = '';
            } else {
                $format_join = "JOIN formats f ON p.format_id=f.id";
                $format_where = "AND f.format=";
                $format_get = mysqli_real_escape_string($dbc, sanitize_input($_GET['format']));
            }

            $column_type = mysqli_real_escape_string($dbc, sanitize_input($_GET['type']));
            $table_type = mysqli_real_escape_string($dbc, sanitize_input($_GET['type']) . 's');

            $id = $id_decrypt;

            $q = "SELECT id FROM `{$table_type}` WHERE id={$id}";
            $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));
            $selected_id = mysqli_fetch_array($r, MYSQLI_ASSOC);

            if ((mysqli_num_rows($r) == 1) && ($selected_id['id'] == $id)) {

                $join_table = "JOIN `products_{$table_type}` pa ON p.id=pa.product_id";

                $and_where = "AND pa.{$column_type}_id={$id}";

            } else {
                $url = BASE_URL . 'index.php';
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

    } else {
        $url = BASE_URL . 'index.php';
        ob_end_clean();
        header("Location: $url");
        exit();
    }
} else {
    $join_table = $and_where = $format_get = $format_join = $format_where = '';
}

$breadcrumb = new breadcrumb();
?>
<div class="container">
    <div class="breadcrumb">
        <?php echo $breadcrumb->build(array('TV' => 'tv/index.php')); ?>
    </div>
    <div class="sidebar-a">
        <?php

        $q = "SELECT format FROM formats ORDER BY format LIMIT 2";
        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error " . mysqli_error($dbc));
        echo '<div class="results"><p><b>Formats</b></p>';
        while ($format = mysqli_fetch_array($r, MYSQLI_ASSOC)) {
            echo '<p>' . $format['format'] . '</p>';
        }
        echo '</div>';

        $q = "SELECT DISTINCT g.id AS genre_id, g.genre AS genre FROM genres AS g JOIN products_genres AS pg ON g.id=pg.genre_id JOIN products AS p ON pg.product_id=p.id JOIN departments AS d ON p.department_id=d.id WHERE d.department='TV' ORDER BY g.genre LIMIT 5";
        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error " . mysqli_error($dbc));
        echo '<div class="results"><p><b>Genres</b></p>';
        while ($genre = mysqli_fetch_array($r, MYSQLI_ASSOC)) {

            $genre_id_encrypt = urlencode(my_encrypt($genre['genre_id'], KEY));

            echo '<p><a href="/FilmIndustry/eCommerce/tv/index.php?type=genre&name=' . $genre_id_encrypt . '">' . $genre['genre'] . '</a></p>';
        }
        echo '<a href="/FilmIndustry/eCommerce/products/other.php?department=TV&format=all&type=genre">See more</a></div>';

        $q = "SELECT DISTINCT a.id AS actor_id, a.first_name AS actor_fn, a.middle_name AS actor_mn, a.last_name AS actor_ln FROM actors AS a JOIN products_actors AS pa ON a.id=pa.actor_id JOIN products AS p ON pa.product_id=p.id JOIN departments AS d ON p.department_id=d.id WHERE d.department='TV' ORDER BY a.last_name LIMIT 5";
        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error " . mysqli_error($dbc));
        echo '<div class="results"><p><b>Actors</b></p>';
        while ($actor = mysqli_fetch_array($r, MYSQLI_ASSOC)) {

            $actor_id_encrypt = urlencode(my_encrypt($actor['actor_id'], KEY));

            echo '<p><a href="/FilmIndustry/eCommerce/tv/index.php?type=actor&name=' . $actor_id_encrypt . '">' . $actor['actor_fn'] . ' ' . $actor['actor_mn'] . ' ' . $actor['actor_ln'] . '</a></p>';
        }
        echo '<a href="/FilmIndustry/eCommerce/products/other.php?department=TV&format=DVD&type=actor">See more</a></div>';

        $q = "SELECT DISTINCT dir.id AS director_id, dir.first_name AS director_fn, dir.middle_name AS director_mn, dir.last_name AS director_ln FROM directors AS dir JOIN products_directors AS pdir ON dir.id=pdir.director_id JOIN products AS p ON pdir.product_id=p.id JOIN departments AS d ON p.department_id=d.id WHERE d.department='TV' ORDER BY dir.last_name LIMIT 5";
        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error " . mysqli_error($dbc));
        echo '<div class="results"><p><b>Directors</b></p>';
        while ($director = mysqli_fetch_array($r, MYSQLI_ASSOC)) {

            $director_id_encrypt = urlencode(my_encrypt($director['director_id'], KEY));

            echo '<p><a href="/FilmIndustry/eCommerce/tv/index.php?type=director&name=' . $director_id_encrypt . '">' . $director['director_fn'] . ' ' . $director['director_mn'] . ' ' . $director['director_ln'] . '</a></p>';
        }
        echo '<a href="/FilmIndustry/eCommerce/products/other.php?department=TV&format=DVD&type=director">See more</a></div>';

        $q = "SELECT DISTINCT w.id AS writer_id, w.first_name AS writer_fn, w.middle_name AS writer_mn, w.last_name AS writer_ln FROM writers AS w JOIN products_writers AS pw ON w.id=pw.writer_id JOIN products AS p ON pw.product_id=p.id JOIN departments AS d ON p.department_id=d.id WHERE d.department='TV' ORDER BY w.last_name LIMIT 5";
        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error " . mysqli_error($dbc));
        echo '<div class="results"><p><b>Writers</b></p>';
        while ($writer = mysqli_fetch_array($r, MYSQLI_ASSOC)) {

            $writer_id_encrypt = urlencode(my_encrypt($writer['writer_id'], KEY));

            echo '<p><a href="/FilmIndustry/eCommerce/tv/index.php?type=writer&name=' . $writer_id_encrypt . '">' . $writer['writer_fn'] . ' ' . $writer['writer_mn'] . ' ' . $writer['writer_ln'] . '</a></p>';
        }
        echo '<a href="/FilmIndustry/eCommerce/products/other.php?department=TV&format=DVD&type=writer">See more</a></div>';

        $q = "SELECT DISTINCT pro.id AS producer_id, pro.first_name AS producer_fn, pro.middle_name AS producer_mn, pro.last_name AS producer_ln FROM producers AS pro JOIN products_producers AS ppro ON pro.id=ppro.producer_id JOIN products AS p ON ppro.product_id=p.id JOIN departments AS d ON p.department_id=d.id WHERE d.department='TV' ORDER BY pro.last_name LIMIT 5";
        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error " . mysqli_error($dbc));
        echo '<div class="results"><p><b>Producers</b></p>';
        while ($producer = mysqli_fetch_array($r, MYSQLI_ASSOC)) {

            $producer_id_encrypt = urlencode(my_encrypt($producer['producer_id'], KEY));

            echo '<p><a href="/FilmIndustry/eCommerce/tv/index.php?type=producer&name=' . $producer_id_encrypt . '">' . $producer['producer_fn'] . ' ' . $producer['producer_mn'] . ' ' . $producer['producer_ln'] . '</a></p>';
        }
        echo '<a href="/FilmIndustry/eCommerce/products/other.php?department=TV&format=DVD&type=producer">See more</a></div>';

        $q = "SELECT DISTINCT dp.id AS dp_id, dp.first_name AS dp_fn, dp.middle_name AS dp_mn, dp.last_name AS dp_ln FROM dps AS dp JOIN products_dps AS pdp ON dp.id=pdp.dp_id JOIN products AS p ON pdp.product_id=p.id JOIN departments AS d ON p.department_id=d.id WHERE d.department='TV' ORDER BY dp.last_name LIMIT 5";
        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error " . mysqli_error($dbc));
        echo '<div class="results"><p><b>Cinematographers</b></p>';
        while ($dp = mysqli_fetch_array($r, MYSQLI_ASSOC)) {

            $dp_id_encrypt = urlencode(my_encrypt($dp['dp_id'], KEY));

            echo '<p><a href="/FilmIndustry/eCommerce/tv/index.php?type=dp&name=' . $dp_id_encrypt . '">' . $dp['dp_fn'] . ' ' . $dp['dp_mn'] . ' ' . $dp['dp_ln'] . '</a></p>';
        }
        echo '<a href="/FilmIndustry/eCommerce/products/other.php?department=TV&format=DVD&type=dp">See more</a></div>';

        $q = "SELECT DISTINCT stu.id AS studio_id, stu.studio_name AS studio_name FROM studios AS stu JOIN products_studios AS pstu ON stu.id=pstu.studio_id JOIN products AS p ON pstu.product_id=p.id JOIN departments AS d ON p.department_id=d.id WHERE d.department='TV' ORDER BY stu.studio_name LIMIT 5";
        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error " . mysqli_error($dbc));
        echo '<div class="results"><p><b>Studios</b></p>';
        while ($studio = mysqli_fetch_array($r, MYSQLI_ASSOC)) {

            $studio_id_encrypt = urlencode(my_encrypt($studio['studio_id'], KEY));

            echo '<p><a href="/FilmIndustry/eCommerce/tv/index.php?type=studio&name=' . $studio_id_encrypt . '">' . $studio['studio_name'] . '</a></p>';
        }
        echo '<a href="/FilmIndustry/eCommerce/products/other.php?department=TV&format=DVD&type=studio">See more</a></div>';

        ?>
    </div>
    <div class="main-product">
        <?php

        $display = 21;

        if (isset($_GET['p']) && is_numeric($_GET['p'])) {
            $pages = $_GET['p'];
        } else {
            $q = "SELECT COUNT(DISTINCT p.id) FROM products p $join_table $format_join WHERE p.department_id=2 $and_where $format_where $format_get";
            $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));
            $row = mysqli_fetch_array($r, MYSQLI_NUM);
            $records = $row[0];
            if ($records > $display) {
                $pages = ceil($records/$display);
            } else {
                $pages = 1;
            }
        }

        if (isset($_GET['s']) && is_numeric($_GET['s'])) {
            $start = $_GET['s'];
        } else {
            $start = 0;
        }

        $q = "SELECT DISTINCT p.name AS product_name, p.unit_price AS product_price, p.image_1 AS product_image, p.isd AS product_isd FROM products p $join_table $format_join WHERE p.department_id=2 $and_where $format_where $format_get ORDER BY p.name LIMIT $start, $display";
        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error " . mysqli_error($dbc));

        while ($product = mysqli_fetch_array($r, MYSQLI_ASSOC)) {

            $_SESSION['product_isd'] = $product['product_isd'];

            if (empty($product['product_image'])) {
                $product_image = '/FilmIndustry/eCommerce/img/unavailable-image.jpg';
            } else {
                $product_image = "/FilmIndustry/uploads/products/{$product['product_image']}";
            }

            echo '<div class="container-product"><div class="product-image"><a href="/FilmIndustry/eCommerce/products/index.php?isd=' . $_SESSION['product_isd'] . '"><img src="' . $product_image . '" alt="#"></a></div><div class="product-name">' . $product['product_name'] . '</div><div class="product-price">$' . $product['product_price'] . '</div></div>';

            unset($_SESSION['product_isd']);
        }

        echo '</div>';

        mysqli_free_result($r);
        mysqli_close($dbc);

        if ($pages > 1) {

            echo '<div class="pagination">';
            $current_page = ($start/$display) + 1;

            if ($current_page != 1) {
                echo '<a href="/FilmIndustry/eCommerce/films/index.php?s=' . ($start - $display) . '&p=' . $pages . '">Previous</a>';
            }

            for ($i = 1; $i <= $pages; $i++) {
                if ($i != $current_page) {
                    echo '<a href="/FilmIndustry/eCommerce/films/index.php?s=' . (($display * ($i - 1))) . '&p=' . $pages . '">' . $i . '</a>';
                } else {
                    echo $i . ' ';
                }
            }

            if ($current_page != $pages) {
                echo '<a href="/FilmIndustry/eCommerce/films/index.php?s=' . ($start + $display) . '&p=' . $pages . '">Next</a>';
            }

            echo'</div>';

        }

        ?>
</div>
<?php include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/footer.html'); ?>