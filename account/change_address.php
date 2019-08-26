<?php

# change_address.php (User Changes Address).
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

$page_title = 'Change Address';

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/header.html');

if (!isset($_SESSION['id']) || isset($_SESSION['supplier_id'])) {
    $url = BASE_URL . 'index.php';
    ob_end_clean();
    header("Location: $url");
    exit();
}

?>
<form action="change_address.php" method="post" id="userChangeAddressCard">
    <fieldset class="change-address-card">
        <div class="change-address-title">
            <h2>Edit Your Address</h2>
        </div>
        <div class="new-address-input--change-address">
            <label for="changeNewAddress">Street address</label>
            <input type="text" id="changeNewAddress" class="user-new-address-1--change-address" name="address_1" maxlength="46" placeholder="Street and Number" value="<?php if (isset($_POST['address_1'])) echo sanitize_input($_POST['address_1']); ?>">
            <input type="text" id="changeNewAddress" class="user-new-address-2--change-address" name="address_2" maxlength="46" placeholder="Apartment / Suite / Other (optional)" value="<?php if (isset($_POST['address_2'])) echo sanitize_input($_POST['address_2']); ?>">
        </div>
        <div class="new-city-input--change-address">
            <label for="changeNewCity">City</label>
            <input type="text" id="changeNewCity" class="user-new-city--change-address" name="city" maxlength="50" value="<?php if (isset($_POST['city'])) echo sanitize_input($_POST['city']); ?>">
        </div>
        <div class="new-state-input--change-address">
            <label for="changeNewState">State</label>
            <input type="text" id="changeNewState" class="user-new-state--change-address" name="state" maxlength="50" placeholder="NJ or New Jersey" value="<?php if (isset($_POST['state'])) echo sanitize_input($_POST['state']); ?>">
        </div>
        <div class="new-zip-code-input--change-address">
            <label for="changeNewZipCode">Zip Code</label>
            <input type="text" id="changeNewZipCode" class="user-new-zip--change-address" name="zip_code" maxlength="10" placeholder="12345 or 12345-6789" value="<?php if (isset($_POST['zip_code'])) echo sanitize_input($_POST['zip_code']); ?>">
        </div>
    </fieldset>
</form>
<?php include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/footer.html'); ?>