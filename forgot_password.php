<?php

# forgot_password.php.
# Created on May 2, 2019.
# Created by Elias Gutierrez.

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/config.inc.php');

$page_title = 'Forgot Password';

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/account_header.html');

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    require(MYSQL);

    $uid = FALSE;

    if (!empty($_POST['email'])) {

        $emailErr_1 = $emailErr_2 = '';

        $q = 'SELECT id FROM users WHERE email="' . mysqli_real_escape_string($dbc, $_POST['email']) . '"';
        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

        if (mysqli_num_rows($r) == 1) {

            list($uid) = mysqli_fetch_array($r, MYSQLI_NUM);

        } else {

            $emailErr_2 = 'The submitted email address does not match those on file!';
            
        }

    } else {

        $emailErr_1 = 'You forgot to enter your email address!';
        $emailErr_2 = '';

    }

    if ($uid) {

        $systemErr_1 = $systemErr_2 = '';

        $p = substr(md5(uniqid(rand(), true)), 3, 15);
        $ph = password_hash($p);

        $q = "UPDATE users SET pass='$ph' where id=$uid LIMIT 1";
        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

        if (mysqli_affected_rows($dbc) == 1) {

            $body = "Your password to log into the Film eCommerce site has been temporarily changed to '$p'. Please log in using this password and this email address. Then you may change your password to something more familiar.";
            mail($_POST['email'], 'Your temporary password.', $body, 'From: gutierrezelias1991@gmail.com');

            echo '<div class="account-container"><div class="forgot-pass-success"><h3>Your password has been changed. You will receive the new, temporary password at the email address with which you registered. Once you have logged in with this password, you may change it by clicking on the Change Password link.</h3></div></div>';
            mysqli_close($dbc);
            include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/account_footer.html');
            exit();

        } else {
            $systemErr_2 = 'Your password could not be changed due to a system error. We apologize for any inconvenience.';
        }

    } else {
        $systemErr_1 = 'Please try again.';
        $systemErr_2 = '';
    }

    mysqli_close($dbc);

}
?>
<div class="account-container">
    <form action="forgot_password.php" method="post" id="forgotPassCard">
        <fieldset class="forgot-pass-card">
            <div class="forgot-pass-title">
                <h2>Request Password Reset</h2>
            </div>
            <div class="forgot-pass-info">
                <p>Enter the email address associated with your account. We'll email you with the instructions on how to reset your password.</p>
            </div>
            <div class="forgot-email-input">
                <label for="forgotUserEmailInput">Email address</label>
                <input type="email" id="forgotUserEmailInput" name="email" class="user-email--forgot" maxlength="80">
            </div>
            <?php if (isset($_POST['email'])) echo '<div class="forgot-pass-error"><p>' . $emailErr_1 . '</p><p>' . $emailErr_2 . '</p></div>'; ?>
            <div class="forgot-email-submit">
                <input type="submit" name="submit" class="forgot-pass-button" value="SUBMIT">
            </div>
            <?php if (isset($_POST['email'])) echo '<div class="system-error--forgot-pass"><p>' . $systemErr_1 . '</p><p>' . $systemErr_2 . '</p></div>'; ?>
        </fieldset>
    </form>
</div>
<?php include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/account_footer.html'); ?>