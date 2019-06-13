<?php

# register.php (Suppliers Registration).
# Created June 12, 2019.
# Created by Elias Gutierrez.

// *************************************** //
// ************ DOCUMENTATION ************ //

/*

*/

// ************ DOCUMENTATION ************ //
// *************************************** //

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/config.inc.php');

$page_title = 'Suppliers Registration';

include('includes/header.html');

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    require(MYSQL);

    $trimmed = array_map('trim', $_POST);

    $ln = $cn = $pn = $e = $p = $a1 = $c = $z = $s = $ctry = FALSE;

    if (preg_match('/^[A-Z \'.-]{2,150}$/i', $trimmed['legal_name'])) {
        $ln = mysqli_real_escape_string($dbc, $trimmed['legal_name']);
    } else {
        echo '<p class="error">Please enter your legal name!</p>';
    }

    if (preg_match('/^[A-Z \'.-]{2,55}$/i', $trimmed['company_name'])) {
        $cn = mysqli_real_escape_string($dbc, $trimmed['company_name']);
    } else {
        echo '<p class="error">Please enter the name of your company!</p>';
    }

    if (preg_match('/\b(?:(?:https?|ftp):\/\/|www\.)[-a-z0-9+&@#\/%?=~_|!:,.;]*[-a-z0-9+&@#\/%=~_|]/i', $trimmed['website_url'])) {
        $wu = mysqli_real_escape_string($dbc, $trimmed['website_url']);
    } elseif (empty($trimmed['website_url'])) {
        $wu = mysqli_real_escape_string($dbc, $trimmed['website_url']);
    } else {
        echo '<p class="error">Invalid URL!</p>';
    }

    if (preg_match('/^[0-9]{3}-[0-9]{3}-[0-9]{4}$/', $trimmed['phone_num'])) {
        $pn = mysqli_real_escape_string($dbc, $trimmed['phone_num']);
    } elseif (empty($trimmed['phone_num'])) {
        $pn = mysqli_real_escape_string($dbc, $trimmed['phone_num']);
    } else {
        echo '<p class="error">Please enter a valid phone number!</p>';
    }

    if (filter_var($trimmed['email'], FILTER_VALIDATE_EMAIL)) {
        $e = mysqli_real_escape_string($dbc, $trimmed['email']);
    } else {
        echo '<p class="error">Please enter a valid email address!</p>';
    }

    if (strlen($trimmed['password1']) >= 10) {
        if ($trimmed['password1'] == $trimmed['password2']) {
            $p = password_hash($trimmed['password1'], PASSWORD_DEFAULT);
        } else {
            echo '<p class="error">Your password did not match the confirmed password!</p>';;
        }
    } else {
        echo '<p class="error">Please enter a valid password!</p>';
    }

    if (preg_match('/^[-a-z0-9 ,#\'\/.]{3,46}$/', $trimmed['address1'])) {
        $a1 = mysqli_real_escape_string($dbc, $trimmed['address1']);
    } else {
        echo '<p class="error">Please enter a valid address!</p>';
    }

}

?>

<h1>Supplier's Registration</h1>
<form action="register.php" method="post">
    <fieldset>
        <p><strong>Legal Name:</strong> <input type="text" name="legal_name" size="30" maxlength="150" value="<?php if (isset($trimmed['legal_name'])) echo $trimmed['legal_name']; ?>"></p>
        <p><strong>Company Name:</strong> <input type="text" name="company_name" size="30" maxlength="55" value="<?php if (isset($trimmed['company_name'])) echo $trimmed['company_name']; ?>"><small>(Required)</small></p>
        <p><strong>Website URL:</strong> <input type="url" name="website_url" size="20" value="<?php if (isset($trimmed['website_url'])) echo $trimmed['website_url']; ?>"><small>(Optional)</small></p>
        <p><strong>Phone Number:</strong> <input type="tel" name="phone_num" placeholder="123-456-7890" size="15" maxlength="15" value="<?php if (isset($trimmed['phone_num'])) echo $trimmed['phone_num']; ?>"><small>(Required. Used to assist delivery and customers)</small></p>
        <p><strong>Email:</strong> <input type="email" name="email" size="30" maxlength="80" value="<?php if (isset($trimmed['email'])) echo $trimmed['email']; ?>"></p>
        <p><strong>Password:</strong> <input type="password" name="password1" size="20" value="<?php if (isset($trimmed['password1'])) echo $trimmed['password1']; ?>"><small>(At least 10 characters long)</small></p>
        <p><strong>Confirm Password:</strong> <input type="password" name="password2" size="20" value="<?php if (isset($trimmed['password2'])) echo $trimmed['password2']; ?>"></p>
        <p><strong>Address 1:</strong> <input type="text" name="address1" size="30" maxlength="46" value="<?php if (isset($trimmed['address1'])) echo $trimmed['address1']; ?>"></p>
        <p><strong>Address 2:</strong> <input type="text" name="address2" size="30" maxlength="46" value="<?php if (isset($trimmed['address2'])) echo $trimmed['address2']; ?>"><small>(Optional)</small></p>
        <p><strong>City:</strong> <input type="text" name="city" size="20" maxlength="50" value="<?php if (isset($trimmed['city'])) echo $trimmed['city']; ?>"></p>
        <p><strong>Zip:</strong> <input type="text" name="zip" placeholder="'12345' or '12345-6789'" size="10" maxlength="10" value="<?php if (isset($trimmed['zip'])) echo $trimmed['zip']; ?>"></p>
        <p><strong>State:</strong> <input type="text" name="state" size="20" maxlength="50" value="<?php if (isset($trimmed['state'])) echo $trimmed['state']; ?>"></p>
        <p><strong>Country:</strong> <input type="text" name="country" size="15" maxlength="27" value="<?php if (isset($trimmed['country'])) echo $trimmed['country']; ?>"></p>
        <div align="center"><input type="submit" name="submit" value="Register"></div>
    </fieldset>
</form>

<?php include('includes/footer.html'); ?>