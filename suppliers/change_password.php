<?php

# change_password.php (Suppliers password change).
# Created on June 14, 2019.
# Created by Elias Gutierrez.

// *************************************** //
// ************ DOCUMENTATION ************ //

/*

*/

// ************ DOCUMENTATION ************ //
// *************************************** //

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/config.inc.php');

$page_title = 'Change Password';

include('includes/header.html');

if (!isset($_SESSION['id'])) {

    $url = BASE_URL . 'index.php';
    ob_end_clean();
    header("Location: $url");
    exit();

}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    require(MYSQL);

    $p = FALSE;

    if (strlen($_POST['password1']) >= 10) {
        if ($_POST['password1'] == $_POST['password2']) {
            $p = password_hash($_POST['password1'], PASSWORD_DEFAULT);
        } else {
            echo '<p class="error">Your password did not match the confirmed password!</p>';
        }
    } else {
        echo '<p class="error">Please enter a valid password!</p>';
    }

    if ($p) {

        $q = "UPDATE suppliers SET pass='$p' WHERE id={$_SESSION['id']} LIMIT 1";
        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

        if (mysqli_affected_rows($dbc) == 1) {

            echo '<h3>Your password has been changed.</h3>';

            mysqli_close($dbc);

            include('includes/footer.html');

            exit();

        } else {

            echo '<p class="error">Your password was not changed. Make sure your new password is different than the current password. If you think an error occured, contact the system administrator.</p>';

        }

    } else {

        echo '<p class="error">Please try again.</p>';

    }

}
?>

<h1>Change Your Password</h1>
<form action="change_password.php" method="post">
    <fieldset>
        <p><strong>New Password:</strong> <input type="password" name="password1" size="20"><small>At least 10 characters long.</small></p>
        <p><strong>Confirm New Password:</strong> <input type="password" name="password2" size="20"></p>
    </fieldset>
    <div align="center"><input type="submit" name="submit" value="Change My Password"></div>
</form>