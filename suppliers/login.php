<?php

# login.php (Supplier's login).
# Created on June 14, 2019.
# Created by Elias Gutierrez.

// *************************************** //
// ************ DOCUMENTATION ************ //

/*

*/

// ************ DOCUMENTATION ************ //
// *************************************** //

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/config.inc.php');

$page_title = 'Suppliers Login';

include('includes/footer.html');

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    
    require(MYSQL);
}

?>

<!--

-->
<h1>Login</h1>
<p>Your browser must allow cookies in order to log in.</p>
<form action="login.php" method="post">
    <fieldset>
        <p><strong>Email Address:</strong> <input type="email" name="email" size="20" maxlength="80"></p>
        <p><strong>Password:</strong> <input type="password" name="pass" size="20"></p>
        <div align="center"><input type="submit" name="submit" value="Login"></div>
    </fieldset>
</form>

<?php include('includes/footer.html'); ?>