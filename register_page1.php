<?php

# register.php.
# Created on April 30, 2019.
# Created by Elias Gutierrez.

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/config.inc.php');

$page_title = 'Registration';

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/account_header.html');

if (isset($_SESSION['id'])) {
    ob_end_clean();
    header("Location: http://localhost:8080/FilmIndustry/eCommerce/index.php");
    exit();
}

if (!isset($_SESSION)) {
    session_start();
}
?>
<div class="account-container">
    <form action="register_page2.php" method="post" id="registerUserCard1">
        <fieldset class="register-card">
            <div class="register-title">
                <h2>Create Account</h2>
            </div>
            <div class="register-name">
                <div class="first-name--register">
                    <label for="registerFirstName">First Name</label>
                    <input type="text" id="registerFirstName" class="user-first-name--new" name="first_name" maxlength="20" value="<?php if (isset($_SESSION['fn'])) echo $_SESSION['fn']; unset($_SESSION['fn']); ?>">
                </div>
                <div class="last-name--register">
                    <label for="registerLastName">Last Name</label>
                    <input type="text" id="registerLastName" class="user-last-name--new" name="last_name" maxlength="40" value="<?php if (isset($_SESSION['ln'])) echo $_SESSION['ln']; unset($_SESSION['ln']); ?>">
                </div>
            </div>
            <?php

            if (isset($_SESSION['fnErr'])) {
                echo '<div class="name-error"><p>' . $_SESSION['fnErr'] . '</p></div>';
                unset($_SESSION['fnErr']);
            }
            
            if (isset($_SESSION['lnErr'])) {
                echo '<div class="name-error"><p>' . $_SESSION['lnErr'] . '</p></div>';
                unset($_SESSION['lnErr']);
            }

            ?>
            <div class="register-email">
                <label for="registerEmail">Email</label>
                <input type="email" id="registerEmail" class="user-email--register" name="email" maxlength="80" value="<?php if (isset($_SESSION['email'])) echo $_SESSION['email']; unset($_SESSION['email']); ?>">
            </div>
            <?php if (isset($_SESSION['emailErr'])) echo '<div class="email-error"><p>' . $_SESSION['emailErr'] . '</p></div>';
            unset($_SESSION['emailErr']); ?>
            <div class="register-new-password">
                <label for="registerPassword">Password <span class="register-password-info">(at least 10 characters long)</span></label>
                <input type="password" id="registerPassword" class="user-new-pass--register" name="password1" maxlength="255">
            </div>
            <?php if (isset($_SESSION['passErr1'])) echo '<div class="pass-error"><p>' . $_SESSION['passErr1'] . '</p></div>';
            unset($_SESSION['passErr1']); ?>
            <div class="register-confirm-password">
                <label for="registerConfirmPassword">Confirm Password</label>
                <input type="password" id="registerConfirmPassword" class="user-confirm-pass--register" name="password2" maxlength="255">
            </div>
            <?php if (isset($_SESSION['passErr2'])) echo '<div class="pass-error"><p>' . $_SESSION['passErr2'] . '</p></div>';
            unset($_SESSION['passErr2']); ?>
            <div class="register-continue">
                <input type="submit" class="register-continue-button" name="continue" value="CONTINUE">
            </div>
            <?php if (isset($_SESSION['systemErr1'])) echo '<div class="system-error"><p>' . $_SESSION['systemErr1'] . '</p></div>';
            unset($_SESSION['systemErr1']);
            ?>
            <div class="register-sign-in-option">
                <p>Already have an account? <a href="/FilmIndustry/eCommerce/login.php">Sign in</a></p>
            </div>
            <div class="register-seller-option">
                <p>Want to sell your films? Register <a>here</a></p>
            </div>
        </fieldset>
    </form>
</div>
<?php include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/account_footer.html'); ?>