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

    $product_name = $department = $format = $theatre_date = $rating = $genres_id = $description = $directors_id = $actors_id = $producers_id = $writers_id = $dps_id = $studios_id = $runtime = $format_type = $video_desc = $audio_desc = $sub_desc = $price = $stock = $sku = FALSE;

    if (preg_match('/^[A-Z0-9 \'.:-]{1,100}$/i', $trimmed['product_name'])) {
        $productnameError = '';
        $product_name = mysqli_real_escape_string($dbc, $trimmed['product_name']);
    } else {
        $productnameError = 'Please enter the name of the product';
    }

    if (!empty($_POST['department'])) {
        $departmentErr = '';
        $department = $_POST['department'];

    } else {
        $departmentErr = 'Please select which department it is!';
    }

    if (!empty($_POST['format'])) {
        $formatErr = '';
        $format = $_POST['format'];

    } else {
        $formatErr = 'Please select which format it is!';
    }

    if (preg_match('/^[0-9]{4}-[0-9]{2}-[0-9]{2}$/', $trimmed['theatre_date'])) {
        $theatre_dateErr = '';
        $theatre_date = $trimmed['theatre_date'];
    } else {
        $theatre_dateErr = 'Please enter when the product had a theatrical release date!';
    }

    if (isset($_POST['rating'])) {
        $ratingErr = '';
        $rating = $_POST['rating'];
    } else {
        $ratingErr = 'Please select one of the ratings!';
    }

    if (!empty($_POST['genre'])) {

        $genreErr = '';

        $genre_escape = mysqli_real_escape_string($dbc, $_POST['genre']);
        $genre_strip = stripslashes($genre_escape);
        $genre_special = htmlspecialchars($genre_strip);

        $genre_string = implode("','", $genre_special);

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

    if (!empty($trimmed['description'])) {
        $descripErr = '';
        $descrip_strip = stripslashes($trimmed['description']);
        $description = htmlspecialchars($descrip_strip);
    } else {
        $descripErr = 'Please enter a description for the product!';
    }

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

    if ((preg_match('/^[A-Z]{1}[a-z]+$/', $trimmed['writers_first_name']) && preg_match('/^[A-Z]{1}[a-z]+$/', $trimmed['writers_last_name'])) || (preg_match('/^([A-Z]{1}[a-z]+[, ]{2})*[A-Z]{1}[a-z]+$/', $trimmed['writers_first_name']) && preg_match('/^([A-Z]{1}[a-z]+[, ]{2})*[A-Z]{1}[a-z]+$/', $trimmed['writers_last_name']))) {

        $writersErr = '';

        $q_writers = "SELECT first_name, last_name FROM writers";
        $r_writers = mysqli_query($dbc, $q_writers) or trigger_error("Query: $q_writers\n<br>MySQL Error " . mysqli_error($dbc));
        $writers_exist = mysqli_fetch_all($r_writers, MYSQLI_ASSOC);

        $wexist_fn = $wexist_ln = array();
        foreach ($writers_exist as $key => $value) {
            $wexist_fn[$key] = $value['first_name'];
            $wexist_ln[$key] = $value['last_name'];
        }

        $wescape_fn = mysqli_real_escape_string($dbc, $trimmed['writers_first_name']);
        $wescape_ln = mysqli_real_escape_string($dbc, $trimmed['writers_last_name']);

        $winput_fn = preg_split('/[\s,]+/', $wescape_fn);
        $winput_ln = preg_split('/[\s,]+/', $wescape_ln);

        $wmatch_fn = array_filter($winput_fn, function($validNames) use($wexist_fn) {
            return preg_grep("/^$validNames$/", $wexist_fn);
        });
        $wmatch_ln = array_fitler($winput_ln, function($validNames) use($wescape_ln) {
            return preg_grep("/^$validNames$/", $wexist_ln);
        });

        function arraycount($array1, $array2) {
            if (count($array1) == count($array2)) {
                return TRUE;
            } else {
                return FALSE;
            }
        }

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

    if ((preg_match('/^[A-Z]{1}[a-z]+$/', $trimmed['dp_first_name']) && preg_match('/^[A-Z]{1}[a-z]+$/', $trimmed['dp_last_name'])) || (preg_match('/^([A-Z]{1}[a-z]+[, ]{2})*[A-Z]{1}[a-z]+$/', $trimmed['dp_first_name']) && preg_match('/^([A-Z]{1}[a-z]+[, ]{2})*[A-Z]{1}[a-z]+$/', $trimmed['dp_last_name']))) {

        $dpsErr = '';

        $q_dps = "SELECT first_name, last_name FROM dps";
        $r_dps = mysqli_query($dbc, $q_dps) or trigger_error("Query: $q_dps\n<br>MySQL Error " . mysqli_error($dbc));
        $dps_exist = mysqli_fetch_all($r_dps, MYSQLI_ASSOC);

        $dpexist_fn = $dpexist_ln = array();
        foreach ($dps_exist as $key => $value) {
            $dpexist_fn[$key] = $value['first_name'];
            $dpexist_ln[$key] = $value['last_name'];
        }

        $dpescape_fn = mysqli_real_escape_string($dbc, $trimmed['dp_first_name']);
        $dpescape_ln = mysqli_real_escape_string($dbc, $trimmed['dp_last_name']);

        $dpinput_fn = preg_split('/[\s,]+/', $dpescape_fn);
        $dpinput_ln = preg_split('/[\s,]+/', $dpescape_ln);

        $dpmatch_fn = array_filter($dpinput_fn, function($validNames) use($dpexist_fn) {
            return preg_grep("/^$validNames$/", $dpescape_fn);
        });
        $dpmatch_ln = array_filter($dpinput_ln, function($validNames) use($dpexist_ln) {
            return preg_grep("/^$validNames$/", $dpexist_ln);
        });

        function arraycount($array1, $array2) {
            if (count($array1) == count($array2)) {
                return TRUE;
            } else {
                return FALSE;
            }
        }

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

    if (!empty($_POST['studios'])) {

        $studiosErr = '';

        $studio_escape = mysqli_real_escape_string($dbc, $_POST['studios']);
        $studio_strip = stripslashes($studio_escape);
        $studio_special = htmlspecialchars($studio_strip);

        $studio_string = implode("','", $studio_special);

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

    if (preg_match('/^[A-Z0-9 \'.:+-]{3-30}$/i', $trimmed['edition'])) {
        $editionErr = '';
        $edition = mysqli_real_escape_string($dbc, $trimmed['edition']);
    } elseif (empty($trimmed['edition'])) {
        $editionErr = '';
        $edition = '';
    } else {
        $editionErr = 'Please enter what edition the product is!';
    }

    if (preg_match('/^[0-9]{1,999}$/', $trimmed['disc']) && is_numeric($trimmed['disc'])) {
        $discErr = '';
        $disc = $trimmed['disc'];
    } elseif (empty($trimmed['disc'])) {
        $discErr = '';
        $disc = '';
    } else {
        $discErr = 'Please enter how many discs the product contains!';
    }

    if (preg_match('/^[0-9]{1,51420}$/', $trimmed['runtime']) && is_numeric($trimmed['runtime'])) {
        $runtimeErr = '';
        $runtime = $trimmed['runtime'];
    } else {
        $runtimeErr = 'Please enter how long the product is!';
    }

    if (preg_match('/^[0-9]{4}-[0-9]{2}-[0-9]{2}$/', $trimmed['media_date'])) {
        $media_dateErr = '';
        $media_date = $trimmed['media_date'];
    } elseif (empty($trimmed['media_date'])) {
        $media_dateErr = '';
        $media_date = '';
    } else {
        $media_dateErr = 'Please enter when the product had a home media release date!';
    }

    if (!empty($trimmed['more_description']) && strlen($trimmed['more_description'])<256) {
        $more_descripErr = '';
        $more_descrip_strip = stripslashes($trimmed['more_description']);
        $more_descrip = htmlspecialchars($more_descrip_strip);
    } elseif (empty($trimmed['more_description'])) {
        $more_descripErr = '';
        $more_descrip = '';
    } else {
        $more_descripErr = 'Please enter the extra product information!';
    }

    if (preg_match('/^[A-Z0-9 \'.:-]{1,30}$/i', $trimmed['format_type'])) {
        $format_typeErr = '';
        $format_type = mysqli_real_escape_string($dbc, $trimmed['format_type']);
    } else {
        $format_typeErr = 'Please enter a title for the format type!';
    }

    if (preg_match('/^[A-Z0-9 .:]{4,35}$/i', $trimmed['video_desc'])) {
        $video_descErr = '';
        $video_desc = mysqli_real_escape_string($dbc, $trimmed['video_desc']);
    } else {
        $video_descErr = 'Please enter the video description!';
    }

    if (!empty($trimmed['audio_desc']) && strlen($trimmed['audio_desc'])<256) {
        $audio_descErr = '';
        $audio_desc_strip = stripslashes($trimmed['audio_desc']);
        $audio_desc = htmlspecialchars($audio_desc_strip);
    } else {
        $audio_descErr = 'Please enter the audio description!';
    }

    if (!empty($trimmed['subtitles_desc']) && strlen($trimmed['subtitles_desc'])<101) {
        $sub_descErr = '';
        $sub_desc_strip = stripslashes($trimmed['subtitles_desc']);
        $sub_desc = htmlspecialchars($sub_desc_strip);
    } else {
        $sub_descErr = 'Please enter the subtitles description!';
    }

    if (preg_match('/^[0-9]{3}[0-9]{1}.[0-9]{2}$/', $trimmed['price']) && is_numeric($trimmed['price'])) {
        $priceErr = '';
        $price = $trimmed['price'];
    } else {
        $priceErr = 'Please enter how much you wish to sell this product';
    }

    if (preg_match('/^[0-9]{1,8}$/', $trimmed['stock']) && is_numeric($trimmed['stock'])) {
        $stockErr = '';
        $stock = $trimmed['stock'];
    } else {
        $stockErr = 'Please enter how many you have!';
    }

    if (preg_match('/^[A-Z0-9]{15}$/', $trimmed['sku'])) {
        $skuErr = '';
        $sku = mysqli_real_escape_string($dbc, $trimmed['sku']);
    } else {
        $skuErr = 'Please enter your product inventory management!';
    }

    if ($product_name && $department && $format && $theatre_date && $rating && $genres_id && $description && $directors_id && $actors_id && $producers_id && $writers_id && $dps_id && $studios_id && $runtime && $format_type && $video_desc && $audio_desc && $sub_desc && $price && $stock && $sku) {

        $q = "INSERT INTO specs (spec_format_type, video_desc, audio_desc, subtitles_desc) VALUES ('$format_type', '$video_desc', '$audio_desc', '$sub_desc')";
        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error " . mysqli_error($dbc));

        if (mysqli_affected_rows($dbc) == 1) {

            $q = "INSERT INTO productdetails (rated_id, spec_id, edition, discs, runtime, media_date, more_description) VALUES ((SELECT id FROM ratings WHERE rated='$rating'), " . mysqli_insert_id($dbc). ", '$edition', '$disc', '$runtime', '$media_date', '$more_descrip')";

            $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

            if (mysqli_affected_rows($dbc) == 1) {

                $isd = substr(uniqid(rand(), true), 12, 10);

                $q = "INSERT INTO products (department_id, format_id, name, release_date, description, isd, sku, unit_price, stock, date_created) VALUES ((SELECT id FROM departments WHERE department='$department'), (SELECT id FROM formats WHERE format='$format'), '$product_name', '$theatre_date', '$description', '$isd', '$sku', '$price', '$stock', NOW())";

                $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error " . mysqli_error($dbc));

                if (mysqli_affect_rows($dbc) == 1) {

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

            } else {
                echo '<p class="text-danger">One or more of the values of ratings, edition, discs, home media release date, and/or extra descriptions could not be saved. Either input correctly, or contact the website administrator. We apologize for any inconvenience.</p>';
            }

        } else {
            echo '<p class="text-danger">The Product Specs could not be saved. Either input correctly, or contact the website administrator. We apologize for any inconvenience.</p>';
        }

    } else {
        echo '<p class="text-danger">Please try again.</p>';
    }

}

?>
<h1>Add New Products</h1>
<p><span class="text-danger">* required field</span></p>
<form action="register.php" method="post">
    <fieldset>
        <div class="productName">
            <label for="product-name">Product Name: </label>
            <input type="text" name="product_name" id="product-name" size="50" maxlength="100" value="<?php if (isset($trimmed['product_name'])) echo $trimmed['product_name']; ?>">
            <span class="text-danger">* <?php if (isset($trimmed['product-name'])) echo $productnameError; ?></span>
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
            <input type="date" id="product-theatre-date" name="theatre_date" min="1878-06-15" max="<?php echo date('Y-m-d'); ?>" value="<?php if (isset($trimmed['theatre_date'])) echo $trimmed['theatre_date']; ?>">
            <span class="text-danger">* <?php if (isset($trimmed['theatre_date'])) echo $theatre_dateErr; ?></span>
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
            <span class="text-danger">* <?php if (isset($_POST['genre'])) echo $genreErr; ?></span>
        </div>
        <div class="productDescription">
            <label for="product-description">Description: </label>
            <textarea name="description" id="product-description" cols="110" rows="10" maxlength="1100" placeholder="Comment description"><?php if (isset($trimmed['description'])) echo $trimmed['description']; ?></textarea>
            <span class="text-danger">* <?php if (isset($trimmed['description'])) echo $descripErr; ?></span>
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
            <span class="text-danger">* <?php if (isset($trimmed['writers_first_name']) || isset($trimmed['writers_last_name']) || isset($trimmed['writers_first_name'], $trimmed['writers_last_name'])) echo $writersErr; ?></span>
        </div>
        <div class="productCinematographers">
            <label for="product-cinematographers">Cinematographers? </label>
            <input type="text" id="product-cinematographers" name="dp_first_name" size="50" value="<?php if (isset($trimmed['dp_first_name'])) echo $trimmed['dp_first_name']; ?>" placeholder="First Name">
            <input type="text" id="product-cinematographers" name="dp_last_name" size="50" value="<?php if (isset($trimmed['dp_last_name'])) echo $trimmed['dp_last_name']; ?>" placeholder="Last Name">
            <span class="text-danger">* <?php if (isset($trimmed['dp_first_name']) || isset($trimmed['dp_last_name']) || isset($trimmed['dp_first_name'], $trimmed['dp_last_name'])) echo $dpsErr; ?></span>
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
            <input type="text" id="product-edition" name="edition" value="<?php if (isset($trimmed['edition'])) echo $trimmed['edition']; ?>" placeholder="Ex: Blu-ray + DVD + Digital">
            <span>(Optional) <span class="text-danger"><?php if (isset($trimmed['edition'])) echo $editionErr; ?></span></span>
        </div>
        <div class="productDiscs">
            <label for="product-discs">How many discs? </label>
            <input type="number" id="product-discs" name="disc" value="<?php if (isset($trimmed['disc'])) echo $trimmed['disc']; ?>" max="999">
            <span>(Optional, but whole numbers only) <span class="text-danger"><?php if (isset($trimmed['disc'])) echo $discErr; ?></span></span>
        </div>
        <div class="productRuntime">
            <label for="product-runtime">Runtime (in minutes): </label>
            <input type="number" id="product-runtime" name="runtime" value="<?php if (isset($trimmed['runtime'])) echo $trimmed['runtime']; ?>" max="99999">
            <span class="text-danger">* <?php if (isset($trimmed['runtime'])) echo $runtimeErr; ?></span>
        </div>
        <div class="productMediaDate">
            <label for="product-media-date">When was is it, or will be, released on home media? </label>
            <input type="date" id="product-media-date" name="media_date" min="1975-05-10" value="<?php if (isset($trimmed['media_date'])) echo $trimmed['media_date']; ?>">
            <span>(Optional) <span class="text-danger"><?php if (isset($trimmed['media_date'])) echo $media_dateErr; ?></span></span>
        </div>
        <div class="productExtraDescription">
            <label for="product-extra-description">Any extra descriptions?</label>
            <textarea name="more_description" id="product-extra-description" cols="51" rows="5" maxlength="255" placeholder="Extra stuff..."><?php if (isset($trimmed['more_description'])) echo $trimmed['more_description']; ?></textarea>
            <span>(Optional, but 255 characters max) <span class="text-danger"><?php if (isset($trimmed['more_description'])) echo $more_descripErr; ?></span></span>
        </div>
        <h3>Product Specs</h3>
        <div class="productFormatType">
            <label for="product-format-type">Format Type Title: </label>
            <input type="text" id="product-format-type" name="format_type" size="30" maxlength="30" value="<?php if (isset($trimmed['format_type'])) echo $trimmed['format_type']; ?>" placeholder="4K UHD MAIN FEATURE">
            <span class="text-danger">* <?php if (isset($trimmed['format_type'])) echo $format_typeErr; ?></span>
        </div>
        <div class="productVideoDescription">
            <label for="product-video-description">Video Description: </label>
            <input type="text" id="product-video-description" name="video_desc" size="35" maxlength="35" value="<?php if (isset($trimmed['video_desc'])) echo $trimmed['video_desc']; ?>" placeholder="2160p Ultra High Definition">
            <span class="text-danger">* <?php if (isset($trimmed['video_desc'])) echo $video_descErr; ?></span>
        </div>
        <div class="productAudioDescription">
            <label for="product-audio-description">Audio Description: </label>
            <textarea id="product-audio-description" name="audio_desc" cols="30" rows="10" maxlength="255" placeholder="Dolby Atmos-TrueHD: English, English Descriptive Audio 5.1, Dolby Digital: Français 5.1 (Dubbed in Quebec), Español 5.1"><?php if (isset($trimmed['audio_desc'])) echo $trimmed['audio_desc']; ?></textarea>
            <span class="text-danger">* <?php if (isset($trimmed['audio_desc'])) echo $audio_descErr; ?></span>
        </div>
        <div class="productSubtitlesDescription">
            <label for="product-subtitles-description">Subtitles Description: </label>
            <textarea id="product-subtitles-description" name="subtitles_desc" cols="20" rows="5" maxlength="100" placeholder="English SDH, Français & Español"><?php if (isset($trimmed['subtitles_desc'])) echo $trimmed['subtitles_desc']; ?></textarea>
            <span class="text-danger">* <?php if (isset($trimmed['subtitles_desc'])) echo $sub_descErr; ?></span>
        </div>
        <p>Would you like to add more specifications for different formats?</p>
        <h3>Price, Images, Units, SKU</h3>
        <div class="productPrice">
            <label for="product-price">How much are you selling it? </label>
            <input type="number" id="product-price" name="price" value="<?php if (isset($trimmed['price'])) echo $trimmed['price']; ?>" step="0.01" min="0" max="9999" placeholder="21.93">
            <span class="text-danger">* <?php if (isset($trimmed['price'])) echo $priceErr; ?></span>
        </div>
        <div class="productStock">
            <label for="product-stock">How many do you have? </label>
            <input type="number" id="product-stock" name="stock" value="<?php if (isset($trimmed['stock'])) echo $trimmed['stock']; ?>" min="0" max="99999999">
            <span class="text-danger">* <?php if (isset($trimmed['stock'])) echo $stockErr; ?></span>
        </div>
        <div class="productSKU">
            <label for="product-sku">Stock Keeping Unit (inventory management): </label>
            <input type="text" id="product-sku" name="sku" size="15" maxlength="15" value="<?php if (isset($trimmed['sku'])) echo $trimmed['sku']; ?>">
            <span class="text-danger">* <?php if (isset($trimmed['sku'])) echo $skuErr; ?></span>
        </div>
    </fieldset>
    <div class="productSubmit"><input type="submit" name="submit" value="Submit"></div>
</form>
<?php include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/suppliers/includes/footer.html'); ?>