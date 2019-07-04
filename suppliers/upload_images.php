<?php

# upload_images.php (Suppliers uploading images to products).
# Created by Elias Gutierrez.
# Created on July 3, 2019.

// *************************************** //
// ************ DOCUMENTATION ************ //

/*

*/

// ************ DOCUMENTATION ************ //
// *************************************** //

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/config.inc.php');

$page_title = 'Upload Product Images';

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/suppliers/includes/header.html');

require(MYSQL);

if (!isset($_GET['id'])) {

    $url = BASE_URL . 'index.php';
    ob_end_clean();
    header("Location: $url");
    exit();

}

?>

<h1>Upload Your Product Images</h1>
<form action="upload.php" method="post" enctype="multipart/form-data">
    <table>
        <thead>
            <tr>
                <th>Your Current Products</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td></td>
            </tr>
        </tbody>
    </table>
    <input type="file" name="upload_file">
    <input type="submit" name="submit" value="Upload Image">
</form>

<?php include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/suppliers/includes/footer.html'); ?>