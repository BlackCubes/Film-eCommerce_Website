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

$breadcrumb = new breadcrumb();
?>

<?php include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/footer.html'); ?>