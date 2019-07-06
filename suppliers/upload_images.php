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

                $file_new_name_1 = uniqid('', TRUE) . '.' . $file_real_ext_1;
                $file_new_name_2 = uniqid('', TRUE) . '.' . $file_real_ext_2;

                $file_destination_1 = $_SERVER['DOCUMENT_ROOT'] . '/FilmIndustry/uploads/products/' . $file_new_name_1;
                $file_destination_2 = $_SERVER['DOCUMENT_ROOT'] . '/FilmIndustry/uploads/products/' . $file_new_name_2;

                if (move_uploaded_file($file_tmp_name_1, $file_destination_1) && move_uploaded_file($file_tmp_name_2, $file_destination_2)) {

                    $q = "INSERT INTO products AS p (image_1, image_2) VALUES ('{$file_new_name_1}', '{$file_new_name_2}') JOIN suppliers_products AS sp ON p.id=sp.product_id JOIN suppliers AS s ON sp.supplier_id=s.id AND s.id={$_SESSION['id']} AND p.id=(SELECT id FROM p WHERE isd={$_POST['isd']})";

                    $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error " . mysqli_close($dbc));

                } else {
                    echo '<p class="text-danger">Sorry, but there was an error uploading your file!</p>';
                }

                header("Location: upload_images.php");

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
<h1>Upload Your Product Images</h1>
<form action="upload_images.php" method="post" enctype="multipart/form-data">
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

            $q = "SELECT isd, name, sku, image_1, image_2 FROM products AS p JOIN suppliers_products AS sp ON p.id=sp.product_id JOIN suppliers AS s ON sp.supplier_id=s.id AND s.id={$_SESSION['id']}";

            $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));
            
            while ($products = mysqli_fetch_array($r, MYSQLI_ASSOC)) {

                if (empty($products['image_1'])) {
                    $image_1 = '/FilmIndustry/eCommerce/img/unavailable-image.jpg';
                } else {
                    $image_1 = '/FilmIndustry/uploads/products/' . $products['image_1'];
                }

                if (empty($products['image_2'])) {
                    $image_2 = '/FilmIndustry/eCommerce/img/unavailable-image.jpg';
                } else {
                    $image_2 = '/FilmIndustry/uploads/products/' . $products['image_2'];
                }

                echo '<tr><input type="hidden" name="isd" value="' . $products['isd'] . '"><td>' . $products['name'] . '</td><td>' . $products['sku'] . '</td><td><img src="' . $image_1 . '" alt="First Image" width="100" height="100"><p><input type="file" name="file_1"></p></td><td><img src="' . $image_2 . '" alt="Second Image" width="100" height="100"><p><input type="file" name="file_2"></p></td></tr>';

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