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

$page_title = 'Upload Images';

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/suppliers/includes/header.html');

?>

<h1>Upload Images</h1>
<form action="upload.php" method="post" enctype="multipart/form-data">
    <input type="file" name="upload_file">
    <input type="submit" name="submit" value="Upload Image">
</form>

<?php include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/suppliers/includes/footer.html'); ?>