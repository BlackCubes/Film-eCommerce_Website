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

    if (!empty($_POST['email'])) {
        $e = mysqli_real_escape_string($dbc, $_POST['email']);
    } else {
        $e = FALSE;
        echo '<p class="error">You forgot to enter your email address!</p>';
    }

    if (!empty($_POST['pass'])) {
        $p = trim($_POST['pass']);
    } else {
        $p = FALSE;
        echo '<p class="error">You forgot to enter your password!</p>';
    }

    if ($e && $p) {

        $q = "SELECT id, pass FROM suppliers WHERE email='$e' AND verify_code IS NULL";
        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

        if (@mysqli_num_rows($r) == 1) {
            
        }

    }
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