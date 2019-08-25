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

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/header.html');

if (!isset($_SESSION['id']) || isset($_SESSION['supplier_id'])) {
    $url = BASE_URL . 'index.php';
    ob_end_clean();
    header("Location: $url");
    exit();
}
?>
<form action="login_security.php" method="post" id="userOptionLoginSecurityCard">
    <fieldset class="option-login-security-card">
        <div class="option-login-security-title">
            <h2>Login & Security</h2>
        </div>
    </fieldset>
</form>
<?php include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/footer.html'); ?>