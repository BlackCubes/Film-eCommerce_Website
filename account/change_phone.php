<?php

# change_phone.php (User Changes Phone Number).
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

$page_title = 'Change Phone Number';

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/account_header.html');

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/breadcrumb.php');

if (!isset($_SESSION['id'])) {
    $url = BASE_URL . 'login.php';
    ob_end_clean();
    header("Location: $url");
    exit();
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    require(MYSQL);

    $post_action = sanitize_input($_POST['submit']);

    switch ($post_action) {

        case "DELETE":

            $_SESSION['systemSuccess'] = $_SESSION['systemErr'] = '';

            $q = "UPDATE users SET phone_num='' WHERE id={$_SESSION['id']} LIMIT 1";

            $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

            if ($r) {

                unset($_SESSION['phone_num']);

                mysqli_commit($dbc);

                $_SESSION['systemSuccess'] = 'You have successfully deleted your phone number from your account!';

                $url = BASE_URL . 'account/login_security.php';
                ob_end_clean();
                header("Location: $url");
                exit();

            } else {

                mysqli_rollback($dbc);

                $_SESSION['systemErr'] = 'There was an error deleting your phone number. If you think an error occured, please contact the system administrator. We are sorry for the inconvenience.';

                $url = BASE_URL . 'account/login_security.php';
                ob_end_clean();
                header("Location: $url");
                exit();

            }

            break;

        case "CANCEL":

            $url = BASE_URL . 'account/profile.php';
            mysqli_close($dbc);
            ob_end_clean();
            header("Location: $url");
            exit();

            break;

        case "CONTINUE":

            $pn = FALSE;

            if (preg_match('/^[0-9]{3}-[0-9]{3}-[0-9]{4}$/', sanitize_input($_POST['phone_num'])) && sanitize_input($_POST['phone_num']) != $_SESSION['phone_num']) {
                $phoneErr = '';
                $pn = mysqli_real_escape_string($dbc, sanitize_input($_POST['phone_num']));
            } else {
                $phoneErr = 'Please enter a valid phone number!';
            }

            if ($pn) {

                $systemErr = $_SESSION['systemSuccess'] = $_SESSION['systemErr'] = '';

                mysqli_autocommit($dbc, FALSE);

                $q = "UPDATE users SET phone_num='" . $pn . "' WHERE id={$_SESSION['id']} LIMIT 1";

                $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

                if ($r) {

                    $_SESSION['phone_num'] = $pn;

                    mysqli_commit($dbc);

                    $_SESSION['systemSuccess'] = 'You have successfully modified your phone number for your account!';

                    $url = BASE_URL . 'account/login_security.php';
                    ob_end_clean();
                    header("Location: $url");
                    exit();

                } else {

                    mysqli_rollback($dbc);

                    $_SESSION['systemErr'] = 'There was an error changing your phone number. If you think an error occured, please contact the system administrator. We apologize for the inconvenience.';

                    $url = BASE_URL . 'account/login_security.php';
                    ob_end_clean();
                    header("Location: $url");
                    exit();

                }

            } else {
                $systemErr = 'Please try again';
            }

            break;

    }

}

$account_breadcrumb = new account_breadcrumb();

echo '<div class="account-container"><div class="account-breadcrumb">' . $account_breadcrumb->build(array('Login & Security' => 'login_security.php', 'Change Mobile Phone Number' => '')) . '</div>';
?>
<form action="change_phone.php" method="post" id="userChangePhoneCard">
    <fieldset class="change-phone-card">
        <div class="change-phone-title">
            <h2>Change Mobile Phone Number</h2>
        </div>
        <div class="current-phone--change-phone">
            <div class="old-phone-number--change-phone">
                <label for="currentPhone">Old mobile phone number</label>
                <div id="currentPhone" class="user-current-phone--change-phone">
                    <p><?php if (isset($_SESSION['phone_num'])) {echo $_SESSION['phone_num'];} else {echo 'None';} ?></p>
                </div>
            </div>
            <?php if (isset($_SESSION['phone_num'])) {echo '<div class="delete-phone-submit"><input type="submit" class="delete-phone-button" name="submit" value="DELETE"></div>';} else {echo '';} ?>
        </div>
        <div class="new-phone-input--change-phone">
            <label for="changeNewPhone">Mobile Number</label>
            <input type="tel" id="changeNewPhone" class="user-new-phone--change-phone" name="phone_num" placeholder="123-456-7890" maxlength="15" value="<?php if (isset($_POST['phone_num'])) echo sanitize_input($_POST['phone_num']); ?>">
        </div>
        <?php if (isset($phoneErr)) echo '<div class="phone-error--change-phone"><p>' . $phoneErr . '</p></div>'; ?>
        <div class="change-phone-submit">
            <input type="submit" class="change-phone-button" name="submit" value="CONTINUE">
        </div>
        <div class="cancel-phone-submit">
            <input type="submit" class="cancel-phone-button" name="submit" value="CANCEL">
        </div>
        <?php if (isset($systemErr)) echo '<div class="system-error--change-phone"><p>' . $systemErr . '</p></div>'; ?>
    </fieldset>
</form>
<?php

echo '</div>';

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/account_footer.html');

?>