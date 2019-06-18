<h1>Add New Products</h1>
<p><span class="alert alert-danger" role="alert">* required field</span></p>
<form action="register.php" method="post">
    <fieldset>
        <div class="productName">
            <label for="product-name">Product Name: </label>
            <input type="text" name="product_name" id="product-name" value="<?php if (isset($trimmed['product_name'])) echo $trimmed['product_name']; ?>">
            <span class="alert alert-danger" role="alert">* <?php echo $nameError; ?></span>
        </div>
        <div class="productDepartment">
            <label for="product-department">Department: </label>
            <input type="radio" name="department" id="product-department" value="Movies" <?php if (isset($_POST['department']) && $_POST['department']=='Movies') echo 'checked'; ?>>Movies
            <input type="radio" name="department" id="product-department" value="TV" <?php if (isset($_POST['department']) && $_POST['department']=='TV') echo 'checked'; ?>>TV
            <span class="alert alert-danger" role="alert">* <?php echo $departmentErr; ?></span>
        </div>
        <div class="productFormat">
            <label for="product-format">Format: </label>
            <input type="radio" name="format" id="product-format" value="Blu-ray" <?php if (isset($_POST['format']) && $_POST['format']=='Blu-ray') echo 'checked'; ?>>Blu-ray
            <input type="radio" name="format" id="product-format" value="4K UHD" <?php if (isset($_POST['format']) && $_POST['format']=='4K UHD') echo 'checked'; ?>>4K UHD
            <input type="radio" name="format" id="product-format" value="DVD" <?php if (isset($_POST['format']) && $_POST['format']=='DVD') echo 'checked'; ?>>DVD
            <span class="alert alert-danger" role="alert">* <?php echo $formatErr; ?></span>
        </div>
        <div class="productYear">
            <label for="product-year">Theatrical Release Year: </label>
        </div>
        <div class="productTheatreDate">
            <label for="product-theatre-date">Theatrical Release Date: </label>
        </div>
        <div class="productRating">
            <label for="product-rating">Rating: </label>
            <select name="rating" id="product-rating">
                <option value="">--Please choose an option--</option>
                <?php

                require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/config.inc.php');

                require(MYSQL);

                if (isset($_POST['department']) && $_POST['department'] == 'Movies') {

                    $q = "SELECT * FROM ratings WHERE rated NOT LIKE 'TV%' AND rated NOT IN ('Unrated') ORDER BY id";
                    $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

                    while ($row = mysqli_fetch_array($r, MYSQLI_ASSOC)) {
                        echo '<option value="' . $row['rated'] . '">' . $row['rated'] . '</option>';
                    }

                    mysqli_free_result($r);
                    mysqi_close($dbc);

                } elseif (isset($_POST['department']) && $_POST['department'] == 'TV') {

                    $q = "SELECT * FROM ratings WHERE rated NOT LIKE 'PG%' AND rated NOT LIKE 'N%' AND rated NOT IN ('G', 'R') ORDER BY id";
                    $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

                    while ($row = mysqli_fetch_array($r, MYSQLI_ASSOC)) {
                        echo '<option value="' . $row['rated'] . '">' . $row['rated'] . '</option>';
                    }

                    mysqli_free_result($r);
                    mysqi_close($dbc);

                } else {

                    $q = "SELECT * FROM ratings ORDER BY id";
                    $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

                    while ($row = mysqli_fetch_array($r, MYSQLI_ASSOC)) {
                        echo '<option value="' . $row['rated'] . '">' . $row['rated'] . '</option>';
                    }

                    mysqli_free_result($r);
                    mysqli_close($dbc);

                }

                mysqli_close($dbc);
                ?>
            </select>
        </div>
        <p><strong>Genre:</strong> </p>
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
        <p><strong>Viddeo Description:</strong> </p>
        <p><strong>Audio Description:</strong> </p>
        <p><strong>Subtitles Description:</strong> </p>
        <h3>Price, Images, Units, SKU</h3>
        <p><strong>Price:</strong> </p>
        <p><strong>How Many In Stock?</strong> </p>
        <p><strong>SKU:</strong> </p>
    </fieldset>
</form>