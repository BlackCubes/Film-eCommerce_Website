<?php

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/config.inc.php');

$page_title = 'Register';

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/suppliers/includes/header.html');

?>
<form action="register.php" method="post" id="registerSupplierCard2">
    <fieldset class="register-card-2--supplier">
        <div class="supplier-shipping-title--register">
            <h2>Shipping Address</h2>
        </div>
        <div class="shipping-info--register">
            <p>Please provide an address as it will be used to give your products to customers.</p>
        </div>
        <div class="shipping-address-1--register">
            <label for="registerShippingAddress1">Shipping Address</label>
            <input type="text" id="registerShippingAddress1" class="supplier-address-1--register" maxlength="46" value="<?php if (isset($trimmed['address1'])) echo $trimmed['address1']; ?>">
        </div>
        <div class="shipping-address-2--register">
            <label for="registerShippingAddress2">Building / Suite / Floor / P.O. Box / Apt <span class="register-shipping-info">(optional)</span></label>
            <input type="text" id="registerShippingAddress2" class="supplier-address-2--register" name="address2" maxlength="46" value="<?php if (isset($trimmed['address2'])) echo $trimmed['address2']; ?>">
        </div>
        <div class="shipping-city--register">
            <label for="registerShippingCity">City</label>
            <input type="text" id="registerShippingCity" class="supplier-city--register" name="city" maxlength="50" value="<?php if (isset($trimmed['city'])) echo $trimmed['city']; ?>">
        </div>
        <div class="shipping-state-zip--register">
            <div class="shipping-state--register">
                <label for="registerShippingState">State</label>
                <input type="text" id="registerShippingState" class="supplier-state--register" name="state" maxlength="50" placeholder="NY or New York" value="<?php if (isset($trimmed['state'])) echo $trimmed['state']; ?>">
            </div>
            <div class="shipping-zip-code--register">
                <label for="registerShippingZipCode">Zip Code</label>
                <input type="text" id="registerShippingZipCode" class="supplier-zip--register" name="zip" maxlength="10" placeholder="12345 or 12345-6789" value="<?php if (isset($trimmed['zip'])) echo $trimmed['zip']; ?>">
            </div>
        </div>
        <div class="shipping-phone--register">
            <label for="registerShippingPhone">Phone <span class="register-phone-info">(required to assist delivery to customers and shipping providers)</span></label>
            <input type="tel" id="registerShippingPhone" class="supplier-phone--register" name="phone_num" placeholder="123-456-7890" maxlength="15" value="<?php if (isset($trimmed['phone_num'])) echo $trimmed['phone_num']; ?>">
        </div>
        <div class="register-submit">
            <input type="submit" class="submit-button--register" name="submit" value="LET'S SELL!">
        </div>
    </fieldset>
</form>
<?php include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/suppliers/includes/footer.html'); ?>