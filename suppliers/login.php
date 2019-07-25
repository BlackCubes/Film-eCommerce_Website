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

                echo '<p class="error">Either the email address and password do not match those on file, or you have not yet activated your account.</p>';

            }

        } else {

            echo '<p class="error">Either the email address and password entered do not match those on file, or you have not yet activated your account.</p>';

        }

    } else {
        echo '<p class="error">Please try again.</p>';
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
            <input type="email" id="signInSupplierEmail" name="email" maxlength="80">
        </div>
        <div class="sign-in-pass">
            <label for="signInSupplerPass">Password</label>
            <input type="password" id="signInSupplierPass" name="pass" maxlength="255">
        </div>
        <div class="sign-in-cookies">
            <p>Your browser must allow cookies in order to log in.</p>
        </div>
        <div class="sign-in-submit">
            <input type="submit" name="submit" value="SIGN IN">
        </div>
    </fieldset>
</form>

<?php include('includes/footer.html'); ?>