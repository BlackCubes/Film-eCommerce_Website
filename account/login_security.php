<?php

# login_security.php (User Selects Login and Security Options).
# Created on August 25, 2019.
# Created by Elias Gutierrez.

// *************************************** //
// ************ DOCUMENTATION ************ //

/*

*/

// ************ DOCUMENTATION ************ //
// *************************************** //

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/config.inc.php');

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/secure.php');

$page_title = 'Login & Security';

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/account_header.html');

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/breadcrumb.php');

if (!isset($_SESSION['id']) || isset($_SESSION['supplier_id'])) {
    $url = BASE_URL . 'index.php';
    ob_end_clean();
    header("Location: $url");
    exit();
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    $post_action = sanitize_input($_POST['submit']);

    switch ($post_action) {

        case "EDIT NAME":

            $url = BASE_URL . 'account/change_name.php';
            ob_end_clean();
            header("Location: $url");
            exit();

            break;

        case "EDIT EMAIL":

            $url = BASE_URL . 'account/change_email.php';
            ob_end_clean();
            header("Location: $url");
            exit();

            break;

        case "EDIT PHONE":

            $url = BASE_URL . 'account/change_phone.php';
            ob_end_clean();
            header("Location: $url");

            break;

        case "EDIT PASSWORD":

            $url = BASE_URL . 'account/change_password.php';
            ob_end_clean();
            header("Location: $url");
            exit();

            break;
    }
}

if (!empty($_SESSION['systemSuccess'])) {
    echo '<div class="system-success--account-option"><p>' . $_SESSION['systemSuccess'] . '</p></div>';
    unset($_SESSION['systemSuccess']);
} else {
    unset($_SESSION['systemSuccess']);
}

if (!empty($_SESSION['systemErr'])) {
    echo '<div class=""system-error--account-option><p>' . $_SESSION['systemErr'] . '</p></div>';
} else {
    unset($_SESSION['systemErr']);
}

$account_breadcrumb = new account_breadcrumb();

echo '<div class="account-breadcrumb">' . $account_breadcrumb->build(array('Login & Security' => '')) . '</div>';
?>
<form action="login_security.php" method="post" id="userOptionLoginSecurityCard">
    <fieldset class="option-login-security-card">
        <div class="option-login-security-title">
            <h2>Login & Security</h2>
        </div>
        <!--<div class="list-login-security--account-option">-->
        <div class="border-row">
            <div class="edit-full-name--account-option">
                <div class="current-full-name--account-option">
                    <label for="currentName">Name</label>
                    <div id="currentName" class="user-current-name--account-option">
                        <p><?php echo $_SESSION['first_name'] . ' ' . $_SESSION['middle_name'] . ' ' . $_SESSION['last_name']; ?></p>
                    </div>
                </div>
                <div class="edit-full-name-submit">
                    <input type="submit" class="edit-full-name-button" name="submit" value="EDIT NAME">
                </div>
            </div>
        </div>
        <div class="border-row">
            <div class="edit-email--account-option">
                <div class="current-email--account-option">
                    <label for="currentEmail">Email</label>
                    <div id="currentEmail" class="user-current-email--account-option">
                        <p><?php echo $_SESSION['user_email']; ?></p>
                    </div>
                </div>
                <div class="edit-email-submit">
                    <input type="submit" class="edit-email-button" name="submit" value="EDIT EMAIL">
                </div>
            </div>
        </div>
        <div class="border-row">
            <div class="edit-phone--account-option">
                <div class="current-phone--account-option">
                    <label for="currentPhone">Phone Number</label>
                    <div id="currentPhone" class="user-current-phone--account-option">
                        <p><?php if (isset($_SESSION['phone_num'])) {echo $_SESSION['phone_num'];} else {echo 'None';} ?></p>
                    </div>
                </div>
                <div class="edit-phone-submit">
                    <input type="submit" class="edit-phone-button" name="submit" value="EDIT PHONE">
                </div>
            </div>
        </div>
        <div class="border-row">
            <div class="edit-password--account-option">
                <div class="current-password--account-option">
                    <label for="currentPassword">Password</label>
                    <div id="currentPassword" class="user-current-password--account-option">
                        <p>********</p>
                    </div>
                </div>
                <div class="edit-password-submit">
                    <input type="submit" class="edit-password-button" name="submit" value="EDIT PASSWORD">
                </div>
            </div>
        </div>
        <!--</div>-->
    </fieldset>
</form>
<?php include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/account_footer.html'); ?>