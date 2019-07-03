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

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    $file = $_FILES['upload_file'];

    $file_name = $_FILES['upload_file']['name'];
    $file_tmp_name = $_FILES['upload_file']['tmp_name'];
    $file_size = $_FILES['upload_file']['size'];
    $file_error = $_FILES['upload_file']['error'];
    $file_type = $_FILES['upload_file']['type'];

    $file_ext = explode('.', $file_name);
    $file_real_ext = strtolower(end($file_ext));

    $allowed_ext = array('jpg', 'jpeg', 'png');

    if (in_array($file_real_ext, $allowed_ext)) {
        if ($file_error === 0) {
            if ($file_size < 2000000) {

                $file_new_name = uniqid('', TRUE) . '.' . $file_real_ext;

                $file_destination = $_SERVER['DOCUMENT_ROOT'] . '/FilmIndustry/uploads/' . $file_new_name;

                move_uploaded_file($file_tmp_name, $file_destination);

                header("Location: upload_images.php");

                echo '<h3 class="text-success">Success!</h3>';

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