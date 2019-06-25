<?php

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/config.inc.php');

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    require(MYSQL);

    $trimmed = array_map('trim', $_POST);

    if ((preg_match('/^[A-Z]{1}[a-z]+$/', $trimmed['directors_first_name']) && preg_match('/^[A-Z]{1}[a-z]+$/', $trimmed['directors_last_name'])) || (preg_match('/^([A-Z]{1}[a-z]+[, ]{2})*[A-Z]{1}[a-z]+$/', $trimmed['directors_first_name'])) && (preg_match('/^([A-Z]{1}[a-z]+[, ]{2})*[A-Z]{1}[a-z]+$/', $trimmed['directors_last_name']))) {

        $q_directors = "SELECT first_name, last_name FROM directors";
        $r_directors = mysqli_query($dbc, $q_directors) or trigger_error("Query: $q_directors\n<br>MySQL error: " . mysqli_error($dbc));
        $directors_preg = mysqli_fetch_all($r_directors, MYSQLI_ASSOC);

        $dpreg_fn = $dpreg_ln = array();
        foreach ($directors_preg as $key => $value) {
            $dpreg_fn[$key] = $value['first_name'];
            $dpreg_ln[$key] = $value['last_name'];
        }

        $descape_fn = mysqli_real_escape_string($dbc, $trimmed['directors_first_name']);
        $descape_ln = mysqli_real_escape_string($dbc, $trimmed['directors_last_name']);

        $d_fn = preg_split('/[\s,]+/', $descape_fn);
        echo '<pre>', print_r($d_fn), '</pre>';
        $d_ln = preg_split('/[\s,]+/', $descape_ln);
        echo '<pre>', print_r($d_ln), '</pre>';

        foreach ($d_fn as $validName) $dvalid_fn = preg_grep("/^$validName$/", $dpreg_fn);

        foreach ($d_ln as $validName) $dvalid_ln = preg_grep("/^$validName$/", $dpreg_ln);

        echo '<pre>', print_r($dvalid_fn), '</pre>';
        echo '<pre>', print_r($dvalid_ln), '</pre>';

        function arraycount($array1, $array2) {
            if (count($array1) == count($array2)) {
                return TRUE;
            } else {
                return FALSE;
            }
        }

        if (!empty($dvalid_fn) && !empty($dvalid_ln) && arraycount($d_fn, $d_ln)) {

            echo '<pre>', print_r($dvalid_fn), '</pre>';
            echo '<pre>', print_r($dvalid_ln), '</pre>';

            $dstring_fn = implode("','", $dvalid_fn);
            $dstring_ln = implode("','", $dvalid_ln);

            $q = "SELECT id FROM directors WHERE first_name IN ('$dstring_fn') AND last_name IN ('$dstring_ln')";
            $r_id = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));
            $row_id = mysqli_fetch_all($r_id, MYSQLI_ASSOC);

            if (empty($row_id)) {

                echo '<p>An error occured. Please type in the correct names, or contact the website administrator. Sorry about that!</p>';

            } else {

                $dselected_id = array();
                foreach ($row_id as $key=>$value) {
                    $dselected_id[$key] = $value['id'];
                }
                echo '<pre>', print_r($dselected_id), '</pre>';

            }

        } else {
            echo '<p>Please enter the correct name(s) of the corresponding director(s)!</p>';
        }
    } else {
        echo '<p>Please enter first and last name(s)!</p>';
    }

    mysqli_close($dbc);
}
?>

<form action="TEST_add_products.php" method="post">
    <fieldset>
        <div class="productDirectors">
            <label for="product-directors">Who is the Director(s)?</label>
            <input type="text" id="product-directors" name="directors_first_name" size="50" value="<?php if (isset($trimmed['directors_first_name'])) echo $trimmed['directors_first_name']; ?>" placeholder="First Name">
            <input type="text" id="product-directors" name="directors_last_name" size="50" value="<?php if (isset($trimmed['directors_last_name'])) echo $trimmed['directors_last_name']; ?>" placeholder="Last Name">
        </div>
    </fieldset>
    <div class="productSubmit"><input type="submit" name="submit" value="Submit"></div>
</form>