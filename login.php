<?php

# login.php.
# Created on May 1, 2019.
# Created by Elias Gutierrez.


require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/config.inc.php');

$page_title = 'Login';

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/account_header.html');

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    require(MYSQL);

    if (!empty($_POST['email'])) {
        $e = mysqli_real_escape_string($dbc, $_POST['email']);
        $emailErr = '';
    } else {
        $e = FALSE;
        $emailErr = 'You forgot to enter your email address!';
    }

    if (!empty($_POST['pass'])) {
        $p = trim($_POST['pass']);
        $passErr = '';
    } else {
        $p = FALSE;
        $passErr = 'You forgot to enter your password!';
    }

    if ($e && $p) {

        $systemErr_1 = $systemErr_2 = $systemErr_3 = '';

        $q = "SELECT id, first_name, middle_name, last_name, email, pass, phone_num FROM users WHERE email='$e' AND verify_code IS NULL";
        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

        if (@mysqli_num_rows($r) == 1) {

            list($user_id, $first_name, $middle_name, $last_name, $email, $pass, $phone_num) = mysqli_fetch_array($r, MYSQLI_NUM);

            mysqli_free_result($r);

            if (password_verify($p, $pass)) {

                $_SESSION['id'] = $user_id;
                $_SESSION['first_name'] = $first_name;
                $_SESSION['middle_name'] = $middle_name;
                $_SESSION['last_name'] = $last_name;
                $_SESSION['user_email'] = $email;
                $_SESSION['phone_num'] = $phone_num;
                mysqli_close($dbc);

                $url = BASE_URL . 'index.php';
                ob_end_clean();
                header("Location: $url");
                exit();

            } else {

                $systemErr_3 = 'Either the email address and password entered do not match those on file, or you have not yet activated your account.';

            }

        } else {

            $systemErr_2 = 'Either the email address and password entered do not match those on file, or you have not yet activated your account.';

            $systemErr_3 = '';

        }

    } else {
        $systemErr_1 = 'Please try again';
        $systemErr_2 = $systemErr_3 = '';
    }

    mysqli_close($dbc);

}
?>
<div class="account-container">
    <form class="sign-in-form" action="login.php" method="post">
        <fieldset class="sign-in-card">
            <div class="sign-in-title">
                <h2>Sign In</h2>
            </div>
            <div class="sign-in-email">
                <label for="signInUserEmail">Email address</label>
                <input type="email" id="signInUserEmail" name="email" class="user-email" maxlength="80">
            </div>
            <div class="email-error">
                <p><?php if (isset($_POST['email'])) echo $emailErr; ?></p>
            </div>
            <div class="sign-in-pass">
                <label for="signInUserPass">Password</label>
                <input type="password" id="signInUserPass" name="pass" class="user-pass" maxlength="255">
            </div>
            <div class="pass-error">
                <p><?php if (isset($_POST['pass'])) echo $passErr; ?></p>
            </div>
            <div class="sign-in-cookies">
                <p>Your browser must allow cookies in order to log in.</p>
            </div>
            <div class="sign-in-submit">
                <input type="submit" name="submit" class="sign-in-button" value="SIGN IN">
            </div>
            <div class="system-error">
                <p><?php if (isset($_POST['email'], $_POST['pass'])) echo $systemErr_1; ?></p>
                <p><?php if (isset($_POST['email'], $_POST['pass'])) echo $systemErr_2; ?></p>
                <p><?php if (isset($_POST['email'], $_POST['pass'])) echo $systemErr_3; ?></p>
            </div>
            <div class="sign-in-options">
                <p>Forgot your <a href="/FilmIndustry/eCommerce/forgot_password.php">password</a>?</p>
            </div>
            <div class="seller-sign-in-option">
                <p>Seller? Sign in <a href="/FilmIndustry/eCommerce/suppliers/login.php">here</a>.</p>
            </div>
            <div class="registration-option">
                <h2>New?</h2>
                <a href="/FilmIndustry/eCommerce/register_page1.php" class="register-button" role="button">REGISTER</a>
            </div>
        </fieldset>
    </form>
</div>
<?php include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/account_footer.html'); ?>