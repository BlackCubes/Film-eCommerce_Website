<?php

# upload.php (Upload Form Handler).
# Created by Elias Gutierrez.
# Created on July 3, 2019.

// *************************************** //
// ************ DOCUMENTATION ************ //

/*

*/

// ************ DOCUMENTATION ************ //
// *************************************** //

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/config.inc.php');

if (!isset($_SESSION['id'])) {

    $url = BASE_URL . 'index.php';
    ob_end_clean();
    header("Location: $url");
    exit();

}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    $file_1 = $_FILES['file_1'];
    $file_2 = $_FILES['file_2'];

    $file_name_1 = $_FILES['file_1']['name'];
    $file_tmp_name_1 = $_FILES['file_1']['tmp_name'];
    $file_size_1 = $_FILES['file_1']['size'];
    $file_error_1 = $_FILES['file_1']['error'];
    $file_type_1 = $_FILES['file_1']['type'];

    $file_name_2 = $_FILES['file_2']['name'];
    $file_tmp_name_2 = $_FILES['file_2']['tmp_name'];
    $file_size_2 = $_FILES['file_2']['size'];
    $file_error_2 = $_FILES['file_2']['error'];
    $file_type_2 = $_FILES['file_2']['type'];

    $file_ext_1 = explode('.', $file_name_1);
    $file_real_ext_1 = strtolower(end($file_ext_1));

    $file_ext_2 = explode('.', $file_name_2);
    $file_real_ext_2 = strtolower(end($file_ext_2));

    $allowed_ext = array('jpg', 'jpeg', 'png');

    if (in_array($file_real_ext_1, $allowed_ext) && in_array($file_real_ext_2, $allowed_ext)) {
        if ($file_error_1 === 0 && $file_error_2 === 0) {
            if ($file_size_1 < 2000000 && $file_size_2 < 2000000) {

                require(MYSQL);

                $file_new_name_1 = uniqid('', TRUE) . '.' . $file_real_ext_1;
                $file_new_name_2 = uniqid('', TRUE) . '.' . $file_real_ext_2;

                $q = "UPDATE products AS p SET image_1='{$file_new_name_1}' AND image_2='{$file_new_name_2}' JOIN suppliers_products AS sp ON p.id=sp.product_id JOIN suppliers AS s ON sp.supplier_id=s.id AND s.id={$_SESSION['id']} AND p.id={$_POST['isd']}";
                $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error " . mysqli_close($dbc));

                $file_destination_1 = $_SERVER['DOCUMENT_ROOT'] . '/FilmIndustry/uploads/products/' . $file_new_name_1;
                $file_destination_2 = $_SERVER['DOCUMENT_ROOT'] . '/FilmIndustry/uploads/products/' . $file_new_name_2;

                move_uploaded_file($file_tmp_name_1, $file_destination_1);
                move_uploaded_file($file_tmp_name_2, $file_destination_2);

                header("Location: upload_images.php?success");

            } else {
                echo '<p class="text-danger">Your file is too big!</p>';
            }
        } else {
            echo '<p class="text-danger">There was an error uploading your file!</p>';
        }
    } else {
        echo '<p class="text-danger">You cannot upload files of this type! Must be in either .jpg, .jpeg, or .png!</p>';
    }

}

?>