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

if (!isset($_SESSION['id'])) {

    $url = BASE_URL . 'index.php';
    ob_end_clean();
    header("Location: $url");
    exit();

}

function sanitize_input($input) {
    $input = trim($input);
    $input = stripslashes($input);
    $input = htmlspecialchars($input);
    return $input;
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    #$trimmed = array_map('trim', $_POST);

    $product_name = $department = $format = $theatre_date = $rating = $genres_id = $description = $directors_id = $actors_id = $producers_id = $writers_id = $dps_id = $studios_id = $runtime = $format_type = $video_desc = $audio_desc = $sub_desc = $price = $stock = $sku = FALSE;

    function arraycount($array1, $array2) {
        if (count($array1) == count($array2)) {
            return TRUE;
        } else {
            return FALSE;
        }
    }

    if (preg_match('/^[A-Z0-9 \'.:-]{1,100}$/i', $_POST['product_name'])) {
        $productnameError = '';
        $product_name = mysqli_real_escape_string($dbc, sanitize_input($_POST['product_name']));
    } else {
        $productnameError = 'Please enter the name of the product';
    }

    if (isset($_POST['department'])) {
        $departmentErr = '';
        $department = mysqli_real_escape_string($dbc, sanitize_input($_POST['department']));

    } else {
        $departmentErr = 'Please select which department it is!';
    }

    if (isset($_POST['format'])) {
        $formatErr = '';
        $format = mysqli_real_escape_string($dbc, sanitize_input($_POST['format']));

    } else {
        $formatErr = 'Please select which format it is!';
    }

    if (preg_match('/^[0-9]{4}-[0-9]{2}-[0-9]{2}$/', $_POST['theatre_date'])) {
        $theatre_dateErr = '';
        $theatre_date = mysqli_real_escape_string($dbc, sanitize_input($_POST['theatre_date']));
    } else {
        $theatre_dateErr = 'Please enter when the product had a theatrical release date!';
    }

    if (isset($_POST['rating'])) {
        $ratingErr = '';
        $rating = mysqli_real_escape_string($dbc, sanitize_input($_POST['rating']));
    } else {
        $ratingErr = 'Please select one of the ratings!';
    }

    if (isset($_POST['genre'])) {

        $genreErr = '';

        $checkbox_genre = $_POST['genre'];
        foreach ($checkbox_genre as &$value) {
            $value = sanitize_input($value);
        }
        unset($value);

        $genre_string = implode("','", $checkbox_genre);

        $q_genres = "SELECT id FROM genres WHERE genre IN ('$genre_string')";
        $r_genres = mysqli_query($dbc, $q_genres) or trigger_error("Query: $q_genres\n<br>MySQL Error: " . mysqli_close($dbc));
        $row_gid = mysqli_fetch_all($r_genres, MYSQLI_ASSOC);

        if (!empty($row_gid)) {

            $genreErr = '';

            $genres_id = array();
            foreach ($row_gid as $key => $value) {
                $genres_id[$key] = $value['id'];
            }

        } else {
            $genreErr = 'An error occured. Please select at least one or more genres, or contact the website administrator for assistance. Sorry about that!';
        }

    } else {

        $genreErr = 'Please select at least one or more genres!';

    }

    if (!empty($_POST['description'])) {
        $descripErr = '';
        $description = mysqli_real_escape_string($dbc, sanitize_input($_POST['description']));
    } else {
        $descripErr = 'Please enter a description for the product!';
    }

    if ((preg_match('/^[A-Z]{1}[a-z]+$/', $_POST['directors_first_name']) && preg_match('/^[A-Z]{1}[a-z]+$/', $_POST['directors_last_name'])) || (preg_match('/^([A-Z]{1}[a-z]+[, ]{2})*[A-Z]{1}[a-z]+$/', $_POST['directors_first_name']) && preg_match('/^([A-Z]{1}[a-z]+[, ]{2})*[A-Z]{1}[a-z]+$/', $_POST['directors_last_name']))) {

        $directorErr = '';

        $q_directors = "SELECT first_name, last_name FROM directors";
        $r_directors = mysqli_query($dbc, $q_directors) or trigger_error("Query: $q_directors\n<br>MySQL Error: " . mysqli_error($dbc));
        $directors_exist = mysqli_fetch_all($r_directors, MYSQLI_ASSOC);

        $dexist_fn = $dexist_ln = array();
        foreach ($directors_exist as $key => $value) {
            $dexist_fn[$key] = $value['first_name'];
            $dexist_ln[$key] = $value['last_name'];
        }

        $descape_fn = mysqli_real_escape_string($dbc, sanitize_input($_POST['directors_first_name']));
        $descape_ln = mysqli_real_escape_string($dbc, sanitize_input($_POST['directors_last_name']));

        $dinput_fn = preg_split('/[\s,]+/', $descape_fn);
        $dinput_ln = preg_split('/[\s,]+/', $descape_ln);

        $dmatch_fn = array_filter($dinput_fn, function($validNames) use($dexist_fn) {
            return preg_grep("/^$validNames$/", $dexist_fn);
        });
        $dmatch_ln = array_filter($dinput_ln, function($validNames) use($dexist_ln) {
            return preg_grep("/^$validNames$/", $dexist_ln);
        });

        if (!empty($dmatch_fn) && !empty($dmatch_ln) && arraycount($dinput_fn, $dinput_ln) && arraycount($dinput_fn, $dmatch_fn) && arraycount($dinput_ln, $dmatch_ln)) {

            $directorErr = '';

            $dstring_fn = implode("','", $dmatch_fn);
            $dstring_ln = implode("','", $dmatch_ln);

            $q = "SELECT id FROM directors WHERE first_name IN ('$dstring_fn') AND last_name IN ('$dstring_ln')";
            $r_id = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));
            $row_id = mysqli_fetch_all($r_id, MYSQLI_ASSOC);

            if (!empty($row_id) && arraycount($dmatch_fn, $dmatch_ln)) {

                $directorErr = '';

                $directors_id = array();
                foreach ($row_id as $key => $value) {
                    $directors_id[$key] = $value['id'];
                }

            } else {

                $directorErr = 'An error occured. Please type in the correct names, or contact the website administrator. Sorry about that!';

            }

        } else {

            $directorErr = 'Please enter the correct name(s) of the corresponding director(s)!';

        }

    } else {
        $directorErr = 'Please enter first and last name(s)!';
    }

    if ((preg_match('/^[A-Z]{1}[a-z]+$/', $_POST['actors_first_name']) && preg_match('/^[A-Z]{1}[a-z]+$/', $_POST['actors_last_name'])) || (preg_match('/^([A-Z]{1}[a-z]+[, ]{2})*[A-Z]{1}[a-z]+$/', $_POST['actors_first_name']) && preg_match('/^([A-Z]{1}[a-z]+[, ]{2})*[A-Z]{1}[a-z]+$/', $_POST['actors_last_name']))) {

        $q_actors = "SELECT first_name, last_name FROM actors";
        $r_actors = mysqli_query($dbc, $q_actors) or trigger_error("Query: $q_actors\n<br>MySQL Error " . mysqli_error($dbc));
        $actors_exist = mysqli_fetch_all($r_actors, MYSQLI_ASSOC);

        $aexist_fn = $aexist_ln = array();
        foreach ($actors_exist as $key => $value) {
            $aexist_fn[$key] = $value['first_name'];
            $aexist_ln[$key] = $value['last_name'];
        }

        $aescape_fn = mysqli_real_escape_string($dbc, sanitize_input($_POST['actors_first_name']));
        $aescape_ln = mysqli_real_escape_string($dbc, sanitize_input($_POST['actors_last_name']));

        $ainput_fn = preg_split('/[\s,]+/', $aescape_fn);
        $ainput_ln = preg_split('/[\s,]+/', $aescape_ln);

        $amatch_fn = array_filter($ainput_fn, function($validNames) use($aexist_fn) {
            return preg_grep("/^$validNames$/", $aexist_fn);
        });
        $amatch_ln = array_filter($ainput_ln, function($validNames) use($aexist_ln) {
            return preg_grep("/^$validNames$/", $aexist_ln);
        });

        if (!empty($amatch_fn) && !empty($amatch_ln) && arraycount($ainput_fn, $ainput_ln) && arraycount($ainput_fn, $amatch_fn) && arraycount($ainput_ln, $amatch_ln)) {

            $astring_fn = implode("','", $amatch_fn);
            $astring_ln = implode("','", $amatch_ln);

            $q = "SELECT id FROM actors WHERE first_name IN ('$astring_fn') AND last_name IN ('$astring_ln')";
            $r_id = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error " . mysqli_error($dbc));
            $row_id = mysqli_fetch_all($r_id, MYSQLI_ASSOC);

            if (!empty($row_id) && arraycount($amatch_fn, $amatch_ln)) {

                $actorsErr = '';

                $actors_id = array();
                foreach ($row_id as $key => $value) {
                    $actors_id[$key] = $value['id'];
                }

            } else {

                $actorsErr = 'An error occured. Please type in the correct name, or contact the website administrator. Sorry about that!';

            }

        } else {
            $actorsErr = 'Please enter the correct name(s) of the corresponding actor(s)!';
        }

    } else {
        $actorsErr = 'Please enter the actor(s) first and last name(s)!';
    }

    if ((preg_match('/^[A-Z]{1}[a-z]+$/', $_POST['producers_first_name']) && preg_match('/^[A-Z]{1}[a-z]+$/', $_POST['producers_last_name'])) || (preg_match('/^([A-Z]{1}[a-z]+[, ]{2})*[A-Z]{1}[a-z]+$/', $_POST['producers_first_name']) && preg_match('/^([A-Z]{1}[a-z]+[, ]{2})*[A-Z]{1}[a-z]+$/', $_POST['producers_last_name']))) {

        $producersErr = '';

        $q_producers = "SELECT first_name, last_name FROM producers";
        $r_producers = mysqli_query($dbc, $q_producers) or trigger_error("Query: $q_producers\n<br>MySQL Error " . mysqli_error($dbc));
        $producers_exist = mysqli_fetch_all($r_producers, MYSQLI_ASSOC);

        $pexist_fn = $pexist_ln = array();
        foreach ($producers_exist as $key => $value) {
            $pexist_fn[$key] = $value['first_name'];
            $pexist_ln[$key] = $value['last_name'];
        }

        $pescape_fn = mysqli_real_escape_string($dbc, sanitize_input($_POST['producers_first_name']));
        $pescape_ln = mysqli_real_escape_string($dbc, sanitize_input($_POST['producers_last_name']));

        $pinput_fn = preg_split('/[\s,]+/', $pescape_fn);
        $pinput_ln = preg_split('/[\s,]+/', $pescape_ln);

        $pmatch_fn = array_filter($pinput_fn, function($validNames) use($pexist_fn) {
            return preg_grep("/^$validNames$/", $pexist_fn);
        });
        $pmatch_ln = array_filter($pinput_ln, function($validNames) use($pexist_ln) {
            return preg_grep("/^$validNames$/", $pexist_ln);
        });

        if (!empty($pmatch_fn) && !empty($pmatch_ln) && arraycount($pinput_fn, $pinput_ln) && arraycount($pinput_fn, $pmatch_fn) && arraycount($pinput_ln, $pmatch_ln)) {

            $producersErr = '';

            $pstring_fn = implode("','", $pmatch_fn);
            $pstring_ln = implode("','", $pmatch_ln);

            $q = "SELECT id FROM producers WHERE first_name IN ('$pstring_fn') AND last_name IN ('$pstring_ln')";
            $r_id = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error " . mysqli_error($dbc));
            $row_id = mysqli_fetch_all($r_id, MYSQLI_ASSOC);

            if (!empty($row_id) && arraycount($pmatch_fn, $pmatch_ln)) {

                $producersErr = '';

                $producers_id = array();
                foreach ($row_id as $key => $value) {
                    $producers_id[$key] = $value['id'];
                }

            } else {

                $producersErr = 'An error occured. Please type in the correct names, or contact the website administrator. Sorry about that!';

            }

        } else {
            $producersErr = 'Please enter the correct name(s) of the corresponding producer(s)!';
        }

    } else {
        $producersErr = 'Please enter the producer(s) first and last name(s)!';
    }

    if ((preg_match('/^[A-Z]{1}[a-z]+$/', $_POST['writers_first_name']) && preg_match('/^[A-Z]{1}[a-z]+$/', $_POST['writers_last_name'])) || (preg_match('/^([A-Z]{1}[a-z]+[, ]{2})*[A-Z]{1}[a-z]+$/', $_POST['writers_first_name']) && preg_match('/^([A-Z]{1}[a-z]+[, ]{2})*[A-Z]{1}[a-z]+$/', $_POST['writers_last_name']))) {

        $writersErr = '';

        $q_writers = "SELECT first_name, last_name FROM writers";
        $r_writers = mysqli_query($dbc, $q_writers) or trigger_error("Query: $q_writers\n<br>MySQL Error " . mysqli_error($dbc));
        $writers_exist = mysqli_fetch_all($r_writers, MYSQLI_ASSOC);

        $wexist_fn = $wexist_ln = array();
        foreach ($writers_exist as $key => $value) {
            $wexist_fn[$key] = $value['first_name'];
            $wexist_ln[$key] = $value['last_name'];
        }

        $wescape_fn = mysqli_real_escape_string($dbc, sanitize_input($_POST['writers_first_name']));
        $wescape_ln = mysqli_real_escape_string($dbc, sanitize_input($_POST['writers_last_name']));

        $winput_fn = preg_split('/[\s,]+/', $wescape_fn);
        $winput_ln = preg_split('/[\s,]+/', $wescape_ln);

        $wmatch_fn = array_filter($winput_fn, function($validNames) use($wexist_fn) {
            return preg_grep("/^$validNames$/", $wexist_fn);
        });
        $wmatch_ln = array_filter($winput_ln, function($validNames) use($wexist_ln) {
            return preg_grep("/^$validNames$/", $wexist_ln);
        });

        if (!empty($wmatch_fn) && !empty($wmatch_ln) && arraycount($winput_fn, $winput_ln) && arraycount($winput_fn, $wmatch_fn) && arraycount($winput_ln, $wmatch_ln)) {

            $writersErr = '';

            $wstring_fn = implode("','", $wmatch_fn);
            $wstring_ln = implode("','", $wmatch_ln);

            $q = "SELECT id FROM writers WHERE first_name IN ('$wstring_fn') AND last_name IN ('$wstring_ln')";
            $r_id = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error " . mysqli_error($dbc));
            $row_id = mysqli_fetch_all($r_id, MYSQLI_ASSOC);

            if (!empty($row_id) && arraycount($wmatch_fn, $wmatch_ln)) {

                $writersErr = '';

                $writers_id = array();
                foreach($row_id as $key => $value) {
                    $writers_id[$key] = $value['id'];
                }

            } else {

                $writersErr = 'An error occured. Please type in the correct names, or contact the website administrator. Sorry about that!';

            }

        } else {
            $writersErr = 'Please enter the correct name(s) of the corresponding writer(s)!';
        }

    } else {
        $writersErr = 'Please enter the writer(s) first and last name(s)';
    }

    if ((preg_match('/^[A-Z]{1}[a-z]+$/', $_POST['dp_first_name']) && preg_match('/^[A-Z]{1}[a-z]+$/', $_POST['dp_last_name'])) || (preg_match('/^([A-Z]{1}[a-z]+[, ]{2})*[A-Z]{1}[a-z]+$/', $_POST['dp_first_name']) && preg_match('/^([A-Z]{1}[a-z]+[, ]{2})*[A-Z]{1}[a-z]+$/', $_POST['dp_last_name']))) {

        $dpsErr = '';

        $q_dps = "SELECT first_name, last_name FROM dps";
        $r_dps = mysqli_query($dbc, $q_dps) or trigger_error("Query: $q_dps\n<br>MySQL Error " . mysqli_error($dbc));
        $dps_exist = mysqli_fetch_all($r_dps, MYSQLI_ASSOC);

        $dpexist_fn = $dpexist_ln = array();
        foreach ($dps_exist as $key => $value) {
            $dpexist_fn[$key] = $value['first_name'];
            $dpexist_ln[$key] = $value['last_name'];
        }

        $dpescape_fn = mysqli_real_escape_string($dbc, sanitize_input($_POST['dp_first_name']));
        $dpescape_ln = mysqli_real_escape_string($dbc, sanitize_input($_POST['dp_last_name']));

        $dpinput_fn = preg_split('/[\s,]+/', $dpescape_fn);
        $dpinput_ln = preg_split('/[\s,]+/', $dpescape_ln);

        $dpmatch_fn = array_filter($dpinput_fn, function($validNames) use($dpexist_fn) {
            return preg_grep("/^$validNames$/", $dpexist_fn);
        });
        $dpmatch_ln = array_filter($dpinput_ln, function($validNames) use($dpexist_ln) {
            return preg_grep("/^$validNames$/", $dpexist_ln);
        });

        if (!empty($dpmatch_fn) && !empty($dpmatch_ln) && arraycount($dpinput_fn, $dpinput_ln) && arraycount($dpinput_fn, $dpmatch_fn) && arraycount($dpinput_ln, $dpmatch_ln)) {

            $dpsErr = '';

            $dpstring_fn = implode("','", $dpmatch_fn);
            $dpstring_ln = implode("','", $dpmatch_ln);

            $q = "SELECT id FROM dps WHERE first_name IN ('$dpstring_fn') AND last_name IN ('$dpstring_ln')";
            $r_id = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));
            $row_id = mysqli_fetch_all($r_id, MYSQLI_ASSOC);

            if (!empty($row_id) && arraycount($dpmatch_fn, $dpmatch_ln)) {

                $dpsErr = '';

                $dps_id = array();
                foreach ($row_id as $key => $value) {
                    $dps_id[$key] = $value['id'];
                }

            } else {

                $dpsErr = 'An error occured. Please type in the correct names, or contact the website administrator. Sorry about that!';

            }

        } else {
            $dpsErr = 'Please enter the correct name(s) of the corresponding cinematographer(s)!';
        }

    } else {
        $dpsErr = 'Please enter the cinematographer(s) first and last name(s)';
    }

    if (isset($_POST['studios'])) {

        $studiosErr = '';

        $checkbox_studio = $_POST['studios'];
        foreach ($checkbox_studio as &$value) {
            $value = sanitize_input($value);
        }
        unset($value);

        $studio_string = implode("','", $checkbox_studio);

        $q_studios = "SELECT id FROM studios WHERE studio_name IN ('$studio_string')";
        $r_studios = mysqli_query($dbc, $q_studios) or trigger_error("Query: $q_studios\n<br>MySQL Error " . mysqli_error($dbc));
        $row_studio_id = mysqli_fetch_all($r_studios, MYSQLI_ASSOC);

        if (!empty($row_studio_id)) {

            $studiosErr = '';

            $studios_id = array();
            foreach ($row_studio_id as $key => $value) {
                $studios_id[$key] = $value['id'];
            }

        }

    } else {
        $studiosErr = 'Please select at least one or more entertainment companies!';
    }

    if (preg_match('/^[A-Z0-9 \'.:+-]{3,30}$/i', $_POST['edition'])) {
        $editionErr = '';
        $edition = mysqli_real_escape_string($dbc, sanitize_input($_POST['edition']));
    } elseif (empty($_POST['edition'])) {
        $editionErr = '';
        $edition = '';
    } else {
        $editionErr = 'Please enter what edition the product is!';
    }

    if (preg_match('/^[0-9]{1,999}$/', $_POST['disc']) && is_numeric($_POST['disc'])) {
        $discErr = '';
        $disc = mysqli_real_escape_string($dbc, sanitize_input($_POST['disc']));
    } elseif (empty($_POST['disc'])) {
        $discErr = '';
        $disc = '';
    } else {
        $discErr = 'Please enter how many discs the product contains!';
    }

    if (preg_match('/^[0-9]{1,51420}$/', $_POST['runtime']) && is_numeric($_POST['runtime'])) {
        $runtimeErr = '';
        $runtime = mysqli_real_escape_string($dbc, sanitize_input($_POST['runtime']));
    } else {
        $runtimeErr = 'Please enter how long the product is!';
    }

    if (preg_match('/^[0-9]{4}-[0-9]{2}-[0-9]{2}$/', $_POST['media_date'])) {
        $media_dateErr = '';
        $media_date = mysqli_real_escape_string($dbc, sanitize_input($_POST['media_date']));
    } elseif (empty($_POST['media_date'])) {
        $media_dateErr = '';
        $media_date = '';
    } else {
        $media_dateErr = 'Please enter when the product had a home media release date!';
    }

    if (!empty($_POST['more_description']) && strlen($_POST['more_description'])<256) {
        $more_descripErr = '';
        $more_descrip = mysqli_real_escape_string($dbc, sanitize_input($_POST['more_description']));
    } elseif (empty($_POST['more_description'])) {
        $more_descripErr = '';
        $more_descrip = '';
    } else {
        $more_descripErr = 'Please enter the extra product information!';
    }

    if (preg_match('/^[A-Z0-9 \'.:-]{1,30}$/i', $_POST['format_type'])) {
        $format_typeErr = '';
        $format_type = mysqli_real_escape_string($dbc, sanitize_input($_POST['format_type']));
    } else {
        $format_typeErr = 'Please enter a title for the format type!';
    }

    if (preg_match('/^[A-Z0-9 .:]{4,35}$/i', $_POST['video_desc'])) {
        $video_descErr = '';
        $video_desc = mysqli_real_escape_string($dbc, sanitize_input($_POST['video_desc']));
    } else {
        $video_descErr = 'Please enter the video description!';
    }

    if (!empty($_POST['audio_desc']) && strlen($_POST['audio_desc'])<256) {
        $audio_descErr = '';
        $audio_desc = mysqli_real_escape_string($dbc, sanitize_input($_POST['audio_desc']));
    } else {
        $audio_descErr = 'Please enter the audio description!';
    }

    if (!empty($_POST['subtitles_desc']) && strlen($_POST['subtitles_desc'])<101) {
        $sub_descErr = '';
        $sub_desc = mysqli_real_escape_string($dbc, sanitize_input($_POST['subtitles_desc']));
    } else {
        $sub_descErr = 'Please enter the subtitles description!';
    }

    if (preg_match('/^[0-9]{0,3}[0-9]{1}.[0-9]{2}$/', $_POST['price']) && is_numeric($_POST['price'])) {
        $priceErr = '';
        $price = $_POST['price'];
    } else {
        $priceErr = 'Please enter how much you wish to sell this product';
    }

    if (preg_match('/^[0-9]{1,8}$/', $_POST['stock']) && is_numeric($_POST['stock'])) {
        $stockErr = '';
        $stock = $_POST['stock'];
    } else {
        $stockErr = 'Please enter how many you have!';
    }

    if (preg_match('/^[A-Z0-9]{15}$/', $_POST['sku'])) {
        $skuErr = '';
        $sku = mysqli_real_escape_string($dbc, sanitize_input($_POST['sku']));
    } else {
        $skuErr = 'Please enter your product inventory management!';
    }

    if ($product_name && $department && $format && $theatre_date && $rating && $genres_id && $description && $directors_id && $actors_id && $producers_id && $writers_id && $dps_id && $studios_id && $runtime && $format_type && $video_desc && $audio_desc && $sub_desc && $price && $stock && $sku) {

        $isd = substr(uniqid(rand(), true), 12, 10);

        $q1 = "INSERT INTO specs (spec_format_type, video_desc, audio_desc, subtitles_desc) VALUES ('$format_type', '$video_desc', '$audio_desc', '$sub_desc')";

        $r1 = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error " . mysqli_error($dbc));

        $q2 = "INSERT INTO products (department_id, format_id, name, release_date, description, isd, sku, unit_price, stock, date_created) VALUES ((SELECT id FROM departments WHERE department='$department'), (SELECT id FROM formats WHERE format='$format'), '$product_name', '$theatre_date', '$description', '$isd', '$sku', '$price', '$stock', NOW())";

        $r2 = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error " . mysqli_error($dbc));

        $q3 = "INSERT INTO productdetails (id, rated_id, spec_id, edition, discs, runtime, media_date, more_description) VALUES ((SELECT id FROM products WHERE isd='$isd'), (SELECT id FROM ratings WHERE rated='$rating'), " . mysqli_insert_id($dbc). ", '$edition', '$disc', '$runtime', '$media_date', '$more_descrip')";

        $r3 = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

        #if (mysqli_affected_rows($dbc) == 1) {

        #    $q = "INSERT INTO productdetails (rated_id, spec_id, edition, discs, runtime, media_date, more_description) VALUES ((SELECT id FROM ratings WHERE rated='$rating'), " . mysqli_insert_id($dbc). ", '$edition', '$disc', '$runtime', '$media_date', '$more_descrip')";

        #    $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

            #if (mysqli_affected_rows($dbc) == 1) {

                #$isd = substr(uniqid(rand(), true), 12, 10);

                #$q = "INSERT INTO products (department_id, format_id, name, release_date, description, isd, sku, unit_price, stock, date_created) VALUES ((SELECT id FROM departments WHERE department='$department'), (SELECT id FROM formats WHERE format='$format'), '$product_name', '$theatre_date', '$description', '$isd', '$sku', '$price', '$stock', NOW())";

                #$r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error " . mysqli_error($dbc));

                if (mysqli_affected_rows($dbc) == 1) {

                    $q = "INSERT INTO suppliers_products (supplier_id, product_id) VALUES ({$_SESSION['id']}, (SELECT id FROM products WHERE isd='$isd'))";
                    
                    $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error " . mysqli_error($dbc));

                    if (mysqli_affected_rows($dbc) == 1) {

                        for ($i = 0; $i < count($genres_id); $i++) {
                            $q = "INSERT INTO products_genres (product_id, genre_id) VALUES ((SELECT id FROM products WHERE isd='$isd'), " . $genres_id[$i] . ")";
                            $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error " . mysqli_error($dbc));
                        }

                        if (mysqli_affected_rows($dbc) == 1) {

                            for ($i = 0; $i < count($directors_id); $i++) {
                                $q = "INSERT INTO products_directors (product_id, director_id) VALUES ((SELECT id FROM products WHERE isd='$isd'), " . $directors_id[$i] . ")";
                                $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));
                            }

                            if (mysqli_affected_rows($dbc) == 1) {

                                for ($i = 0; $i < count($actors_id[$i]); $i++) {
                                    $q = "INSERT INTO products_actors (product_id, actor_id) VALUES ((SELECT id FROM products WHERE isd='$isd'), " . $actors_id[$i] . ")";
                                    $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));
                                }

                                if (mysqli_affected_rows($dbc) == 1) {

                                    for ($i = 0; $i < count($producers_id); $i++) {
                                        $q = "INSERT INTO products_producers (product_id, producer_id) VALUES ((SELECT id FROM products WHERE isd='$isd'), " . $producers_id[$i] . ")";
                                        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error " . mysqli_error($dbc));
                                    }

                                    if (mysqli_affected_rows($dbc) == 1) {

                                        for ($i = 0; $i < count($writers_id); $i++) {
                                            $q = "INSERT INTO products_writers (product_id, writer_id) VALUES ((SELECT id FROM products WHERE isd='$isd'), " . $writers_id[$i] . ")";
                                            $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error " . mysqli_error($dbc));
                                        }

                                        if (mysqli_affected_rows($dbc) == 1) {

                                            for ($i = 0; $i < count($dps_id); $i++) {
                                                $q = "INSERT INTO products_dps (product_id, dp_id) VALUES ((SELECT id FROM products WHERE isd='$isd'), " . $dps_id[$i] . ")";
                                                $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error " . mysqli_error($dbc));
                                            }

                                            if (mysqli_affected_rows($dbc) == 1) {

                                                for ($i = 0; $i < count($studios_id); $i++) {
                                                    $q = "INSERT INTO products_studios (product_id, studio_id) VALUES ((SELECT id FROM products WHERE isd='$isd'), " . $studios_id[$i] . ")";
                                                    $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error " . mysqli_error($dbc));
                                                }

                                                if (mysqli_affected_rows($dbc) == 1) {
                                                    echo '<h3>Thank you for entering your product!</h3>';
                                                    include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/suppliers/includes/footer.html');
                                                    exit();
                                                } else {
                                                    echo '<p class="text-danger">An error occured. Please contact the website administrator. We apologize for any inconvenience.</p>';
                                                }

                                            } else {
                                                echo '<p class="text-danger">An error occured. Could not save the studio(s). Please contact the website administrator. We apologize for any inconvenience.</p>';
                                            }

                                        } else {
                                            echo '<p class="text-danger">An error occured. Could not save the cinematographer(s). Please contact the website administrator. We apologize for any inconvenience.</p>';
                                        }

                                    } else {
                                        echo '<p class="text-danger">An error occured. Could not save the writer(s). Please contact the website administrator. We apologize for any inconvenience.</p>';
                                    }

                                } else {
                                    echo '<p class="text-danger">An error occured. Could not save the producer(s). Please contact the website administrator. We apologize for any inconvenience.</p>';
                                }

                            } else {
                                echo '<p class="text-danger">An error occured. Could not save the actor(s). Please contact the website adminstrator. We apologize for any inconvenience.</p>';
                            }

                        } else {
                            echo '<p class="text-danger">An error occured. Could not save the genres. Please contact the website administrator. We apologize for any inconvenience.</p>';
                        }

                    } else {
                        echo '<p class="text-danger">An error occured. Could not save the product. Please contact the website administrator. We apologize for any inconvenience.</p>';
                    }

                } else {
                    echo '<p class="text-danger">One or more of the values of department, format, product title, theatrical release date, description, SKU, price, and/or amount of units could be saved. Either input correctly, or contact the website administrator. We apologize for any inconvenience.</p>';
                }

            #} else {
            #    echo '<p class="text-danger">One or more of the values of ratings, edition, discs, home media release date, and/or extra descriptions could not be saved. Either input correctly, or contact the website administrator. We apologize for any inconvenience.</p>';
            #}

        #} else {
        #    echo '<p class="text-danger">The Product Specs could not be saved. Either input correctly, or contact the website administrator. We apologize for any inconvenience.</p>';
        #}

    } else {
        echo '<p class="text-danger">Please try again.</p>';
    }

}

?>
<h1>Add New Products</h1>
<p><span class="text-danger">* required field</span></p>
<form action="add_products.php" method="post">
    <fieldset>
        <div class="productName">
            <label for="product-name">Product Name: </label>
            <input type="text" name="product_name" id="product-name" size="50" maxlength="100" value="<?php if (isset($_POST['product_name'])) echo sanitize_input($_POST['product_name']); ?>">
            <span class="text-danger">* <?php if (isset($_POST['product-name'])) echo $productnameError; ?></span>
        </div>
        <div class="productDepartment">
            <label for="product-department">Department: </label>
            <input type="radio" name="department" id="product-department" value="Movies" <?php if (isset($_POST['department']) && $_POST['department']=='Movies') echo 'checked'; ?>>Movies
            <input type="radio" name="department" id="product-department" value="TV" <?php if (isset($_POST['department']) && $_POST['department']=='TV') echo 'checked'; ?>>TV
            <span class="text-danger">* <?php if (isset($_POST['department'])) echo $departmentErr; ?></span>
        </div>
        <div class="productFormat">
            <label for="product-format">Format: </label>
            <input type="radio" name="format" id="product-format" value="Blu-ray" <?php if (isset($_POST['format']) && $_POST['format']=='Blu-ray') echo 'checked'; ?>>Blu-ray
            <input type="radio" name="format" id="product-format" value="4K UHD" <?php if (isset($_POST['format']) && $_POST['format']=='4K UHD') echo 'checked'; ?>>4K UHD
            <input type="radio" name="format" id="product-format" value="DVD" <?php if (isset($_POST['format']) && $_POST['format']=='DVD') echo 'checked'; ?>>DVD
            <span class="text-danger">* <?php if (isset($_POST['format'])) echo $formatErr; ?></span>
        </div>
        <div class="productTheatreDate">
            <label for="product-theatre-date">Theatrical Release Date: </label>
            <input type="date" id="product-theatre-date" name="theatre_date" min="1878-06-15" max="<?php echo date('Y-m-d'); ?>" value="<?php if (isset($_POST['theatre_date'])) echo sanitize_input($_POST['theatre_date']); ?>">
            <span class="text-danger">* <?php if (isset($_POST['theatre_date'])) echo $theatre_dateErr; ?></span>
        </div>
        <div class="productRating">
            <label for="product-rating">Rating: </label>
            <select name="rating" id="product-rating">
                <option value="">--Please choose an option--</option>
                <?php

                $q_rating = "SELECT rated FROM ratings ORDER BY id";
                $r_rating = mysqli_query($dbc, $q_rating) or trigger_error("Query: $q_rating\n<br>MySQL Error: " . mysqli_error($dbc));

                while ($rating_row = mysqli_fetch_array($r_rating, MYSQLI_ASSOC)) {
                    echo '<option value="' . $rating_row['rated'] . '" ';

                    $selected = (isset($_POST['rating']) && $_POST['rating']==$rating_row['rated']) ? 'selected' : '';

                    echo $selected . '>' . $rating_row['rated'] . '</option>';
                }

                mysqli_free_result($r_rating);
                ?>
            </select>
            <span class="text-danger">* <?php if (isset($_POST['rating'])) echo $ratingErr; ?></span>
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
            <span class="text-danger">* <?php if (isset($trimmed['genre'])) echo $genreErr; ?></span>
        </div>
        <div class="productDescription">
            <label for="product-description">Description: </label>
            <textarea name="description" id="product-description" cols="110" rows="10" maxlength="1100" placeholder="Comment description"><?php if (isset($_POST['description'])) echo sanitize_input($_POST['description']); ?></textarea>
            <span class="text-danger">* <?php if (isset($_POST['description'])) echo $descripErr; ?></span>
        </div>
        <h3>Product Details</h3>
        <div class="productDirectors">
            <label for="product-directors">Who is the Director(s)? </label>
            <input type="text" id="product-directors" name="directors_first_name" size="50" value="<?php if (isset($_POST['directors_first_name'])) echo sanitize_input($_POST['directors_first_name']); ?>" placeholder="First Name">
            <input type="text" id="product-directors" name="directors_last_name" size="50" value="<?php if (isset($_POST['directors_last_name'])) echo sanitize_input($_POST['directors_last_name']); ?>" placeholder="Last Name">
            <span class="text-danger">* <?php if (isset($_POST['directors_first_name']) || isset($_POST['directors_last_name']) || (isset($_POST['directors_first_name'], $_POST['directors_last_name']))) echo $directorErr; ?></span>
        </div>
        <div class="productActors">
            <label for="product-actors">Actors? </label>
            <input type="text" id="product-actors" name="actors_first_name" size="50" value="<?php if (isset($_POST['actors_first_name'])) echo sanitize_input($_POST['actors_first_name']); ?>" placeholder="First Name">
            <input type="text" id="product-actors" name="actors_last_name" size="50" value="<?php if (isset($_POST['actors_last_name'])) echo sanitize_input($_POST['actors_last_name']); ?>" placeholder="Last Name">
            <span class="text-danger">* <?php if (isset($_POST['actors_first_name']) || isset($_POST['actors_last_name']) || (isset($_POST['actors_first_name'], $_POST['actors_last_name']))) echo $actorsErr; ?></span>
        </div>
        <div class="productProducers">
            <label for="product-producers">Producers? </label>
            <input type="text" id="product-producers" name="producers_first_name" size="50" value="<?php if (isset($_POST['producers_first_name'])) echo sanitize_input($_POST['producers_first_name']); ?>" placeholder="First Name">
            <input type="text" id="product-producers" name="producers_last_name" size="50" value="<?php if (isset($_POST['producers_last_name'])) echo sanitize_input($_POST['producers_last_name']); ?>" placeholder="Last Name">
            <span class="text-danger">* <?php if (isset($_POST['producers_first_name']) || isset($_POST['producers_last_name']) || isset($_POST['producers_first_name'], $_POST['producers_last_name'])) echo $producersErr; ?></span>
        </div>
        <div class="productWriters">
            <label for="product-writers">Writers? </label>
            <input type="text" id="product-writers" name="writers_first_name" size="50" value="<?php if (isset($_POST['writers_first_name'])) echo sanitize_input($_POST['writers_first_name']); ?>" placeholder="First Name">
            <input type="text" id="product-writers" name="writers_last_name" size="50" value="<?php if (isset($_POST['writers_last_name'])) echo sanitize_input($_POST['writers_last_name']); ?>" placeholder="Last Name">
            <span class="text-danger">* <?php if (isset($_POST['writers_first_name']) || isset($_POST['writers_last_name']) || isset($_POST['writers_first_name'], $_POST['writers_last_name'])) echo $writersErr; ?></span>
        </div>
        <div class="productCinematographers">
            <label for="product-cinematographers">Cinematographers? </label>
            <input type="text" id="product-cinematographers" name="dp_first_name" size="50" value="<?php if (isset($_POST['dp_first_name'])) echo sanitize_input($_POST['dp_first_name']); ?>" placeholder="First Name">
            <input type="text" id="product-cinematographers" name="dp_last_name" size="50" value="<?php if (isset($_POST['dp_last_name'])) echo sanitize_input($_POST['dp_last_name']); ?>" placeholder="Last Name">
            <span class="text-danger">* <?php if (isset($_POST['dp_first_name']) || isset($_POST['dp_last_name']) || isset($_POST['dp_first_name'], $_POST['dp_last_name'])) echo $dpsErr; ?></span>
        </div>
        <div class="productFilmCompany">
            <label for="product-film-company">Any Film and/or Entertainment Companies? </label>
            <?php

            $q_studio = "SELECT studio_name FROM studios ORDER BY studio_name";
            $r_studio = mysqli_query($dbc, $q_studio) or trigger_error("Query: $q_studio\n<br>MySQL Error: " . mysqli_errir($dbc));
            
            while ($studio_row = mysqli_fetch_array($r_studio, MYSQLI_ASSOC)) {
                echo '<input type="checkbox" id="product-film-company" name="studios[]" value="' . $studio_row['studio_name'] . '" ';

                $checked_studio = (isset($_POST['studios']) && $_POST['studios']==$studio_row['studio_name']) ? 'checked' : '';
                
                echo $checked_studio . '>' . $studio_row['studio_name'];
            }

            mysqli_free_result($r_studio);
            ?>
            <span class="text-danger">* <?php if (isset($_POST['studios'])) echo $studiosErr; ?></span>
        </div>
        <div class="productEdition">
            <label for="product-edition">Edition: </label>
            <input type="text" id="product-edition" name="edition" value="<?php if (isset($_POST['edition'])) echo sanitize_input($_POST['edition']); ?>" placeholder="Ex: Blu-ray + DVD + Digital">
            <span>(Optional) <span class="text-danger"><?php if (isset($_POST['edition'])) echo $editionErr; ?></span></span>
        </div>
        <div class="productDiscs">
            <label for="product-discs">How many discs? </label>
            <input type="number" id="product-discs" name="disc" value="<?php if (isset($_POST['disc'])) echo sanitize_input($_POST['disc']); ?>" max="999">
            <span>(Optional, but whole numbers only) <span class="text-danger"><?php if (isset($_POST['disc'])) echo $discErr; ?></span></span>
        </div>
        <div class="productRuntime">
            <label for="product-runtime">Runtime (in minutes): </label>
            <input type="number" id="product-runtime" name="runtime" value="<?php if (isset($_POST['runtime'])) echo sanitize_input($_POST['runtime']); ?>" max="99999">
            <span class="text-danger">* <?php if (isset($_POST['runtime'])) echo $runtimeErr; ?></span>
        </div>
        <div class="productMediaDate">
            <label for="product-media-date">When was is it, or will be, released on home media? </label>
            <input type="date" id="product-media-date" name="media_date" min="1975-05-10" value="<?php if (isset($_POST['media_date'])) echo sanitize_input($_POST['media_date']); ?>">
            <span>(Optional) <span class="text-danger"><?php if (isset($_POST['media_date'])) echo $media_dateErr; ?></span></span>
        </div>
        <div class="productExtraDescription">
            <label for="product-extra-description">Any extra descriptions?</label>
            <textarea name="more_description" id="product-extra-description" cols="51" rows="5" maxlength="255" placeholder="Extra stuff..."><?php if (isset($_POST['more_description'])) echo sanitize_input($_POST['more_description']); ?></textarea>
            <span>(Optional, but 255 characters max) <span class="text-danger"><?php if (isset($_POST['more_description'])) echo $more_descripErr; ?></span></span>
        </div>
        <h3>Product Specs</h3>
        <div class="productFormatType">
            <label for="product-format-type">Format Type Title: </label>
            <input type="text" id="product-format-type" name="format_type" size="30" maxlength="30" value="<?php if (isset($_POST['format_type'])) echo sanitize_input($_POST['format_type']); ?>" placeholder="4K UHD MAIN FEATURE">
            <span class="text-danger">* <?php if (isset($_POST['format_type'])) echo $format_typeErr; ?></span>
        </div>
        <div class="productVideoDescription">
            <label for="product-video-description">Video Description: </label>
            <input type="text" id="product-video-description" name="video_desc" size="35" maxlength="35" value="<?php if (isset($_POST['video_desc'])) echo sanitize_input($_POST['video_desc']); ?>" placeholder="2160p Ultra High Definition">
            <span class="text-danger">* <?php if (isset($_POST['video_desc'])) echo $video_descErr; ?></span>
        </div>
        <div class="productAudioDescription">
            <label for="product-audio-description">Audio Description: </label>
            <textarea id="product-audio-description" name="audio_desc" cols="30" rows="10" maxlength="255" placeholder="Dolby Atmos-TrueHD: English, English Descriptive Audio 5.1, Dolby Digital: Français 5.1 (Dubbed in Quebec), Español 5.1"><?php if (isset($_POST['audio_desc'])) echo sanitize_input($_POST['audio_desc']); ?></textarea>
            <span class="text-danger">* <?php if (isset($_POST['audio_desc'])) echo $audio_descErr; ?></span>
        </div>
        <div class="productSubtitlesDescription">
            <label for="product-subtitles-description">Subtitles Description: </label>
            <textarea id="product-subtitles-description" name="subtitles_desc" cols="20" rows="5" maxlength="100" placeholder="English SDH, Français & Español"><?php if (isset($_POST['subtitles_desc'])) echo sanitize_input($_POST['subtitles_desc']); ?></textarea>
            <span class="text-danger">* <?php if (isset($_POST['subtitles_desc'])) echo $sub_descErr; ?></span>
        </div>
        <p>Would you like to add more specifications for different formats?</p>
        <h3>Price, Images, Units, SKU</h3>
        <div class="productPrice">
            <label for="product-price">How much are you selling it? </label>
            <input type="number" id="product-price" name="price" value="<?php if (isset($_POST['price'])) echo $_POST['price']; ?>" step="0.01" min="0" max="9999" placeholder="21.93">
            <span class="text-danger">* <?php if (isset($_POST['price'])) echo $priceErr; ?></span>
        </div>
        <div class="productStock">
            <label for="product-stock">How many do you have? </label>
            <input type="number" id="product-stock" name="stock" value="<?php if (isset($_POST['stock'])) echo $_POST['stock']; ?>" min="0" max="99999999">
            <span class="text-danger">* <?php if (isset($_POST['stock'])) echo $stockErr; ?></span>
        </div>
        <div class="productSKU">
            <label for="product-sku">Stock Keeping Unit (inventory management): </label>
            <input type="text" id="product-sku" name="sku" size="15" maxlength="15" value="<?php if (isset($_POST['sku'])) echo sanitize_input($_POST['sku']); ?>">
            <span class="text-danger">* <?php if (isset($_POST['sku'])) echo $skuErr; ?></span>
        </div>
    </fieldset>
    <div class="productSubmit"><input type="submit" name="submit" value="Submit"></div>
</form>
<?php include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/suppliers/includes/footer.html'); ?>