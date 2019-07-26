<?php

# forgot_password.php (Suppliers forgotten password).
# Created on June 14, 2019.
# Created by Elias Gutierrez.

// *************************************** //
// ************ DOCUMENTATION ************ //

/*

*/

// ************ DOCUMENTATION ************ //
// *************************************** //

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/config.inc.php');

$page_title = 'Forgot Password';

include('includes/header.html');

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    require(MYSQL);

    $sid = FALSE;

    if (!empty($_POST['email'])) {

        $q = 'SELECT id FROM suppliers WHERE email="' . mysqli_real_escape_string($dbc, $_POST['email']) . '"';
        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

        if (mysqli_num_rows($r) == 1) {

            list($sid) = mysqli_fetch_array($r, MYSQLI_NUM);

        } else {

            echo '<p class="error">The submitted email address does not match those on file!</p>';

        }

    } else {

        echo '<p class="error">You forgot to enter your email address!</p>';

    }

    if ($sid) {

        $p = substr(md5(uniqid(rand(), true)), 3, 15);
        $ph = password_hash($p);

        $q = "UPDATE suppliers SET pass='$ph' WHERE id=$sid LIMIT 1";
        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

        if (mysqli_affected_rows($dbc) == 1) {

            $body = "Your password to log into the Suppliers section for the Film eCommerce site has been temporarily changed to '$p'. Please log in using this password and this email address. Then you may change your password to something more familiar.";
            mail($_POST['email'], 'Your temporary password.', $body, 'From: gutierrezelias1991@gmail.com');

            echo '<h3>Your password has been changed. You will receive the new temporary password at the email address with which you registered. Once you have logged in with this new password, you may change it by clicking on the Change Password link.</h3>';
            mysqli_close($dbc);
            include('includes/footer.html');
            exit();

        } else {
            echo '<p class="error">Your password could not be changed due to a system error. We apologize for any inconvenience.</p>';
        }

    } else {
        echo '<p class="error">Please try again.</p>';
    }

    mysqli_close($dbc);

}
?>

<form action="forgot_password.php" method="post" id="supplierForgotPassCard">
    <fieldset class="forgot-pass-card">
        <div class="forgot-pass-title">
            <h2>Request Password Reset</h2>
        </div>
        <div class="forgot-pass-info">
            <p>Enter the email address associated with your account. We'll email you with the instructions on how to reset your password.</p>
        </div>
        <div class="forgot-email-input">
            <label for="forgotSupplierEmailInput">Email address</label>
            <input type="email" id="forgotSupplierEmailInput" name="email" class="supplier-email--forgot" maxlength="80">
        </div>
        <div class="forgot-email-submit">
            <input type="submit" name="submit" class="forgot-pass-button" value="SUBMIT">
        </div>
    </fieldset>
</form>

<?php include('includes/footer.html'); ?>