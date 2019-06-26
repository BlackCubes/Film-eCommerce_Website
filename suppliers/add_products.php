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

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    $trimmed = array_map('trim', $_POST);

    if ((preg_match('/^[A-Z]{1}[a-z]+$/', $trimmed['directors_first_name']) && preg_match('/^[A-Z]{1}[a-z]+$/', $trimmed['directors_last_name'])) || (preg_match('/^([A-Z]{1}[a-z]+[, ]{2})*[A-Z]{1}[a-z]+$/', $trimmed['directors_first_name']) && preg_match('/^([A-Z]{1}[a-z]+[, ]{2})*[A-Z]{1}[a-z]+$/', $trimmed['directors_last_name']))) {

        $directorErr = '';

        $q_directors = "SELECT fist_name, last_name FROM directors";
        $r_directors = mysqli_query($dbc, $q_directors) or trigger_error("Query: $q_directors\n<br>MySQL Error: " . mysqli_error($dbc));
        $directors_exist = mysqli_fetch_all($r_directors, MYSQLI_ASSOC);

        $dexist_fn = $dexist_ln = array();
        foreach ($directors_exist as $key => $value) {
            $dexist_fn[$key] = $value['first_name'];
            $dexist_ln[$key] = $value['last_name'];
        }

        $descape_fn = mysqli_real_escape_string($dbc, $trimmed['directors_first_name']);
        $descape_ln = mysqli_real_escape_string($dbc, $trimmed['directors_last_name']);

        $dinput_fn = preg_split('/[\s,]+/', $descape_fn);
        $dinput_ln = preg_split('/[\s,]+/', $descape_ln);

        $dmatch_fn = array_filter($dinput_fn, function($validNames) use($dexist_fn) {
            return preg_grep("/^$validNames$/", $dexist_fn);
        });
        $dmatch_ln = array_filter($dinput_ln, function($validNames) use($dexist_ln) {
            return preg_grep("/^$validNames$/", $dexist_ln);
        });

        function arraycount($array1, $array2) {
            if (count($array1) == count($array2)) {
                return TRUE;
            } else {
                return FALSE;
            }
        }

        if (!empty($dmatch_fn) && !empty($dmatch_ln) && arraycount($dinput_fn, $dinput_ln)) {

            $directorErr = '';

            $dstring_fn = implode("','", $dmatch_fn);
            $dstring_ln = implode("','", $dmatch_ln);

            $q = "SELECT id FROM directors WHERE first_name IN ('$dstring_fn') AND last_name IN ('$dstring_ln')";
            $r_id = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));
            $row_id = mysqli_fetch_all($r_id, MYSQLI_ASSOC);

            if (empty($row_id) || !arraycount($dmatch_fn, $dmatch_ln)) {

                $directorErr = 'An error occured. Please type in the correct names, or contact the website administrator. Sorry about that!';

            } else {

                $directorErr = '';

                $dselected_id = array();
                foreach ($row_id as $key => $value) {
                    $dselected_id[$key] = $value['id'];
                }

            }

        } else {

            $directorErr = 'Please enter the correct name(s) of the corresponding director(s)!';

        }

    } else {
        $directorErr = 'Please enter first and last name(s)!';
    }

    if ((preg_match('/^[A-Z]{1}[a-z]+$/', $trimmed['actors_first_name']) && preg_match('/^[A-Z]{1}[a-z]+$/', $trimmed['actors_last_name'])) || (preg_match('/^([A-Z]{1}[a-z]+[, ]{2})*[A-Z]{1}[a-z]+$/', $trimmed['actors_first_name']) && preg_match('/^([A-Z]{1}[a-z]+[, ]{2})*[A-Z]{1}[a-z]+$/', $trimmed['actors_last_name']))) {

        $q_actors = "SELECT first_name, last_name FROM actors";
        $r_actors = mysqli_query($dbc, $q_actors) or trigger_error("Query: $q_actors\n<br>MySQL Error " . mysqli_error($dbc));
        $actors_exist = mysqli_fetch_all($r_actors, MYSQLI_ASSOC);

        $aexist_fn = $aexist_ln = array();
        foreach ($actors_exist as $key => $value) {
            $aexist_fn[$key] = $value['first_name'];
            $aexist_ln[$key] = $value['last_name'];
        }

        $aescape_fn = mysqli_real_escape_string($dbc, $trimmed['actors_first_name']);
        $aescape_ln = mysqli_real_escape_string($dbc, $trimmed['actors_last_name']);

        $ainput_fn = preg_split('/[\s,]+/', $aescape_fn);
        $ainput_ln = preg_split('/[\s,]+/', $aescape_ln);

        $amatch_fn = array_filter($ainput_fn, function($validNames) use($aexist_fn) {
            return preg_grep("/^$validNames$/", $aexist_fn);
        });
        $amatch_ln = array_filter($ainput_ln, function($validNames) use($aexist_ln) {
            return preg_grep("/^$validNames$/", $aexist_ln);
        });

        function arraycount($array1, $array2) {
            if (count($array1) == count($array2)) {
                return TRUE;
            } else {
                return FALSE;
            }
        }

        if (!empty($amatch_fn) && !empty($amatch_ln) && arraycount($ainput_fn, $ainput_ln)) {

            $astring_fn = implode("','", $amatch_fn);
            $astring_ln = implode("','", $amatch_ln);

            $q = "SELECT id FROM actors WHERE first_name IN ('$astring_fn') AND last_name IN ('$astring_ln')";
            $r_id = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error " . mysqli_error($dbc));
            $row_id = mysqli_fetch_all($r_id, MYSQLI_ASSOC);

            if (empty($row_id) || !arraycount($amatch_fn, $amatch_ln)) {

                $actorsErr = 'An error occured. Please type in the correct name, or contact the website administrator. Sorry about that!';

            } else {

                $aselected_id = array();
                foreach ($row_id as $key => $value) {
                    $aselected_id[$key] = $value['id'];
                }

            }

        } else {
            $actorsErr = 'Please enter the correct name(s) of the corresponding actor(s)!';
        }

    } else {
        $actorsErr = 'Please enter the actor(s) first and last name(s)!';
    }

    if ((preg_match('/^[A-Z]{1}[a-z]+$/', $trimmed['producers_first_name']) && preg_match('/^[A-Z]{1}[a-z]+$/', $trimmed['producers_last_name'])) || (preg_match('/^([A-Z]{1}[a-z]+[, ]{2})*[A-Z]{1}[a-z]+$/', $trimmed['producers_first_name']) && preg_match('/^([A-Z]{1}[a-z]+[, ]{2})*[A-Z]{1}[a-z]+$/', $trimmed['producers_last_name']))) {

        $producersErr = '';

        $q_producers = "SELECT first_name, last_name FROM producers";
        $r_producers = mysqli_query($dbc, $q_producers) or trigger_error("Query: $q_producers\n<br>MySQL Error " . mysqli_error($dbc));
        $producers_exist = mysqli_fetch_all($r_producers, MYSQLI_ASSOC);

        $pexist_fn = $pexist_ln = array();
        foreach ($producers_exist as $key => $value) {
            $pexist_fn[$key] = $value['first_name'];
            $pexist_ln[$key] = $value['last_name'];
        }

        $pescape_fn = mysqli_real_escape_string($dbc, $trimmed['producers_first_name']);
        $pescape_ln = mysqli_real_escape_string($dbc, $trimmed['producers_last_name']);

        $pinput_fn = preg_split('/[\s,]+/', $pescape_fn);
        $pinput_ln = preg_split('/[\s,]+/', $pescape_ln);

        $pmatch_fn = array_filter($pinput_fn, function($validNames) use($pexist_fn) {
            return preg_grep("/^$validNames$/", $pexist_fn);
        });
        $pmatch_ln = array_filter($pinput_ln, function($validNames) use($pexist_ln) {
            return preg_grep("/^$validNames$/", $pexist_ln);
        });

        function arraycount($array1, $array2) {
            if (count($array1) == count($array2)) {
                return TRUE;
            } else {
                return FALSE;
            }
        }

        if (!empty($pmatch_fn) && !empty($pmatch_ln) && arraycount($pinput_fn, $pinput_ln)) {

            $producersErr = '';

            $pstring_fn = implode("','", $pmatch_fn);
            $pstring_ln = implode("','", $pmatch_ln);

            $q = "SELECT id FROM producers WHERE first_name IN ('$pstring_fn') AND last_name IN ('$pstring_ln')";
            $r_id = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error " . mysqli_error($dbc));
            $row_id = mysqli_fetch_all($r_id, MYSQLI_ASSOC);

            if (empty($row_id) || !arraycount($pmatch_fn, $pmatch_ln)) {

                $producersErr = 'An error occured. Please type in the correct names, or contact the website administrator. Sorry about that!';

            } else {

                $producersErr = '';

                $pselected_id = array();
                foreach ($row_id as $key => $value) {
                    $pselected_id[$key] = $value['id'];
                }

            }

        } else {
            $producersErr = 'Please enter the correct name(s) of the corresponding director(s)!';
        }

    } else {
        $producersErr = 'Please enter the producer(s) first and last name(s)!';
    }

}

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
            <span class="text-danger">* <?php if (isset($trimmed['directors_first_name']) || isset($trimmed['directors_last_name']) || (isset($trimmed['directors_first_name'], $trimmed['directors_last_name']))) echo $directorErr; ?></span>
        </div>
        <div class="productActors">
            <label for="product-actors">Actors? </label>
            <input type="text" id="product-actors" name="actors_first_name" size="50" value="<?php if (isset($trimmed['actors_first_name'])) echo $trimmed['actors_first_name']; ?>" placeholder="First Name">
            <input type="text" id="product-actors" name="actors_last_name" size="50" value="<?php if (isset($trimmed['actors_last_name'])) echo $trimmed['actors_last_name']; ?>" placeholder="Last Name">
            <span class="text-danger">* <?php if (isset($trimmed['actors_first_name']) || isset($trimmed['actors_last_name']) || (isset($trimmed['actors_first_name'], $trimmed['actors_last_name']))) echo $actorsErr; ?></span>
        </div>
        <div class="productProducers">
            <label for="product-producers">Producers? </label>
            <input type="text" id="product-producers" name="producers_first_name" size="50" value="<?php if (isset($trimmed['producers_first_name'])) echo $trimmed['producers_first_name']; ?>" placeholder="First Name">
            <input type="text" id="product-producers" name="producers_last_name" size="50" value="<?php if (isset($trimmed['producers_last_name'])) echo $trimmed['producers_last_name']; ?>" placeholder="Last Name">
            <span class="text-danger">* <?php if (isset($trimmed['producers_first_name']) || isset($trimmed['producers_last_name']) || isset($trimmed['producers_first_name'], $trimmed['producers_last_name'])) echo $producersErr; ?></span>
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