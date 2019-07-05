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

if (!isset($_SESSION['id'])) {

    $url = BASE_URL . 'index.php';
    ob_end_clean();
    header("Location: $url");
    exit();

}

$q = "SELECT name, sku, image_1, image_2 FROM products AS p JOIN suppliers_products AS sp ON p.id=sp.product_id JOIN suppliers AS s ON sp.supplier_id=s.id AND s.id={$_SESSION['id']}";

$r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

?>
<h1>Upload Your Product Images</h1>
<form action="upload.php" method="post" enctype="multipart/form-data">
    <table style="width:100%">
        <thead>
            <tr>
                <th>Product Name</th>
                <th>SKU</th>
                <th>First Image</th>
                <th>Second Image</th>
            </tr>
        </thead>
        <tbody>
            <?php
            
            while ($products = mysqli_fetch_array($r, MYSQLI_ASSOC)) {

                if (empty($products['image_1'])) {
                    $image_1 = '/FilmIndustry/eCommerce/img/unavailable-image.jpg';
                } else {
                    $image_1 = '/FilmIndustry/uploads/' . $products['image_1'];
                }

                if (empty($products['image_2'])) {
                    $image_2 = '/FilmIndustry/eCommerce/img/unavailable-image.jpg';
                } else {
                    $image_2 = '/FilmIndustry/uploads/' . $products['image_2'];
                }

                echo '<tr><td>' . $products['name'] . '</td><td>' . $products['sku'] . '</td><td><img src="' . $image_1 . '" alt="First Image" width="100" height="100"><p><input type="file" name="file_1"></p></td><td><img src="' . $image_2 . '" alt="Second Image" width="100" height="100"><p><input type="file" name="file_2"></p></td></tr>';

            }

            ?>
        </tbody>
    </table>
    <input type="submit" name="submit" value="Upload Images">
</form>
<?php

mysqli_free_result($r);

mysqli_close($dbc);

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/suppliers/includes/footer.html');

?>