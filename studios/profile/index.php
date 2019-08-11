<?php

# index.php (Display Studios once clicked).
# Created on August 11, 2019.
# Created by Elias Gutierrez

// *************************************** //
// ************ DOCUMENTATION ************ //

/*

*/

// ************ DOCUMENTATION ************ //
// *************************************** //

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/config.inc.php');

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/secure.php');

if (isset($_GET['role'], $_GET['company']) && preg_match('/(\bstudio\b)(?!;)/', $_GET['role'])) {

    $id_decrypt = urldecode(my_decrypt($_GET['company'], KEY));

    if (is_numeric($id_decrypt) && preg_match('/^[1-9]{1}([0-9]{1,10})?$/', $id_decrypt)) {

        require(MYSQL);

        $role_column = mysqli_real_escape_string($dbc, $_GET['role']);
        $role_table = mysqli_real_escape_string($dbc, $_GET['role'] . 's');

        $id = $id_decrypt;

        $q = "SELECT id FROM `{$role_table}` WHERE id={$id}";
        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));
        $selected_id = mysqli_fetch_array($r, MYSQLI_ASSOC);

        if ((mysqli_num_rows($r) == 1) && ($selected_id === $id)) {

            $q_studio = "SELECT studio_name AS studio_name, about AS studio_bio, img AS studio_img FROM `{$role_table}` WHERE id={$id}";
            $r_studio = mysqli_query($dbc, $q_studio) or trigger_error("Query: $q_studio\n<br>MySQL Error: " . mysqli_error($dbc));
            $studio = mysqli_fetch_array($r_studio, MYSQLI_ASSOC);

        } else {

            $url = BASE_URL . 'index.php';

            mysqli_close($dbc);

            ob_end_clean();
            header("Location: $url");
            exit();

        }

    } else {

        $url = BASE_URL . 'index.php';

        ob_end_clean();
        header("Location: $url");
        exit();

    }
    
} else {

    $url = BASE_URL . 'index.php';

    ob_end_clean();
    header("Location: $url");
    exit();

}
?>