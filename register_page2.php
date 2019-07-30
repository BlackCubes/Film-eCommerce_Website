<?php

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/config.inc.php');

$page_title = 'Register';

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/header.html');

?>
<form action="register.php" method="post" id="registerUserCard2">
    <fieldset class="register-card--shipping">
        <div class="shipping-title--register">
            <h2>Shipping Address</h2>
        </div>
        <div class="shipping-info--register">
            <p>Please provide an address to be used for shipping.</p>
        </div>
        <div class="shipping-address-1">
            <label for="shippingAddress1">Shipping Address</label>
            <input type="text" id="shippingAddress1" class="user-address-1--register" name="address1" maxlength="46" value="<?php if (isset($trimmed['address1'])) echo $trimmed['address1']; ?>">
        </div>
        <div class="shipping-address-2">
            <label for="shippingAddress2">Apartment / Suite / Other <span class="register-shipping-info">(optional)</span></label>
            <input type="text" id="shippingAddress2" class="user-address-2--register" name="address2" maxlength="46" value="<?php if (isset($trimmed['address2'])) echo $trimmed['address2']; ?>">
        </div>
        <div class="shipping-city">
            <label for="shippingCity">City</label>
            <input type="text" id="shippingCity" class="user-city--register" name="city" maxlength="50" value="<?php if (isset($trimmed['city'])) echo $trimmed['city']; ?>">
        </div>
        <div class="shipping-state-zip">
            <div class="shipping-state">
                <label for="shippingState">State</label>
                <input type="text" id="shippingState" class="user-state--register" name="state" maxlength="50" placeholder="NJ or New Jersey" value="<?php if (isset($trimmed['state'])) echo $trimmed['state']; ?>">
            </div>
            <div class="shipping-zip-code">
                <label for="shippingZipCode">Zip Code</label>
                <input type="text" id="shippingZipCode" class="user-zip--register" name="zip" maxlength="10" placeholder="12345 or 12345-6789" value="<?php if (isset($trimmed['zip'])) echo $trimmed['zip']; ?>">
            </div>
        </div>
        <div class="shipping-phone">
            <label for="shippingPhone">Phone <span class="register-phone-info">(optional, but may be used to assist delivery)</span></label>
            <input type="tel" id="shippingPhone" class="user-phone--register" name="phone_num" maxlength="15" value="<?php if (isset($trimmed['phone_num'])) echo $trimmed['phone_num']; ?>">
        </div>
        <div class="register-submit">
            <input type="submit" class="submit-button--register" name="submit" value="OK, LET'S GO!">
        </div>
    </fieldset>
</form>
<?php include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/footer.html'); ?>