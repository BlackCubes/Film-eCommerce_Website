<?php

# add_products.php (Suppliers add products).
# Created on June 14, 2019.
# Created by Elias Gutierrez.

// *************************************** //
// ************ DOCUMENTATION ************ //

/*

*/

// ************ DOCUMENTATION ************ //
// *************************************** //

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

                $q_rating = "SELECT rated FROM ratings ORDER BY id";
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
                echo '<input type="checkbox" id="product-genre" name="genre[]" value="' . $genre_row['genre'] . '" ';

                $checked = (isset($_POST['genre']) && $_POST['genre']==$genre_row['genre']) ? 'checked' : '';

                echo $checked . '>' . $genre_row['genre'];
            }

            mysqli_free_result($r_genre);
            ?>
        </div>
        <div class="productDescription">
            <label for="product-description">Description: </label>
            <textarea name="description" id="product-description" cols="110" rows="10" maxlength="1100" placeholder="Comment description"><?php if (isset($trimmed['description'])) echo $trimmed['description']; ?></textarea>
            <span class="text-danger">* <!--<#?php echo $descripErr; ?>--></span>
        </div>
        <h3>Product Details</h3>
        <div class="productDirectors">
            <label for="product-directors">Who is the Director(s)? </label>
            <input type="text" id="product-directors" name="directors_first_name" size="50" value="<?php if (isset($trimmed['directors_first_name'])) echo $trimmed['directors_first_name']; ?>" placeholder="First Name">
            <input type="text" id="product-directors" name="directors_last_name" size="50" value="<?php if (isset($trimmed['directors_last_name'])) echo $trimmed['directors_last_name']; ?>" placeholder="Last Name">
            <span class="text-danger">* <!--<#?php echo $directorErr; ?>--></span>
        </div>
        <div class="productActors">
            <label for="product-actors">Actors? </label>
            <input type="text" id="product-actors" name="actors_first_name" size="50" value="<?php if (isset($trimmed['actors_first_name'])) echo $trimmed['actors_first_name']; ?>" placeholder="First Name">
            <input type="text" id="product-actors" name="actors_last_name" size="50" value="<?php if (isset($trimmed['actors_last_name'])) echo $trimmed['actors_last_name']; ?>" placeholder="Last Name">
            <span class="text-danger">* <!--<#?php echo $actorsErr; ?>--></span>
        </div>
        <div class="productProducers">
            <label for="product-producers">Producers? </label>
            <input type="text" id="product-producers" name="producers_first_name" size="50" value="<?php if (isset($trimmed['producers_first_name'])) echo $trimmed['producers_first_name']; ?>" placeholder="First Name">
            <input type="text" id="product-producers" name="producers_last_name" size="50" value="<?php if (isset($trimmed['producers_last_name'])) echo $trimmed['producers_last_name']; ?>" placeholder="Last Name">
            <span class="text-danger">* <!--<#?php echo $producersErr; ?>--></span>
        </div>
        <div class="productWriters">
            <label for="product-writers">Writers? </label>
            <input type="text" id="product-writers" name="writers_first_name" size="50" value="<?php if (isset($trimmed['writers_first_name'])) echo $trimmed['writers_first_name']; ?>" placeholder="First Name">
            <input type="text" id="product-writers" name="writers_last_name" size="50" value="<?php if (isset($trimmed['writers_last_name'])) echo $trimmed['writers_last_name']; ?>" placeholder="Last Name">
            <span class="text-danger">* <!--<#?php echo $writersErr; ?>--></span>
        </div>
        <div class="productCinematographers">
            <label for="product-cinematographers">Cinematographers? </label>
            <input type="text" id="product-cinematographers" name="dp_first_name" size="50" value="<?php if (isset($trimmed['dp_first_name'])) echo $trimmed['dp_first_name']; ?>" placeholder="First Name">
            <input type="text" id="product-cinematographers" name="dp_last_name" size="50" value="<?php if (isset($trimmed['dp_last_name'])) echo $trimmed['dp_last_name']; ?>" placeholder="Last Name">
            <span class="text-danger">* <!--<#?php echo $dpsErr; ?>--></span>
        </div>
        <div class="productFilmCompany">
            <label for="product-film-company">Any Film and/or Entertainment Companies? </label>
            <input type="text" id="product-film-company" name="studio_name" size="50" value="<?php if (isset($trimmed['studio_name'])) echo $trimmed['studio_name'] ?>" placeholder="Name">
            <span class="text-danger">* <!--<#?php echo $studiosErr; ?>--></span>
        </div>
        <div class="productEdition">
            <label for="product-edition">Edition: </label>
            <input type="text" id="product-edition" name="edition" value="<?php if (isset($trimmed['edition'])) echo $trimmed['edition']; ?>" placeholder="Ex: Blu-ray + DVD + Digital">
            <span>(Optional)</span>
        </div>
        <div class="productDiscs">
            <label for="product-discs">How many discs? </label>
            <input type="number" id="product-discs" name="disc" value="<?php if (isset($trimmed['disc'])) echo $trimmed['disc']; ?>" max="999">
            <span>(Optional, but whole numbers only)</span>
        </div>
        <div class="productRuntime">
            <label for="product-runtime">Runtime: </label>
            <input type="number" id="product-runtime" name="runtime" value="<?php if (isset($trimmed['runtime'])) echo $trimmed['runtime']; ?>" max="99999">
            <span class="text-danger">* <!--<#?php echo $runtimeErr; ?>--></span>
        </div>
        <div class="productMediaDate">
            <label for="product-media-date">When was is it, or will be, released on home media? </label>
            <input type="date" id="product-media-date" name="media_date" min="1975-05-10" value="<?php if (isset($_POST['media_date'])) echo $_POST['media_date']; ?>">
            <span>(Optional)</span>
        </div>
        <div class="productExtraDescription">
            <label for="product-extra-description">Any extra descriptions?</label>
            <textarea name="more_description" id="product-extra-description" cols="51" rows="5" maxlength="255" placeholder="Extra stuff..."><?php if (isset($trimmed['more_description'])) echo $trimmed['more_description']; ?></textarea>
            <span>(Optional, but 255 characters max)</span>
        </div>
        <h3>Product Specs</h3>
        <div class="productFormatType">
            <label for="product-format-type">Format Type Title: </label>
            <input type="text" id="product-format-type" name="format_type" size="30" maxlength="30" value="<?php if (isset($trimmed['format_type'])) echo $trimmed['format_type']; ?>" placeholder="4K UHD MAIN FEATURE">
            <span class="text-danger">* <!--<#?php echo $format_typeErr; ?>--></span>
        </div>
        <div class="productVideoDescription">
            <label for="product-video-description">Video Description: </label>
            <input type="text" id="product-video-description" name="video_desc" size="35" maxlength="35" value="<?php if (isset($trimmed['video_desc'])) echo $trimmed['video_desc']; ?>" placeholder="2160p Ultra High Definition">
            <span class="text-danger">* <!--<#?php echo $video_descErr; ?>--></span>
        </div>
        <div class="productAudioDescription">
            <label for="product-audio-description">Audio Description: </label>
            <textarea id="product-audio-description" name="audio_desc" cols="30" rows="10" maxlength="255" placeholder="Dolby Atmos-TrueHD: English, English Descriptive Audio 5.1, Dolby Digital: Français 5.1 (Dubbed in Quebec), Español 5.1"><?php if (isset($trimmed['audio_desc'])) echo $trimmed['audio_desc']; ?></textarea>
            <span class="text-danger">* <!--<#?php echo $audio_descErr; ?>--></span>
        </div>
        <div class="productSubtitlesDescription">
            <label for="product-subtitles-description">Subtitles Description: </label>
            <textarea id="product-subtitles-description" name="subtitles_desc" cols="20" rows="5" maxlength="100" placeholder="English SDH, Français & Español"><?php if (isset($trimmed['subtitles_desc'])) echo $trimmed['subtitles_desc']; ?></textarea>
            <span class="text-danger">* <!--<#?php echo $sub_descErr; ?>--></span>
        </div>
        <p>Would you like to add more specifications for different formats?</p>
        <h3>Price, Images, Units, SKU</h3>
        <div class="productPrice">
            <label for="product-price">How much are you selling it? </label>
            <input type="number" id="product-price" name="price" value="<?php if (isset($trimmed['price'])) echo $trimmed['price']; ?>" step="0.01" min="0" max="9999" placeholder="21.93">
            <span class="text-danger">* <!--<#?php echo $priceErr; ?>--></span>
        </div>
        <div class="productStock">
            <label for="product-stock">How many do you have? </label>
            <input type="number" id="product-stock" name="stock" value="<?php if (isset($trimmed['stock'])) echo $trimmed['stock']; ?>" min="0" max="99999999">
            <span class="text-danger">* <!--<#?php echo $stockErr; ?>--></span>
        </div>
        <div class="productSKU">
            <label for="product-sku">Stock Keeping Unit (inventory management): </label>
            <input type="text" id="product-sku" name="sku" size="15" maxlength="15" value="<?php if (isset($trimmed['sku'])) echo $trimmed['sku']; ?>">
            <span class="text-danger">* <!--<#?php echo $skuErr; ?>--></span>
        </div>
    </fieldset>
    <div class="productSubmit"><input type="submit" name="submit" value="Submit"></div>
</form>
<?php include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/suppliers/includes/footer.html'); ?>