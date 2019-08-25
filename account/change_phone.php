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

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/header.html');

if (!isset($_SESSION['id']) || isset($_SESSION['supplier_id'])) {
    $url = BASE_URL . 'index.php';
    ob_end_clean();
    header("Location: $url");
    exit();
}

/* CASES FOR 'continue', 'cancel', and 'delete' */

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    require(MYSQL);

    $post_action = sanitize_input($_POST['submit']);

    switch ($post_action) {

        case "DELETE":

            $q = "UPDATE users SET phone_num='' WHERE id={$_SESSION['id']} LIMIT 1";

            $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

            if ($r) {

                unset($_SESSION['phone_num']);

                mysqli_commit($dbc);

                $systemSuccess = 'You have successfully deleted your phone number from your account!';

                /* Redirect the user to another page!!!! */

            } else {

                mysqli_rollback($dbc);

                $systemErr = 'There was an error deleting your phone number. If you think an error occured, please contact the system administrator. We are sorry for the inconvenience.';

                /* Redirect the user to another page!!!! */

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

                $systemErr = '';

                mysqli_autocommit($dbc, FALSE);

                $q = "UPDATE users SET phone_num='" . $pn . "' WHERE id={$_SESSION['id']} LIMIT 1";

                $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

                if ($r) {

                    mysqli_commit($dbc);

                    $_SESSION['phone_num'] = $pn;

                    $systemSuccess = 'You have successfully modified your phone number for your account!';

                    /* Redirect the user to another page!!!! */

                } else {

                    mysqli_rollback($dbc);

                    $systemErr = 'There was an error changing your phone number. If you think an error occured, please contact the system administrator. We apologize for the inconvenience.';

                    /* Redirect the user to another page!!!! */

                }

            } else {
                $systemErr = 'Please try again';
            }

            break;

    }

}

?>
<form action="change_phone.php" method="post" id="userChangePhoneCard">
    <fieldset class="change-phone-card">
        <div class="change-phone-title">
            <h2>Change Mobile Phone Number</h2>
        </div>
        <div class="current-phone--change-phone">
            <label for="currentPhone">Old mobile phone number</label>
            <div id="currentPhone" class="user-current-phone--change-phone">
                <p><?php if (isset($_SESSION['phone_num'])) {echo $_SESSION['phone_num'];} else {echo 'None';} ?></p>
            </div>
            <?php if (isset($_SESSION['phone_num'])) {echo '<div class="delete-phone-submit"><input type="submit" class="delete-phone-button" name="submit" value="DELETE"></div>';} else {echo '';} ?>
            </div>
        </div>
        <div class="new-phone-input--change-phone">
            <label for="changeNewPhone">Mobile Number</label>
            <input type="tel" id="changeNewPhone" class="user-new-phone--change-phone" name="phone_num" placeholder="123-456-7890" maxlength="15" value="<?php if (isset($_POST['phone_num'])) echo sanitize_input($_POST['phone_num']); ?>">
        </div>
        <div class="change-phone-submit">
            <input type="submit" class="change-phone-button" name="submit" value="CONTINUE">
        </div>
        <div class="cancel-phone-submit">
            <input type="submit" class="cancel-phone-button" name="submit" value="CANCEL">
        </div>
    </fieldset>
</form>
<?php include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/footer.html'); ?>