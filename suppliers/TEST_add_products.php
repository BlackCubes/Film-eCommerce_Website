<?php

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/config.inc.php');

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    require(MYSQL);

    $trimmed = array_map('trim', $_POST);

    if (preg_match('/^$/', $trimmed['directors_first_name']) && preg_match('/^$/', $trimmed['directors_last_name'])) {
        $q_directors = "SELECT first_name, last_name FROM directors";
        $r_directors = mysqli_query($dbc, $q_directors) or trigger_error("Query: $q_directors\n<br>MySQL error: " . mysqli_error($dbc));
        $directors_preg = mysqli_fetch_all($r_directors, MYSQLI_ASSOC);

        $dpreg_fn = $dpreg_ln = array();
        foreach ($directors_preg as $key => $value) {
            $dpreg_fn[$key] = $value['first_name'];
            $dpreg_ln[$key] = $value['last_name'];
        }

        $d_fn = preg_split('/[\s,]+/', $trimmed['directors_first_name']);
        echo '<pre>', print_r($d_fn), '</pre>';
        $d_ln = preg_split('/[\s,]+/', $trimmed['directors_last_name']);
        echo '<pre>', print_r($d_ln), '</pre>';

        function validate($validNames, $matchIn) {
            foreach ($validNames as $validName) {
                if (preg_grep("/^($validName)$/", $matchIn)) {
                    return TRUE;
                }
            }
            return FALSE;
        }

        if (validate($dpreg_fn, $d_fn) && validate($dpreg_ln, $d_ln)) {
            #echo '<p>Success!</p>'; 

            $dstring_fn = implode("','", $d_fn);
            $dstring_ln = implode("','", $d_ln);

            $q = "SELECT id FROM directors WHERE first_name IN ('$dstring_fn') AND last_name IN ('$dstring_ln')";
            $r_id = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));
            $row_id = mysqli_fetch_all($r_id, MYSQLI_ASSOC);

            $selected_id = array();
            foreach ($row_id as $key=>$value) {
                $selected_id[$key] = $value['id'];
            }
            echo '<pre>', print_r($selected_id), '</pre>';

            #foreach ($d_fn as &$value1) {
            #    $value1 = $value1 . '%';
            #}
            #unset($value1);
            #foreach ($d_ln as &$value2) {
            #    $value2 = $value2 . '%';
            #}
            #unset($value2);

            //NOTE: Might have to create query array!
            //NOTE: Fix the for loop?
            #for ($f = 0, $l = 0; $f < sizeof($d_fn), $l < sizeof($d_ln); $f++, $l++) {
            #    $q_did = "SELECT id FROM directors WHERE first_name LIKE ' . $d_fn[i] . ' AND last_name LIKE ' . $d_ln[j] . '";
            #}
            #echo '<pre>Success!</pre>';

        } else {
            echo '<p>Please enter the correct name(s) of the corresponding directors!</p>';
        }
    } else {
        echo '<p>Please enter a first and last name!</p>';
    }

    mysqli_close($dbc);
}
?>

<form action="TEST_add_products.php" method="post">
    <fieldset>
        <div class="productDirectors">
            <label for="product-directors">Who is the Director(s)?</label>
            <input type="text" id="product-directors" name="directors_first_name" size="50" value="<?php if (isset($trimmed['directors_first_name'])) echo $trimmed['directors_first_name']; ?>" placeholder="First Name">
            <!--<input type="text" id="product-directors" name="directors_middle_name" size="50" value="<#?php if (isset($trimmed['directors_middle_name'])) echo $trimmed['directors_middle_name']; ?>" placeholder="Middle Name">-->
            <input type="text" id="product-directors" name="directors_last_name" size="50" value="<?php if (isset($trimmed['directors_last_name'])) echo $trimmed['directors_last_name']; ?>" placeholder="Last Name">
        </div>
    </fieldset>
    <div class="productSubmit"><input type="submit" name="submit" value="Submit"></div>
</form>