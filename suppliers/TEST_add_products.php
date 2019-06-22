<?php

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/config.inc.php');

require(MYSQL);

$trimmed = array_map('trim', $_POST);

//NOTE: Also need to verify if they exist in DB!
//NOTE: Might have to create another if to see if it matches the requirements before DB-if!
if (preg_match('some verification', $trimmed['d_first_name']) && preg_match('some verification', $trimmed['d_last_name'])) {

    $q_directors = "SELECT first_name, last_name FROM directors";
    $r_directors = mysqli_query($dbc, $q_directors) or trigger_error("Query: $q_directors\n<br>MySQL error: " . mysqli_error($dbc));
    $directors_preg = mysqli_fetch_all($r_directors, MYSQLI_ASSOC);

    $d_fn = preg_split('/[\s,]+/', $trimmed['d_first_name']);
    $d_ln = preg_split('/[\s,]+/', $trimmed['d_last_name']);

    foreach ($directors_preg as $d_p) {
        if (preg_match('/\b($dp)\b/', $d_fn) && preg_match('/\b($dp)\b/', $d_ln)) {

            foreach ($d_fn as &$value1 && $d_ln as &$value2) {
                $value1 = $value1 . '%';
                $value2 = $value2 . '%';
            }
            unset($value1);
            unset($value2);

            //NOTE: Might have to create query array!
            //NOTE: Fix the for loop?
            for ($f = 0, $l = 0; $f < sizeof($d_fn), $l < sizeof($d_ln); $f++, $l++) {
                $qd_id = 
                $q_did = "SELECT id FROM directors WHERE first_name LIKE ' . $d_fn[i] . ' AND last_name LIKE ' . $d_ln[j] . '";
            }

        } elseif (!preg_match('/\b($dp)\b/', $d_fn) && !preg_match('/\b($dp)\b/', $d_ln)) {
        
        }
    }

} else {
    $
}

?>