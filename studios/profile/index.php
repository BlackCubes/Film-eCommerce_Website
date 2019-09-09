<?php

# index.php (Display Studios once clicked).
# Created on August 11, 2019.
# Created by Elias Gutierrez

// *************************************** //
// ************ DOCUMENTATION ************ //

/*

*/

// ************ DOCUMENTATION ************ //
// *************************************** //

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/config.inc.php');

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/secure.php');

if (isset($_GET['role'], $_GET['company']) && preg_match('/(\bstudio\b)(?!;)/', $_GET['role'])) {

    $id_decrypt = urldecode(my_decrypt($_GET['company'], KEY));

    if (is_numeric($id_decrypt) && preg_match('/^[1-9]{1}([0-9]{1,10})?$/', $id_decrypt)) {

        require(MYSQL);

        $role_column = mysqli_real_escape_string($dbc, $_GET['role']);
        $role_table = mysqli_real_escape_string($dbc, $_GET['role'] . 's');

        $id = $id_decrypt;

        $q = "SELECT id FROM `{$role_table}` WHERE id={$id}";
        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));
        $selected_id = mysqli_fetch_array($r, MYSQLI_ASSOC);

        if ((mysqli_num_rows($r) == 1) && ($selected_id['id'] === $id)) {

            $q_studio = "SELECT studio_name AS studio_name, about AS studio_bio, img AS studio_img FROM `{$role_table}` WHERE id={$id}";
            $r_studio = mysqli_query($dbc, $q_studio) or trigger_error("Query: $q_studio\n<br>MySQL Error: " . mysqli_error($dbc));
            $studio = mysqli_fetch_array($r_studio, MYSQLI_ASSOC);

            $q_ps = "SELECT p.name AS product_name, p.image_1 AS product_img, DATE_FORMAT(p.release_date, '%Y') AS product_year, p.isd AS product_isd FROM products AS p WHERE p.id IN (SELECT product_id FROM `products_{$role_table}` WHERE `{$role_column}_id`={$id}) ORDER BY p.release_date DESC";
            $r_ps = mysqli_query($dbc, $q_ps) or trigger_error("Query: $q_ps\n<br>MySQL Error: " . mysqli_error($dbc));

            $page_title = $studio['studio_name'];

            include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/header.html');

            include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/breadcrumb.php');

            $breadcrumb = new breadcrumb();

            echo '<div class="container--studio-view"><div class="breadcrumb">' . $breadcrumb->build(array(ucfirst($role_table) => $role_table . 'index.php', $studio['studio_name'] => '')) . '</div><div class="main-info--studio-view"><div class="studio-name--studio-view"><h2>' . $studio['studio_name'] . '</h2></div><div class="image--studio-view"><img alt="' . $studio['studio_name'] . '" title="' . $studio['studio_name'] . ' logo" src="/FilmIndustry/eCommerce/img/' . $studio['studio_img'] . '"></div></div><div class="product-studio-info--studio-view"><div class="product-studio-title--studio-view"><h2>Filmography</h2></div><div class="product-studio-list--studio-view">';

            while ($product_studio = mysqli_fetch_array($r_ps, MYSQLI_ASSOC)) {

                $product_isd = $product_studio['product_isd'];

                echo '<div class="container-product-studio--studio-view"><div class="product-year--studio-view"><h4>' . $product_studio['product_year'] . '</h4></div><div class="product-studio-image--studio-view"><a href="/FilmIndustry/eCommerce/products/index.php?isd=' . $product_isd . '"><img src="/FilmIndustry/uploads/products/' . $product_studio['product_img'] . '"></a></div><div class="product-name--studio-view"><h4>' . $product_studio['product_name'] . '</h4></div></div>';

            }

            echo '</div></div></div>';

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
    
} else {

    $url = BASE_URL . 'index.php';

    ob_end_clean();
    header("Location: $url");
    exit();

}
?>