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

/* CASES FOR 'continue', 'cancel', and 'delete' */

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
            <div class="delete-phone-submit">
                <input type="submit" class="delete-phone-button" name="submit" value="Delete">
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