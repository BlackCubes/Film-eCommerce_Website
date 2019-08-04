<?php

# register_page2.php.
# Created on July 30, 2019.
# Created by Elias Gutierrez.

// *************************************** //
// ************ DOCUMENTATION ************ //

/*

*/

// ************ DOCUMENTATION ************ //
// *************************************** //

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/config.inc.php');

$page_title = 'Register';

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/header.html');

if (isset($_SESSION['id'])) {
    ob_end_clean();
    header("Location: http://localhost/FilmIndustry/eCommerce/index.php");
    exit;
}

if (!isset($_SESSION)) {
    session_start();
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    require(MYSQL);

    function sanitize_input($input) {
        $input = trim($input);
        $input = stripslashes($input);
        $input = htmlspecialchars($input);
        return $input;
    }

    $fn = $ln = $e = $p = FALSE;

    if (preg_match('/^[A-Z\p{L}]{1}(.[A-Z]{1}.)?([a-z\p{L}]+)?$/u', sanitize_input($_POST['first_name']))) {
        $_SESSION['fnErr'] = '';
        $_SESSION['fn'] = mysqli_real_escape_string($dbc, sanitize_input($_POST['first_name']));
        $fn = TRUE;
    } else {
        $_SESSION['fnErr'] = 'Please enter your first name!';
    }

    if (preg_match('/^[A-Z\p{L}]{1}([a-z\p{L}]{1}[A-Z\p{L}]{1})?([\']{1}[A-Z\p{L}]{1})?[a-z\p{L}]+([-]{1}[A-Z\p{L}]{1}[a-z\p{L}]+)?( Jr.)?$/u', sanitize_input($_POST['last_name']))) {
        $_SESSION['lnErr'] = '';
        $_SESSION['ln'] = mysqli_real_escape_string($dbc, sanitize_input($_POST['last_name']));
        $ln = TRUE;
    } else {
        $_SESSION['lnErr'] = 'Please enter your last name!';
    }

    if (filter_var(sanitize_input($_POST['email']), FILTER_VALIDATE_EMAIL)) {
        $_SESSION['emailErr'] = '';
        $_SESSION['email'] = mysqli_real_escape_string($dbc, sanitize_input($_POST['email']));
        $e = TRUE;
    } else {
        $_SESSION['emailErr'] = 'Please enter a valid email address!';
    }

    if (strlen(sanitize_input($_POST['password1'])) >= 10) {
        $_SESSION['passErr1'] = $_SESSION['passErr2'] = '';
        if (sanitize_input($_POST['password1']) == sanitize_input($_POST['password2'])) {
            $_SESSION['p'] = password_hash(sanitize_input($_POST['password1']), PASSWORD_DEFAULT);
            $p = TRUE;
        } else {
            $_SESSION['passErr2'] = 'Your confirmed password does not match your new password!';
        }
    } else {
        $_SESSION['passErr1'] = 'Please enter a valid password!';
        $_SESSION['passErr2'] = 'Please confirm your new password!';
    }

    if ($fn && $ln && $e && $p) {

        $_SESSION['systemErr1'] = '';

        $q = "SELECT id FROM users WHERE email='{$_SESSION['email']}'";
        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

        if (mysqli_num_rows($r) == 0) {

            $_SESSION['systemErr1'] = '';

            mysqli_close($dbc);

        ?>

            <form action="register_complete.php" method="post" id="registerUserCard2">
                <fieldset class="register-card--shipping">
                    <div class="shipping-title--register">
                        <h2>Shipping Address</h2>
                    </div>
                    <div class="shipping-info--register">
                        <p>Please provide an address to be used for shipping.</p>
                    </div>
                    <div class="shipping-address-1">
                        <label for="shippingAddress1">Shipping Address</label>
                        <input type="text" id="shippingAddress1" class="user-address-1--register" name="address1" maxlength="46" value="<?php if (isset($_SESSION['a1'])) echo $_SESSION['a1']; unset($_SESSION['a1']); ?>">
                    </div>
                    <?php if (isset($_SESSION['a1Err'])) echo '<div class="address-1-error--register"><p>' . $_SESSION['a1Err'] . '</p></div>';
                    unset($_SESSION['a1Err']); ?>
                    <div class="shipping-address-2">
                        <label for="shippingAddress2">Apartment / Suite / Other <span class="register-shipping-info">(optional)</span></label>
                        <input type="text" id="shippingAddress2" class="user-address-2--register" name="address2" maxlength="46" value="<?php if (isset($_SESSION['a2'])) echo $_SESSION['a2']; unset($_SESSION['a2']); ?>">
                    </div>
                    <?php if (isset($_SESSION['a2Err'])) echo '<div class="address-2-error--register"><p>' . $_SESSION['a2Err'] . '</p></div>';
                    unset($_SESSION['a2Err']); ?>
                    <div class="shipping-city">
                        <label for="shippingCity">City</label>
                        <input type="text" id="shippingCity" class="user-city--register" name="city" maxlength="50" value="<?php if (isset($_SESSION['c'])) echo $_SESSION['c']; unset($_SESSION['c']); ?>">
                    </div>
                    <?php if (isset($_SESSION['cErr'])) echo '<div class="city-error--register"><p>' . $_SESSION['cErr'] . '</p></div>';
                    unset($_SESSION['cErr']); ?>
                    <div class="shipping-state-zip">
                        <div class="shipping-state">
                            <label for="shippingState">State</label>
                            <input type="text" id="shippingState" class="user-state--register" name="state" maxlength="50" placeholder="NJ or New Jersey" value="<?php if (isset($_SESSION['s'])) echo $_SESSION['s']; unset($_SESSION['s']); ?>">
                        </div>
                        <div class="shipping-zip-code">
                            <label for="shippingZipCode">Zip Code</label>
                            <input type="text" id="shippingZipCode" class="user-zip--register" name="zip" maxlength="10" placeholder="12345 or 12345-6789" value="<?php if (isset($_SESSION['z'])) echo $_SESSION['z']; unset($_SESSION['z']); ?>">
                        </div>
                    </div>
                    <?php

                    if (isset($_SESSION['sErr'])) echo '<div class="state-error--register"><p>' . $_SESSION['sErr'] . '</p></div>';
                    unset($_SESSION['sErr']);

                    if (isset($_SESSION['zipErr'])) echo '<div class="zip-code-error--register"><p>' . $_SESSION['zipErr'] . '</p></div>';
                    unset($_SESSION['zipErr']);

                    ?>
                    <div class="shipping-phone">
                        <label for="shippingPhone">Phone <span class="register-phone-info">(optional, but may be used to assist delivery)</span></label>
                        <input type="tel" id="shippingPhone" class="user-phone--register" name="phone_num" placeholder="123-456-7890" maxlength="15" value="<?php if (isset($_SESSION['phone_num'])) echo $_SESSION['phone_num']; unset($_SESSION['phone_num']); ?>">
                    </div>
                    <?php if (isset($_SESSION['phoneErr'])) echo '<div class="phone-error--register"><p>' . $_SESSION['phoneErr'] . '</p></div>';
                    unset($_SESSION['phoneErr']); ?>
                    <div class="register-submit">
                        <input type="submit" class="submit-button--register" name="submit" value="OK, LET'S GO!">
                    </div>
                    <?php if (isset($_SESSION['systemErr2'])) echo '<div class="system-error"><p>' . $_SESSION['systemErr2'] . '</p></div>'; unset($_SESSION['systemErr2']); ?>
                </fieldset>
            </form>
            <?php include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/footer.html'); ?>

        <?php
        } else {

            mysqli_close($dbc);

            $_SESSION['systemErr1'] = 'That email address has already been registered. If you have forgotten your password, please change it by clicking on "Change Password" on the top navbar when signing in';
            header("Location: http://localhost/FilmIndustry/eCommerce/register_page1.php");
            exit();
        }
    } else {
        $_SESSION['systemErr1'] = 'Please try again';
        header("Location: http://localhost/FilmIndustry/eCommerce/register_page1.php");
        exit();
    }
} ?>