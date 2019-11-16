<?php

# change_password.php.
# Created on May 3, 2019.
# Created by Elias Gutierrez.


// *************************************** //
// ************ DOCUMENTATION ************ //

/*
    This file would allow the user to change their current password into a new one, and to check if they are logged in is by using sessions. If they are not logged in, then they are redirected to the home page. There is also an HTML form after the first PHP code that lets the logged in user to type in their inputs to change their password, and once submitted is where it uses the POST method.
*/

// ************ DOCUMENTATION ************ //
// *************************************** //


require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/config.inc.php');

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/secure.php');

$page_title = 'Change Password';

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/account_header.html');

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/breadcrumb.php');

if (!isset($_SESSION['id'])) {
    $url = BASE_URL . 'login.php';
    ob_end_clean();
    header("Location: $url");
    exit();
}

if (isset($_SESSION['supplier_id'])) {
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

        $q = "UPDATE users SET pass='$p' WHERE id={$_SESSION['id']} LIMIT 1";
        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

        if (mysqli_affected_rows($dbc) == 1) {

            echo '<div class="change-pass-success"><h3>Your password has been changed.</h3></div>';

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

$account_breadcrumb = new account_breadcrumb();

echo '<div class="account-container"><div class="account-breadcrumb">' . $account_breadcrumb->build(array('Login & Security' => 'login_security.php', 'Change Password' => '')) . '</div>';
?>
<form action="change_password.php" method="post" id="userChangePassCard">
    <fieldset class="change-pass-card">
        <div class="change-pass-title">
            <h2>Change Password</h2>
        </div>
        <div class="change-pass-info">
            <p>Please enter a new password that is 10 characters or more, and that is not the same as your previous one.</p>
        </div>
        <div class="change-pass-new-input">
            <label for="changeUserPassInput">New password</label>
            <input type="password" id="changeUserPassInput" class="user-pass--change" name="password1" maxlength="255">
        </div>
        <?php if (isset($_POST['password1'], $_POST['password2'])) echo '<div class="change-pass-error"><p>' . $passErr_1 . '</p></div>'; ?>
        <div class="change-pass-confirm-input">
            <label for="confirmUserPassInput">Confirm new password</label>
            <input type="password" id="confirmUserPassInput" class="user-pass--confirm" name="password2" maxlength="255">
        </div>
        <?php if (isset($_POST['password1'], $_POST['password2'])) echo '<div class="confirm-pass-error"><p>' . $passErr_2 . '</p></div>'; ?>
        <div class="change-pass-submit">
            <input type="submit" class="change-pass-button" name="submit" value="SET PASSWORD & CHANGE">
        </div>
        <?php if (isset($_POST['password1'], $_POST['password2'])) echo '<div class="system-error--change-pass"><p>' . $systemErr_1 . '</p><p>' . $systemErr_2 . '</p></div>'; ?>
    </fieldset>
</form>
<?php

echo '</div>';

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/account_footer.html');

?>