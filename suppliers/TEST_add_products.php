<?php

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/config.inc.php');

require(MYSQL);

    $q_directors = "SELECT first_name FROM directors";
    $r_directors = mysqli_query($dbc, $q_directors) or trigger_error("Query: $q_directors\n<br>MySQL error: " . mysqli_error($dbc));
    $directors_preg = mysqli_fetch_all($r_directors, MYSQLI_ASSOC);
    $dp_first_name = array();
    while ($rows = array_shift($dp_first_name)) {
        $dp_first_name[array_shift($rows)] = $rows;
    }
    print_r($directors_preg);
    print_r($dp_first_name);

    #$d_fn = preg_split('/[\s,]+/', $trimmed['directors_first_name']);
    #$d_ln = preg_split('/[\s,]+/', $trimmed['directors_last_name']);

    #foreach ($dp_first_name as $dp_fn) {
        #if ($matches1=preg_grep('/\b($dp_fn)\b/', $d_fn)) {
            #echo '<p>Success!</p>';

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

        #} else {
            #echo '<p>Error, or none!</p>';
        #}
    #}

mysqli_close($dbc);
?>

<!--<form action="TEST_add_products.php" method="post">
    <fieldset>
        <div class="productDirectors">
            <label for="product-directors">Who is the Director(s)?</label>
            <input type="text" id="product-directors" name="directors_first_name" size="50" value="<#?php if (isset($trimmed['directors_first_name'])) echo $trimmed['directors_first_name']; ?>" placeholder="First Name">
            <input type="text" id="product-directors" name="directors_middle_name" size="50" value="<#?php if (isset($trimmed['directors_middle_name'])) echo $trimmed['directors_middle_name']; ?>" placeholder="Middle Name">
            <input type="text" id="product-directors" name="directors_last_name" size="50" value="<#?php if (isset($trimmed['directors_last_name'])) echo $trimmed['directors_last_name']; ?>" placeholder="Last Name">
        </div>
    </fieldset>
    <div class="productSubmit"><input type="submit" name="submit" value="Submit"></div>
</form>-->