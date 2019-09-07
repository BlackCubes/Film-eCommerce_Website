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

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/breadcrumb.php');

if (!isset($_SESSION['id']) || isset($_SESSION['supplier_id'])) {
    $url = BASE_URL . 'index.php';
    ob_end_clean();
    header("Location: $url");
    exit();
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    require(MYSQL);

    $e1 = $p = FALSE;

    if (!empty($_POST['email_1'])) {
        $emailErr1 = $emailErr2 = '';
        if (filter_var(sanitize_input($_POST['email_1']), FILTER_VALIDATE_EMAIL) != $_SESSION['user_email']) {
            if (filter_var(sanitize_input($_POST['email_1']), FILTER_VALIDATE_EMAIL) == filter_var(sanitize_input($_POST['email_2']), FILTER_VALIDATE_EMAIL)) {
                $e1 = mysqli_real_escape_string($dbc, sanitize_input($_POST['email_1']));
            } else {
                $emailErr2 = 'Your confirmed email does not match your new email!';
            }
        } else {
            $emailErr1 = 'Please enter a newer email address different from your old one!';
            $emailErr2 = 'Please confirm your new email!';
        }
    } else {
        $emailErr1 = 'Please enter a new email address!';
        $emailErr2 = 'An error occured on confirming your new email!';
    }

    if (!empty($_POST['password'])) {
        $passErr = '';
        $p = sanitize_input($_POST['password']);
    } else {
        $passErr = 'An error occured on your password!';
    }

    if ($e1 && $p) {

        $systemErr = $_SESSION['systemSuccess'] = $_SESSION['systemErr'] = '';

        mysqli_autocommit($dbc, FALSE);

        $q = "SELECT pass FROM users WHERE id={$_SESSION['id']}";
        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));
        $pass = mysqli_fetch_array($r, MYSQLI_NUM);

        if (password_verify($p, $pass) && (mysqli_num_rows($r) == 1)) {

            $q = "UPDATE users SET email='" . $e1 . "' WHERE id={$_SESSION['id']} LIMIT 1";

            $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

            if ($r) {

                $_SESSION['user_email'] = $e1;

                mysqli_commit($dbc);

                $_SESSION['systemSuccess'] = 'You have successfully modified your email for your account!';

                $url = BASE_URL . 'account/login_security.php';
                ob_end_clean();
                header("Location: $url");
                exit();

            } else {

                mysqli_rollback($dbc);

                $_SESSION['systemErr'] = 'There was an error changing your new email. If you think an error occured, please contact the system administrator. We are sorry for the inconvenience.';

                $url = BASE_URL . 'account/login_security.php';
                ob_end_clean();
                header("Location: $url");
                exit();

            }

        } else {

            $_SESSION['systemErr'] = 'The password you entered does not match those in the system. Please try again, or contact the system administrator. We are sorry for the inconvenience.';

            $url = BASE_URL . 'account/login_security.php';
            ob_end_clean();
            header("Location: $url");
            exit();

        }

    } else {
        $systemErr = 'Please try again';
    }

}

?>
<form action="change_email.php" method="post" id="userChangeEmailCard">
    <fieldset class="change-email-card">
        <div class="change-email-title">
            <h2>Change Email</h2>
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
        <?php if (isset($emailErr1)) echo '<div class="email-error--change-email"><p>' . $emailErr1 . '</p></div>'; ?>
        <div class="confirm-email-input--change-email">
            <label for="changeConfirmEmail">Re-enter new email</label>
            <input type="email" id="changeConfirmEmail" class="user-confirm-email--change-email" name="email_2" maxlength="80">
        </div>
        <?php if (isset($emailErr2)) echo '<div class="email-error--change-email"><p>' . $emailErr2 . '</p></div>'; ?>
        <div class="confirm-password-input--change-email">
            <label for="changeConfirmPass">Password</label>
            <input type="password" id="changeConfirmPass" class="user-confirm-password--change-email" name="password" maxlength="255">
        </div>
        <?php if (isset($passErr)) echo '<div class="pass-error--change-email"><p>' . $passErr . '</p></div>'; ?>
        <div class="change-email-submit">
            <input type="submit" class="change-email-button" name="submit" value="SAVE CHANGES">
        </div>
        <?php if (isset($systemErr)) echo '<div class="system-error--change-email"><p>' . $systemErr . '</p></div>'; ?>
    </fieldset>
</form>
<?php include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/footer.html'); ?>