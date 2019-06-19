<?php

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/config.inc.php');

$page_title = 'Add Products';

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/suppliers/includes/header.html');

require(MYSQL);

?>
<h1>Add New Products</h1>
<p><span class="text-danger">* required field</span></p>
<form action="register.php" method="post">
    <fieldset>
        <div class="productName">
            <label for="product-name">Product Name: </label>
            <input type="text" name="product_name" id="product-name" value="<?php if (isset($trimmed['product_name'])) echo $trimmed['product_name']; ?>">
            <span class="text-danger">* <!--<#?php echo $nameError; ?>--></span>
        </div>
        <div class="productDepartment">
            <label for="product-department">Department: </label>
            <input type="radio" name="department" id="product-department" value="Movies" <?php if (isset($_POST['department']) && $_POST['department']=='Movies') echo 'checked'; ?>>Movies
            <input type="radio" name="department" id="product-department" value="TV" <?php if (isset($_POST['department']) && $_POST['department']=='TV') echo 'checked'; ?>>TV
            <span class="text-danger">* <!--<#?php echo $departmentErr; ?>--></span>
        </div>
        <div class="productFormat">
            <label for="product-format">Format: </label>
            <input type="radio" name="format" id="product-format" value="Blu-ray" <?php if (isset($_POST['format']) && $_POST['format']=='Blu-ray') echo 'checked'; ?>>Blu-ray
            <input type="radio" name="format" id="product-format" value="4K UHD" <?php if (isset($_POST['format']) && $_POST['format']=='4K UHD') echo 'checked'; ?>>4K UHD
            <input type="radio" name="format" id="product-format" value="DVD" <?php if (isset($_POST['format']) && $_POST['format']=='DVD') echo 'checked'; ?>>DVD
            <span class="text-danger">* <!--<#?php echo $formatErr; ?>--></span>
        </div>
        <div class="productTheatreDate">
            <label for="product-theatre-date">Theatrical Release Date: </label>
            <input type="date" id="product-theatre-date" name="theatre_date" min="1878-06-15" max="<?php echo date('Y-m-d'); ?>" value="<?php if (isset($_POST['theatre_date'])) echo $_POST['theatre_date']; ?>">
            <span class="text-danger">* <!--<#?php echo $theatre_dateErr; ?>--></span>
        </div>
        <div class="productRating">
            <label for="product-rating">Rating: </label>
            <select name="rating" id="product-rating">
                <option value="">--Please choose an option--</option>
                <?php

                $q_rating = "SELECT rating FROM ratings ORDER BY id";
                $r_rating = mysqli_query($dbc, $q_rating) or trigger_error("Query: $q_rating\n<br>MySQL Error: " . mysqli_error($dbc));

                while ($rating_row = mysqli_fetch_array($r_rating, MYSQLI_ASSOC)) {
                    echo '<option value="' . $rating_row['rated'] . '">' . $rating_row['rated'] . '</option>';
                }

                mysqli_free_result($r_rating);
                ?>
            </select>
            <span class="text-danger">* <!--<#?php echo $ratingErr; ?>--></span>
        </div>
        <div class="productGenre">
            <label for="product-genre">Genre: </label>
            <?php

            $q_genre = "SELECT genre FROM genres ORDER BY genre";
            $r_genre = mysqli_query($dbc, $q_genre) or trigger_error("Query: $q_genre\n<br>MySQL Error: " . mysqli_error($dbc));

            while ($genre_row = mysqli_fetch_array($r_genre, MYSQLI_ASSOC)) {
                echo '<input type="checkbox" id="product-genre" name="genre" value="' . $genre_row['genre'] . '" ';

                function isChecked($chkname, $value) {
                    if (!empty($_POST[$chkname])) {
                        foreach($_POST[$chkname] as $chkval) {
                            if ($chkval == $value) {
                                return true;
                            }
                        }
                    }
                    return false;
                }

                $checked = isChecked('genre', $genre_row['genre']) ? 'checked' : '';

                echo $checked . '>' . $genre_row['genre'];
            }

            mysqli_free_result($r_genre);
            mysqli_close($dbc);
            ?>
        </div>
        <p><strong>Description:</strong> </p>
        <h3>Product Details</h3>
        <p><strong>Directors:</strong> </p>
        <p><strong>Actors:</strong> </p>
        <p><strong>Producers:</strong> </p>
        <p><strong>Writers:</strong> </p>
        <p><strong>Cinematographers:</strong> </p>
        <p><strong>Film Company:</strong> </p>
        <p><strong>Edition:</strong> </p>
        <p><strong>How Many Discs:</strong> </p>
        <p><strong>Runtime:</strong> </p>
        <p><strong>Home Media Release Date:</strong> </p>
        <p><strong>Extra Description:</strong> </p>
        <h3>Product Specs</h3>
        <p><strong>Format Type:</strong> </p>
        <p><strong>Video Description:</strong> </p>
        <p><strong>Audio Description:</strong> </p>
        <p><strong>Subtitles Description:</strong> </p>
        <h3>Price, Images, Units, SKU</h3>
        <p><strong>Price:</strong> </p>
        <p><strong>How Many In Stock?</strong> </p>
        <p><strong>SKU:</strong> </p>
    </fieldset>
</form>
<?php include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/suppliers/includes/footer.html'); ?>