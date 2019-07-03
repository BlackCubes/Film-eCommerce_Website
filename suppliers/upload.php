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

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/suppliers/includes/config.inc.php');

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    $file = $_FILES['upload_file'];

    $file_name = $_FILES['upload_file']['name'];

    $file_tmp_name = $_FILES['upload_file']['tmp_name'];

    $file_size = $_FILES['upload_file']['size'];

    $file_error = $_FILES['upload_file']['error'];

    $file_type = $_FILES['upload_file']['type'];

}

?>