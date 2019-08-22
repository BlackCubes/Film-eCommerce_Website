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

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/header.html');

if (!isset($_SESSION['id']) || isset($_SESSION['supplier_id'])) {
    $url = BASE_URL . 'index.php';
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

}

?>
<form action="change_name.php" method="post" id="userChangeName">
    <fieldset class="change-name-card">
        <div class="change-name-title">
            <h2>Change your name</h2>
        </div>
        <div class="change-name-info">
            <p>If you want to change your name associated with your account, you may do so below. Be sure to click the <b>Save Changes</b> button when you are done.</p>
        </div>
        <div class="change-full-name">
            <div class="first-name--change-name">
                <label for="changeFirstName">New first name</label>
                <input type="text" id="changeFirstName" class="user-first-name--change-name" name="first_name" maxlength="20" value="<?php if (isset($_POST['first_name'])) echo sanitize_input($_POST['first_name']); ?>">
            </div>
            <div class="middle-name--change-name">
                <label for="changeMiddleName">New middle name (optional)</label>
                <input type="text" id="changeMiddleName" class="user-middle-name--change-name" name="middle_name" maxlength="40" value="<?php if (isset($_POST['middle_name'])) echo sanitize_input($_POST['middle_name']); ?>">
            </div>
            <div class="last-name--change-name">
                <label for="changeLastName">New last name</label>
                <input type="text" id="changeLastName" class="user-last-name--change-name" name="last_name" maxlength="40" value="<?php if (isset($_POST['last_name'])) echo sanitize_input($_POST['last_name']); ?>">
            </div>
        </div>
        <div class="change-name-submit">
            <input type="submit" class="change-name-button" name="submit" value="Save Changes">
        </div>
    </fieldset>
</form>
<?php include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/footer.html'); ?>