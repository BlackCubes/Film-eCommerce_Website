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

if (!isset($_SESSION['supplier_id'])) {

    $url = BASE_URL . 'index.php';
    ob_end_clean();
    header("Location: $url");
    exit();

}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    require(MYSQL);

    $p = FALSE;

    if (strlen($_POST['password1']) >= 10) {
        $passErr_1 = $passErr_2 = '';
        if ($_POST['password1'] == $_POST['password2']) {
            $p = password_hash($_POST['password1'], PASSWORD_DEFAULT);
        } else {
            $passErr_2 = 'Your password did not match the confirmed password!';
        }
    } else {
        $passErr_1 = 'Please enter a valid password!';
        $passErr_2 = '';
    }

    if ($p) {

        $systemErr_1 = $systemErr_2 = '';

        $q = "UPDATE suppliers SET pass='$p' WHERE id={$_SESSION['supplier_id']} LIMIT 1";
        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

        if (mysqli_affected_rows($dbc) == 1) {

            echo '<h3>Your password has been changed.</h3>';

            mysqli_close($dbc);

            include('includes/footer.html');

            exit();

        } else {

            $systemErr_2 = 'Your password was not changed. Make sure your new password is different than the current password. If you think an error occured, contact the system administrator.';

        }

    } else {

        $systemErr_1 = 'Please try again.';
        $systemErr_2 = '';

    }

    mysqli_close($dbc);

}
?>

<form action="change_password.php" method="post" id="supplierChangePassCard">
    <fieldset class="change-pass-card">
        <div class="change-pass-title">
            <h2>Change Password</h2>
        </div>
        <div class="change-pass-info">
            <p>Please enter a new password that is 10 characters or more, and that is not the same as your old one.</p>
        </div>
        <div class="change-pass-new-input">
            <label for="changeSupplierPassInput">New password</label>
            <input type="password" id="changeSupplierPassInput" class="supplier-pass--change" name="password1" maxlength="255">
        </div>
        <div class="change-pass-confirm-input">
            <label for="confirmSupplierPassInput">Confirm new password</label>
            <input type="password" id="confirmSupplierPassInput" class="supplier-pass--confirm" name="password2" maxlength="255">
        </div>
        <div class="change-pass-submit">
            <input type="submit" class="change-pass-button" name="submit" value="SET PASSWORD & CHANGE">
        </div>
    </fieldset>
</form>

<?php include('includes/footer.html'); ?>