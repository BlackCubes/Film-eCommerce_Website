<?php

# login.php (Supplier's login).
# Created on June 14, 2019.
# Created by Elias Gutierrez.

// *************************************** //
// ************ DOCUMENTATION ************ //

/*

*/

// ************ DOCUMENTATION ************ //
// *************************************** //

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/config.inc.php');

$page_title = 'Suppliers Login';

include('includes/header.html');

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    
    require(MYSQL);

    if (!empty($_POST['email'])) {
        $e = mysqli_real_escape_string($dbc, $_POST['email']);
    } else {
        $e = FALSE;
        echo '<p class="error">You forgot to enter your email address!</p>';
    }

    if (!empty($_POST['pass'])) {
        $p = trim($_POST['pass']);
    } else {
        $p = FALSE;
        echo '<p class="error">You forgot to enter your password!</p>';
    }

    if ($e && $p) {

        $systemeErr_1 = $systemeErr_2 = $systemeErr_3;

        $q = "SELECT id, pass FROM suppliers WHERE email='$e' AND verify_code IS NULL";
        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

        if (@mysqli_num_rows($r) == 1) {
            
            list($supplier_id, $pass) = mysqli_fetch_array($r, MYSQLI_NUM);

            mysqli_free_result($r);

            if (password_verify($p, $pass)) {
                
                $_SESSION['supplier_id'] = $supplier_id;
                mysqli_close($dbc);

                $url = BASE_URL . 'suppliers/index.php';
                ob_end_clean();
                header("Location: $url");
                exit();

            } else {

                $systemeErr_3 = 'Either the email address and password do not match those on file, or you have not yet activated your account.';

            }

        } else {

            $systemeErr_2 = 'Either the email address and password entered do not match those on file, or you have not yet activated your account.';

            $systemeErr_3 = '';

        }

    } else {
        $systemeErr_1 = 'Please try again.';
        $systemeErr_2 = $systemeErr_3;
    }

    mysqli_close($dbc);

}
?>

<!--

-->
<form class="supplier-sign-in-form" action="login.php" method="post">
    <fieldset class="sign-in-card">
        <div class="sign-in-title">
            <h2>Sign In</h2>
        </div>
        <div class="sign-in-email">
            <label for="signInSupplierEmail">Email address</label>
            <input type="email" id="signInSupplierEmail" name="email" class="supplier-email" maxlength="80">
        </div>
        <div class="sign-in-pass">
            <label for="signInSupplerPass">Password</label>
            <input type="password" id="signInSupplierPass" name="pass" class="supplier-pass" maxlength="255">
        </div>
        <div class="sign-in-cookies">
            <p>Your browser must allow cookies in order to log in.</p>
        </div>
        <div class="sign-in-submit">
            <input type="submit" name="submit" class="sign-in-button" value="SIGN IN">
        </div>
        <div class="system-error">
            <?php if (isset($_POST['email'], $_POST['pass'])) echo '<p>' . $systemeErr_1 . '</p><p>' . $systemeErr_2 . '</p><p>' . $systemeErr_3 . '</p>'; ?>
        </div>
        <div class="sign-in-option">
            <p>Forgot your <a href="/FilmIndustry/eCommerce/suppliers/login.php">password</a>?</p>
        </div>
        <div class="customer-sign-in-option">
            <p>Want to buy movies? Sign in <a href="/FilmIndustry/eCommerce/login.php">here</a>.</p>
        </div>
        <div class="registration-option">
            <h2>New to selling?</h2>
            <a href="/FilmIndustry/eCommerce/suppliers/register.php" class="register-button" role="button">REGISTER</a>
        </div>
    </fieldset>
</form>

<?php include('includes/footer.html'); ?>