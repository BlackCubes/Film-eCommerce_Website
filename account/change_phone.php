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
        </div>
    </fieldset>
</form>
<?php include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/footer.html'); ?>