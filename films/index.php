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

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/secure.php');

$page_title = 'Films';

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/header.html');

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/breadcrumb.php');

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/sidebar.php');

require(MYSQL);

if (isset($_GET['type'], $_GET['name'])) {
    if (preg_match('/((\bgenre\b)|(\bactor\b)|(\bdirector\b)|(\bwriter\b)|(\bproducer\b)|(\bdp\b)|(\bstudio\b))(?!;)/', $_GET['type'])) {

        $id_decrypt = urldecode(my_decrypt($_GET['name'], KEY));

        if (is_numeric($id_decrypt) && preg_match('/^[1-9]{1}([0-9]{1,10})?$/', $id_decrypt)) {

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
    $join_table = $and_where = '';
}

if (isset($_GET['format'])) {
    if (preg_match('/((\bBlu-ray\b)|(\b4K-UHD\b)|(\bDVD\b)|(\ball\b))(?!;)/', $_GET['format'])) {

        if (sanitize_input($_GET['format']) == 'all') {
            
            $format_join = $format_where = $format_get = '';
            $format_to_url = sanitize_input($_GET['format']);

        } else {

            $format_join = "JOIN formats f ON p.format_id=f.id";

            $format_get = mysqli_real_escape_string($dbc, sanitize_input($_GET['format']));

            $format_where = "AND f.format='{$format_get}'";

            $format_to_url = sanitize_input($_GET['format']);

        }

    } else {
        $url = BASE_URL . 'index.php';
        ob_end_clean();
        header("Location: $url");
        exit();
    }
} else {
    $format_get = $format_join = $format_where = '';
    $format_to_url = 'all';
}

$breadcrumb = new breadcrumb();
$sidebar = new sidebarFilter();
$sidebarMobile = new sidebarMobile();
?>
<div class="container">
    <div class="breadcrumb">
        <?php echo $breadcrumb->build(array('Films' => 'films/index.php')); ?>
    </div>
    <div class="sidebar-mobile">
        <input type="radio" name="categories" id="Formats" value="Formats" checked>
        <input type="radio" name="categories" id="Genres" value="Genres">
        <input type="radio" name="categories" id="Actors" value="Actors">
        <input type="radio" name="categories" id="Directors" value="Directors">
        <input type="radio" name="categories" id="Writers" value="Writers">
        <input type="radio" name="categories" id="Producers" value="Producers">
        <input type="radio" name="categories" id="Cinematographers" value="Cinematographers">
        <input type="radio" name="categories" id="Studios" value="Studios">
        <ol class="filters">
            <li><label for="Formats">Formats</label></li>
            <li><label for="Genres">Genres</label></li>
            <li><label for="Actors">Actors</label></li>
            <li><label for="Directors">Directors</label></li>
            <li><label for="Writers">Writers</label></li>
            <li><label for="Producers">Producers</label></li>
            <li><label for="Cinematographers">Cinematographers</label></li>
            <li><label for="Studios">Studos</label></li>
        </ol>
        <ol class="posts">
            <?php

            echo $sidebarMobile->formatMobile('films', $dbc) . $sidebarMobile->genreMobile('films', departmentNameChange('films'), $dbc, $format_join, $format_where, $format_to_url) . $sidebarMobile->actorMobile('films', departmentNameChange('films'), $dbc, $format_join, $format_where, $format_to_url) . $sidebarMobile->directorMobile('films', departmentNameChange('films'), $dbc, $format_join, $format_where, $format_to_url) . $sidebarMobile->writerMobile('films', departmentNameChange('films'), $dbc, $format_join, $format_where, $format_to_url) . $sidebarMobile->producerMobile('films', departmentNameChange('films'), $dbc, $format_join, $format_where, $format_to_url) . $sidebarMobile->dpMobile('films', departmentNameChange('films'), $dbc, $format_join, $format_where, $format_to_url) . $sidebarMobile->studioMobile('films', departmentNameChange('films'), $dbc, $format_join, $format_where, $format_to_url);

            ?>
        </ol>
    </div>
    <div class="sidebar-a">
        <?php

        echo $sidebar->formatConstruction('films', $dbc) . $sidebar->genreConstruction('films', departmentNameChange('films'), $dbc, $format_join, $format_where, $format_to_url) . $sidebar->actorConstruction('films', departmentNameChange('films'), $dbc, $format_join, $format_where, $format_to_url) . $sidebar->directorConstruction('films', departmentNameChange('films'), $dbc, $format_join, $format_where, $format_to_url) . $sidebar->writerConstruction('films', departmentNameChange('films'), $dbc, $format_join, $format_where, $format_to_url) . $sidebar->producerConstruction('films', departmentNameChange('films'), $dbc, $format_join, $format_where, $format_to_url) . $sidebar->dpConstruction('films', departmentNameChange('films'), $dbc, $format_join, $format_where, $format_to_url) . $sidebar->studioContruction('films', departmentNameChange('films'), $dbc, $format_join, $format_where, $format_to_url);

        ?>
    </div>
    <div class="main-product">
        <?php

        $display = 18;

        if (isset($_GET['p']) && is_numeric($_GET['p'])) {
            $pages = $_GET['p'];
        } else {
            $q = "SELECT COUNT(DISTINCT p.id) FROM products p $join_table $format_join WHERE p.department_id=1 $and_where $format_where";
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

        $q = "SELECT DISTINCT p.name AS product_name, p.unit_price AS product_price, p.image_1 AS product_image, p.isd AS product_isd FROM products p $join_table $format_join WHERE p.department_id=1 $and_where $format_where ORDER BY p.name LIMIT $start, $display";
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
                echo '<a href="/FilmIndustry/eCommerce/films/index.php?s=0&p=' . $pages . '"><i class="fas fa-caret-left"></i><i class="fas fa-caret-left"></i></a><a href="/FilmIndustry/eCommerce/films/index.php?s=' . ($start - $display) . '&p=' . $pages . '"><i class="fas fa-caret-left"></i></a>';
            }

            for ($i = 1; $i <= $pages; $i++) {
                if ($i != $current_page) {
                    echo '<a href="/FilmIndustry/eCommerce/films/index.php?s=' . (($display * ($i - 1))) . '&p=' . $pages . '">' . $i . '</a>';
                } else {
                    echo '<a class="active">' . $i . '</a>';
                }
            }

            if ($current_page != $pages) {
                echo '<a href="/FilmIndustry/eCommerce/films/index.php?s=' . ($start + $display) . '&p=' . $pages . '"><i class="fas fa-caret-right"></i></a><a href="/FilmIndustry/eCommerce/films/index.php?s=' . (($display * ($pages - 1))) . '&p=' . $pages . '"><i class="fas fa-caret-right"></i><i class="fas fa-caret-right"></i></a>';
            }

            echo'</div>';

        }

        ?>
</div>
<?php include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/footer.html'); ?>