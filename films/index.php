<?php

# index.php (Users/Customers Shop for Films page).
# Created by Elias Gutierrez.
# Created on July 6, 2019.

// *************************************** //
// ************ DOCUMENTATION ************ //

/*

*/

// ************ DOCUMENTATION ************ //
// *************************************** //

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/config.inc.php');

$page_title = 'Films';

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/header.html');

require(MYSQL);

if (isset($_GET['type'], $_GET['name'])) {
    if (preg_match('/((\bgenre\b)|(\bactor\b)|(\bdirector\b)|(\bwriter\b)|(\bproducer\b)|(\bdp\b)|(\bstudio\b))(?!;)/', $_GET['type'])) {

        $id_decrypt = urldecode(my_decrypt($_GET['name'], KEY));

    } else {
        $url = BASE_URL . 'index.php';
        ob_end_clean();
        header("Location: $url");
        exit();
    }
}
?>
<div class="container">
    <div class="sidebar-a">
        <?php

        $q = "SELECT format FROM formats ORDER BY format";
        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error " . mysqli_error($dbc));
        echo '<div class="results"><p><b>Formats</b></p>';
        while ($format = mysqli_fetch_array($r, MYSQLI_ASSOC)) {
            echo '<p>' . $format['format'] . '</p>';
        }
        echo '</div>';

        $q = "SELECT DISTINCT g.genre FROM genres AS g JOIN products_genres AS pg ON g.id=pg.genre_id JOIN products AS p ON pg.product_id=p.id JOIN departments AS d ON p.department_id=d.id WHERE d.department='Movies' ORDER BY g.genre LIMIT 5";
        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error " . mysqli_error($dbc));
        echo '<div class="results"><p><b>Genres</b></p>';
        while ($genre = mysqli_fetch_array($r, MYSQLI_ASSOC)) {
            echo '<p>' . $genre['genre'] . '</p>';
        }
        echo '<a href="/FilmIndustry/eCommerce/products/other.php?department=Movies&format=DVD&type=genre">See more</a></div>';

        $q = "SELECT DISTINCT a.first_name, a.middle_name, a.last_name FROM actors AS a JOIN products_actors AS pa ON a.id=pa.actor_id JOIN products AS p ON pa.product_id=p.id JOIN departments AS d ON p.department_id=d.id WHERE d.department='Movies' ORDER BY a.last_name LIMIT 5";
        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error " . mysqli_error($dbc));
        echo '<div class="results"><p><b>Actors</b></p>';
        while ($actor = mysqli_fetch_array($r, MYSQLI_ASSOC)) {
            echo '<p>' . $actor['first_name'] . ' ' . $actor['middle_name'] . ' ' . $actor['last_name'] . '</p>';
        }
        echo '<a href="/FilmIndustry/eCommerce/products/other.php?department=Movies&format=DVD&type=actor">See more</a></div>';

        $q = "SELECT DISTINCT dir.first_name, dir.middle_name, dir.last_name FROM directors AS dir JOIN products_directors AS pdir ON dir.id=pdir.director_id JOIN products AS p ON pdir.product_id=p.id JOIN departments AS d ON p.department_id=d.id WHERE d.department='Movies' ORDER BY dir.last_name LIMIT 5";
        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error " . mysqli_error($dbc));
        echo '<div class="results"><p><b>Directors</b></p>';
        while ($director = mysqli_fetch_array($r, MYSQLI_ASSOC)) {
            echo '<p>' . $director['first_name'] . ' ' . $director['middle_name'] . ' ' . $director['last_name'] . '</p>';
        }
        echo '<a href="/FilmIndustry/eCommerce/products/other.php?department=Movies&format=DVD&type=director">See more</a></div>';

        $q = "SELECT DISTINCT w.first_name, w.middle_name, w.last_name FROM writers AS w JOIN products_writers AS pw ON w.id=pw.writer_id JOIN products AS p ON pw.product_id=p.id JOIN departments AS d ON p.department_id=d.id WHERE d.department='Movies' ORDER BY w.last_name LIMIT 5";
        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error " . mysqli_error($dbc));
        echo '<div class="results"><p><b>Writers</b></p>';
        while ($writer = mysqli_fetch_array($r, MYSQLI_ASSOC)) {
            echo '<p>' . $writer['first_name'] . ' ' . $writer['middle_name'] . ' ' . $writer['last_name'] . '</p>';
        }
        echo '<a href="/FilmIndustry/eCommerce/products/other.php?department=Movies&format=DVD&type=writer">See more</a></div>';

        $q = "SELECT DISTINCT pro.first_name, pro.middle_name, pro.last_name FROM producers AS pro JOIN products_producers AS ppro ON pro.id=ppro.producer_id JOIN products AS p ON ppro.product_id=p.id JOIN departments AS d ON p.department_id=d.id WHERE d.department='Movies' ORDER BY pro.last_name LIMIT 5";
        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error " . mysqli_error($dbc));
        echo '<div class="results"><p><b>Producers</b></p>';
        while ($producer = mysqli_fetch_array($r, MYSQLI_ASSOC)) {
            echo '<p>' . $producer['first_name'] . ' ' . $producer['middle_name'] . ' ' . $producer['last_name'] . '</p>';
        }
        echo '<a href="/FilmIndustry/eCommerce/products/other.php?department=Movies&format=DVD&type=producer">See more</a></div>';

        $q = "SELECT DISTINCT dp.first_name, dp.middle_name, dp.last_name FROM dps AS dp JOIN products_dps AS pdp ON dp.id=pdp.dp_id JOIN products AS p ON pdp.product_id=p.id JOIN departments AS d ON p.department_id=d.id WHERE d.department='Movies' ORDER BY dp.last_name LIMIT 5";
        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error " . mysqli_error($dbc));
        echo '<div class="results"><p><b>Cinematographers</b></p>';
        while ($dp = mysqli_fetch_array($r, MYSQLI_ASSOC)) {
            echo '<p>' . $dp['first_name'] . ' ' . $dp['middle_name'] . ' ' . $dp['last_name'] . '</p>';
        }
        echo '<a href="/FilmIndustry/eCommerce/products/other.php?department=Movies&format=DVD&type=dp">See more</a></div>';

        $q = "SELECT DISTINCT stu.studio_name FROM studios AS stu JOIN products_studios AS pstu ON stu.id=pstu.studio_id JOIN products AS p ON pstu.product_id=p.id JOIN departments AS d ON p.department_id=d.id WHERE d.department='Movies' ORDER BY stu.studio_name LIMIT 5";
        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error " . mysqli_error($dbc));
        echo '<div class="results"><p><b>Studios</b></p>';
        while ($studio = mysqli_fetch_array($r, MYSQLI_ASSOC)) {
            echo '<p>' . $studio['studio_name'] . '</p>';
        }
        echo '<a href="/FilmIndustry/eCommerce/products/other.php?department=Movies&format=DVD&type=studio">See more</a></div>';

        ?>
    </div>
    <div class="main-product">
        <?php

        $display = 21;

        if (isset($_GET['p']) && is_numeric($_GET['p'])) {
            $pages = $_GET['p'];
        } else {
            $q = "SELECT COUNT(id) FROM products";
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

        $q = "SELECT name, unit_price, image_1, isd FROM products ORDER BY name LIMIT $start, $display";
        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error " . mysqli_error($dbc));

        while ($product = mysqli_fetch_array($r, MYSQLI_ASSOC)) {

            $_SESSION['isd'] = $product['isd'];

            if (empty($product['image_1'])) {
                $product_image = '/FilmIndustry/eCommerce/img/unavailable-image.jpg';
            } else {
                $product_image = "/FilmIndustry/uploads/products/{$product['image_1']}";
            }

            echo '<div class="container-product"><div class="product-image"><a href="/FilmIndustry/eCommerce/products/index.php?isd=' . $_SESSION['isd'] . '"><img src="' . $product_image . '" alt="#"></a></div><div class="product-name">' . $product['name'] . '</div><div class="product-price">$' . $product['unit_price'] . '</div></div>';

            unset($_SESSION['isd']);
        }

        mysqli_free_result($r);
        mysqli_close($dbc);

        if ($pages > 1) {

            echo '<div class="product-pagination">';
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
</div>
<?php include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/footer.html'); ?>