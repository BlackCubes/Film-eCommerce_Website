<?php

# change_email.php (User Changes Email).
# Created on August 24, 2019.
# Created by Elias Gutierrez.

// *************************************** //
// ************ DOCUMENTATION ************ //

/*

*/

// ************ DOCUMENTATION ************ //
// *************************************** //

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/config.inc.php');

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/secure.php');

$page_title = 'Change Email';

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/header.html');

if (!isset($_SESSION['id']) || isset($_SESSION['supplier_id'])) {
    $url = BASE_URL . 'index.php';
    ob_end_clean();
    header("Location: $url");
    exit();
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    require(MYSQL);

    $e1 = $p = FALSE;

    if (filter_var(sanitize_input($_POST['email_1']), FILTER_VALIDATE_EMAIL) == $_SESSION['user_email']) {
        $emailErr1 = $emailErr2 = '';
        if (filter_var(sanitize_input($_POST['email_1']), FILTER_VALIDATE_EMAIL) == filter_var(sanitize_input($_POST['email_2']), FILTER_VALIDATE_EMAIL)) {
            $e1 = mysqli_real_escape_string($dbc, sanitize_input($_POST['email_1']));
        } else {
            $emailErr2 = 'Your confirmed email does not match your new email!';
        }
    } else {
        $emailErr1 = 'Please enter a newer email address different from your old one!';
        $emailErr2 = 'Please confirm your new email!';
    }

    if (!empty($_POST['password'])) {
        $passErr = '';
        $p = sanitize_input($_POST['password']);
    } else {
        $passErr = 'An error occured on your password!';
    }

    if ($e1 && $p) {

        $systemErr = '';

        mysqli_autocommit($dbc, FALSE);

        $q = "SELECT pass FROM users WHERE id={$_SESSION['id']}";
        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));
        $pass = mysqli_fetch_array($r, MYSQLI_NUM);

        if (password_verify($p, $pass) && (mysqli_num_rows($r) == 1)) {

        } else {
            $systemErr = 'The password you entered does not match those in the system. Please try again, or contact the system administrator. We are sorry for the inconvenience.';
            /* Redirect the user to another page!!!! */
        }

    } else {
        $systemErr = 'Please try again';
    }

}

?>
<form action="change_email.php" method="post" id="userChangeEmailCard">
    <fieldset class="change-email-card">
        <div class="change-email-title">
            <h2>Change email</h2>
        </div>
        <div class="current-email--change-email">
            <label for="currentEmail">Old email address</label>
            <div id="currentEmail" class="user-current-email--change-email">
                <p><?php echo $_SESSION['user_email']; ?></p>
            </div>
        </div>
        <div class="new-email-input--change-email">
            <label for="changeNewEmail">New email address</label>
            <input type="email" id="changeNewEmail" class="user-new-email--change-email" name="email_1" maxlength="80" value="<?php if (isset($_POST['email_1'])) echo sanitize_input($_POST['email_1']); ?>">
        </div>
        <div class="confirm-email-input--change-email">
            <label for="changeConfirmEmail">Re-enter new email</label>
            <input type="email" id="changeConfirmEmail" class="user-confirm-email--change-email" name="email_2" maxlength="80">
        </div>
        <div class="confirm-password-input--change-email">
            <label for="changeConfirmPass">Password</label>
            <input type="password" id="changeConfirmPass" class="user-confirm-password--change-email" name="password" maxlength="255">
        </div>
        <div class="change-email-submit">
            <input type="submit" class="change-email-button" name="submit" value="SAVE CHANGES">
        </div>
    </fieldset>
</form>
<?php include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/footer.html'); ?>