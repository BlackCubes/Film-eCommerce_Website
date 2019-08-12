<?php

# profile.html (Register Users view selected options).
# Created on August 11, 2019.
# Created by Elias Gutierrez.

// *************************************** //
// ************ DOCUMENTATION ************ //

/*

*/

// ************ DOCUMENTATION ************ //
// *************************************** //

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/config.inc.php');

$page_title = 'Your Profile';

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/header.html');

if (!isset($_SESSION['id'])) {

    $url = BASE_URL . 'index.php';
    ob_end_clean();
    header("Location: $url");
    exit();

}

?>
<div class="container--profile-view">
    <div class="profile-title--profile-view">
        <h2>Your Profile</h2>
    </div>
    <div class="profile-option--profile-view">
        <div class="container-login-security--profile-view">
            <a href="#">
                <div class="login-security-title--profile-view">
                    <h4>Login & security</h4>
                </div>
                <div class="login-security-info--profile-view">
                    <p>Edit login, name, and mobile number, and delete account</p>
                </div>
            </a>
        </div>
        <div class="container-upload-image--profile-view">
            <a href="#">
                <div class="upload-image-title--profile-view">
                    <h4>Upload your image</h4>
                </div>
                <div class="upload-image-info--profile-view">
                    <p>Upload your profile picture</p>
                </div>
            </a>
        </div>
        <div class="container-address--profile-view">
            <a href="#">
                <div class="address-title--profile-view">
                    <h4>Your address</h4>
                </div>
                <div class="address-info--profile-view">
                    <p>Edit address for orders</p>
                </div>
            </a>
        </div>
        <div class="container-orders--profile-view">
            <a href="#">
                <div class="orders-title--product-view">
                    <h4>Your Orders</h4>
                </div>
                <div class="orders-info--product-view">
                    <p>Track, return, or buy things again</p>
                </div>
            </a>
        </div>
        <div class="container-wishlist--profile-view">
            <a href="#">
                <div class="wishlist-title--product-view">
                    <h4>Your Wishlists</h4>
                </div>
                <div class="wishlist-info--product-view">
                    <p>View, edit, or delete your wishlists</p>
                </div>
            </a>
        </div>
        <div class="container-payment--profile-view">
            <a href="#">
                <div class="payment-title--profile-view">
                    <h4>Payment options</h4>
                </div>
                <div class="payment-info--profile-view">
                    <p>Edit or add payment methods</p>
                </div>
            </a>
        </div>
    </div>
</div>
<?php include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/footer.html'); ?>