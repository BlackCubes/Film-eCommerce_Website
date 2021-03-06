<?php

# change_name.php (User Changes Name).
# Created on August 21, 2019.
# Created by Elias Gutierrez.

// *************************************** //
// ************ DOCUMENTATION ************ //

/*

*/

// ************ DOCUMENTATION ************ //
// *************************************** //

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/config.inc.php');

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/secure.php');

$page_title = 'Change Name';

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

    $fn = $ln = FALSE;

    if (preg_match('/^[A-Z\p{L}]{1}(.[A-Z]{1}.)?([a-z\p{L}]+)?$/u', sanitize_input($_POST['first_name']))) {
        $fnErr = '';
        $fn = mysqli_real_escape_string($dbc, sanitize_input($_POST['first_name']));
    } else {
        $fnErr = 'An error occured on your first name!';
    }

    if (preg_match('/(^[A-Za-z\p{L}](\.)?([a-z\p{L}]+)?$)(?!;)?/u', sanitize_input($_POST['middle_name']))) {
        $mnErr = '';
        $mn = mysqli_real_escape_string($dbc, sanitize_input($_POST['middle_name']));
    } elseif (empty(sanitize_input($_POST['middle_name']))) {
        $mnErr = '';
        $mn = mysqli_real_escape_string($dbc, sanitize_input($_POST['middle_name']));
    } else {
        $mnErr = 'An error occured on your middle name!';
    }

    if (preg_match('/^[A-Z\p{L}]{1}([a-z\p{L}]{1}[A-Z\p{L}]{1})?([\']{1}[A-Z\p{L}]{1})?[a-z\p{L}]+([-]{1}[A-Z\p{L}]{1}[a-z\p{L}]+)?( Jr.)?$/u', sanitize_input($_POST['last_name']))) {
        $lnErr = '';
        $ln = mysqli_real_escape_string($dbc, sanitize_input($_POST['last_name']));
    } else {
        $lnErr = 'An error occured on your last name!';
    }

    if ($fn && $ln) {

        $systemErr = $_SESSION['systemSuccess'] = $_SESSION['systemErr'] = '';

        mysqli_autocommit($dbc, FALSE);

        $q = "UPDATE users SET first_name='" . $fn . "', middle_name='" . $mn . "', last_name='" . $ln . "' WHERE id={$_SESSION['id']} LIMIT 1";

        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

        if ($r) {

            $_SESSION['first_name'] = $fn;
            $_SESSION['middle_name'] = $mn;
            $_SESSION['last_name'] = $ln;

            mysqli_commit($dbc);

            $_SESSION['systemSuccess'] = 'You have successfully modified your name for your account!';

            $url = BASE_URL . 'account/login_security.php';
            ob_end_clean();
            header("Location: $url");
            exit();

        } else {

            mysqli_rollback($dbc);

            $_SESSION['systemErr'] = 'There was an error changing your new name. If you think an error occured, please contact the system administrator. We apologize for the inconvenience.';

            $url = BASE_URL . 'account/login_security.php';
            ob_end_clean();
            header("Location: $url");
            exit();

        }

    } else {
        $systemErr = 'Please try again';
    }

}

$account_breadcrumb = new account_breadcrumb();

echo '<div class="account-container"><div class="account-breadcrumb">' . $account_breadcrumb->build(array('Login & Security' => 'login_security.php', 'Change Your Name' => '')) . '</div>';
?>
<form action="change_name.php" method="post" id="userChangeNameCard">
    <fieldset class="change-name-card">
        <div class="change-name-title">
            <h2>Change Your Name</h2>
        </div>
        <div class="change-name-info">
            <p>If you want to change your name associated with your account, you may do so below. Be sure to click the <b>SAVE CHANGES</b> button when you are done.</p>
        </div>
        <div class="change-full-name">
            <div class="first-name--change-name">
                <label for="changeFirstName">New first name</label>
                <input type="text" id="changeFirstName" class="user-first-name--change-name" name="first_name" maxlength="20" value="<?php if (isset($_POST['first_name'])) echo sanitize_input($_POST['first_name']); ?>">
            </div>
            <div class="middle-name--change-name">
                <label for="changeMiddleName">New middle name <span class="change-middle-name-info">(optional)</span></label>
                <input type="text" id="changeMiddleName" class="user-middle-name--change-name" name="middle_name" maxlength="40" value="<?php if (isset($_POST['middle_name'])) echo sanitize_input($_POST['middle_name']); ?>">
            </div>
            <div class="last-name--change-name">
                <label for="changeLastName">New last name</label>
                <input type="text" id="changeLastName" class="user-last-name--change-name" name="last_name" maxlength="40" value="<?php if (isset($_POST['last_name'])) echo sanitize_input($_POST['last_name']); ?>">
            </div>
        </div>
        <?php if (isset($fnErr) || isset($mnErr) || isset($lnErr)) echo '<div class="full-name-error--change-name"><p>' . $fnErr . ' ' . $mnErr . ' ' . $lnErr . '</p></div>'; ?>
        <div class="change-name-submit">
            <input type="submit" class="change-name-button" name="submit" value="SAVE CHANGES">
        </div>
        <?php if (isset($systemErr)) echo '<div class="system-error--change-name"><p>' . $systemErr . '</p></div>'; ?>
    </fieldset>
</form>
<?php

echo '</div>';

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/account_footer.html');

?>