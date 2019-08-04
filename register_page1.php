<?php

# register.php.
# Created on April 30, 2019.
# Created by Elias Gutierrez.

// This file is the registration page for the website.

// Include the configuration script (this would be used to call some of the variables and the error management):
require('includes/config.inc.php');

// Including the page title:
$page_title = 'Registration';

// Include the header:
include('includes/header.html');

if (isset($_SESSION['id'])) {
    ob_end_clean();
    header("Location: http://localhost/FilmIndustry/eCommerce/index.php");
    exit();
}

if (!isset($_SESSION)) {
    session_start();
}

/*if ($_SERVER['REQUEST_METHOD'] == 'POST') { // Handling the form after the user submits the form.

    // Getting the database connection:
    require(MYSQL);

    // Trimming the incoming data from potential malicious users by using an array_map which assigns every element from $_POST to the function trim(). This is assigned to the array $trimmed:
    $trimmed = array_map('trim', $_POST);

    // Assume any invalid variables that were not used after submitting the form (later, if TRUE then this would not be a problem):
    $fn = $ln = $e = $p = FALSE;

    // Checking for a first name by using regular expressions based on assumptions on what a first name would contain. This is done by using the delimiters first (/ /). Inside the delimiters have different values for a first name such as an uppercase and lowercase, a space, an apostraphe, a period, and a dash. The modifier 'i' enables A-Z case-insensitive, and the apostraphe is escaped by '\'. The range for the length of such a first name is from 2 to 20 characters where 20 is the max length set from VARCHAR in the database. The caret '^' and dollar sign '$' indicates the beginning and end of a string, respectively. This is assigned to preg_match function which performs a regular expression match from the first argument to the second argument (which is the user's first name). If it passes, then the variable $fn gets assigned to the user's first name while escaping any special characters from mysqli_real_escape_string. If it does not pass the if statement, then the user would see an error message:
    if (preg_match('/^[A-Z \'.-]{2,20}$/i', $trimmed['first_name'])) {
        $fn = mysqli_real_escape_string($dbc, $trimmed['first_name']);
    } else {
        echo '<p class="error">Please enter your first name!</p>';
    }

    // Checking for a last name. This is the same as before, but this time with a length of 2 to 40 where 40 is the max length that was set from VARCHAR in the database. If the user does not provide a last name, an error would occur:
    if (preg_match('/^[A-Z \'.-]{2,40}$/i', $trimmed['last_name'])) {
        $ln = mysqli_real_escape_string($dbc, $trimmed['last_name']);
    } else {
        echo '<p class="error">Please enter your last name!</p>';
    }

    // Checking for an email address by passing it to filter_var function which filters a variable with the specified filter. In this case, the variable is the user's input of their email, and the specified filter is the FILTER_VALIDATE_EMAIL which is a filter that validates an email address. If the user does not provide an email address or its not a valid one, then an error occurs:
    if (filter_var($trimmed['email'], FILTER_VALIDATE_EMAIL)) {
        $e = mysqli_real_escape_string($dbc, $trimmed['email']);
    } else {
        echo '<p class="error">Please enter a valid email address!</p>';
    }

    // Checking for a password and matching against the confirmed password. This is done by first checking if the length of the password is greater than or equal to 10, and this is also done by using strlen function which gets the string length in integer value. If this passes, then it goes to the second if-statement. If it does not pass the first if-statement due to not inputting a password or proper length, an error occurs. The second if-statement checks if the confirmed password matches the first password where the confirmed password is 'password2' while 'password1' is the user's first input password value. If it does not pass the second if-statement due to not confirming both passwords, then an error occurs. Once the second if-statement is passed, the first input of the password (password1) is hashed in the function password_hash which creates a new password hash using a strong one-way hashing algorithm. This one-way hashing algorithm would be PASSWORD_DEFAULT which stores the result in a database column of 255 characters, and this is so since the column 'pass' in the table 'users' has a VARCHAR of 255 characters in the filmecommerce database:
    if (strlen($trimmed['password1']) >= 10) {
        if ($trimmed['password1'] == $trimmed['password2']) {
            $p = password_hash($trimmed['password1'], PASSWORD_DEFAULT);
        } else {
            echo '<p class="error">Your password did not match the confirmed password!</p>';
        }
    } else {
        echo '<p class="error">Please enter a valid password!</p>';
    }

    // Checking for the user's phone number where the user has the option to input their phone numbers. The regular expression in the if-conditional checks to see if the user has correctly input the number where the character class [0-9] means any digit, and the characters {3} and {4} means exactly 3 or 4 occurances. The elseif-conditional checks to see if the user input in the HTML field blank by using the function empty(), and if they did then store that empty string in the database. If the user does not pass the regular expression nor left an empty field, then it returns an error in the else-statement telling the user to enter a valid phone number:
    if (preg_match('/^[0-9]{3}-[0-9]{3}-[0-9]{4}$/', $trimmed['phone_num'])) {
        $pn = mysqli_real_escape_string($dbc, $trimmed['phone_num']);
    } elseif (empty($trimmed['phone_num'])) {
        $pn = mysqli_real_escape_string($dbc, $trimmed['phone_num']);
    } else {
        echo '<p class="error">Please enter a valid phone number!</p>';
    }

    if ($fn && $ln && $e && $p) { // If everything turned out OK.

        // For this next code, it checks if the user's email address is available, or already in the system ('filmecommerce' database in the table of 'users'). The variable $q uses SQL statements that selects the user's 'id' from the table 'users' by filtering the column 'email' which equals to the variable $e from the user's input. This checks for uniqueness. If the email address does exist, then an error would occur. If it does not, then the new user would be registered in the system. In the upcoming codes, you will see how this is done:
        $q = "SELECT id FROM users WHERE email='$e'";

        // After the query has been stored in the variable $q, then it is stored on the second argument in mysqli_query. The function mysqli_query performs a query against the database which means it is used to execute SQL queries, and for Procedural Programming the function uses the first argument as a link identifier returned by mysqli_connect which was stated in the created file mysqli_connect.php (the $dbc is that link identifier). If this mysqli_query fails, it goes to the OR statement where the function trigger_error creates a user-level error message:
        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

        // For this second if-statement, the variable $r is passed to the function mysqli_num_rows where it returns the number of rows in a result set. If it equals to 0, then the email address is unused where the user can then be registered. If it equals to 1, then there is a used email address in the database where it leads to an error:
        if (mysqli_num_rows($r) == 0) {

            // Creating a unique activation code. The activation code is the variable $a which would be stored in the column 'verify_code' from the table 'users' in the 'filmecommerce' database. The function uniqid() generates a unique identifier where the first argument rand() is a function that generates a random integer to help make it a more random value, and the second argument is set to TRUE telling the function uniqid() to allow more_entropy which would increase the result to be unique by expanding 13 characters to 23 characters. This is then passed to the function md5() which creates a returned hash of a string as a 32-hexadecimal number:
            $a = md5(uniqid(rand(), true));

            // Adding the user to the database:
            $q = "INSERT INTO users (email, pass, first_name, last_name, phone_num, verify_code, registration_date) VALUES ('$e', '$p', '$fn', '$ln', '$pn', '$a', NOW())";
            $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

            // For the third if-statement, the function mysqli_affected_rows() returns the number of affected rows from the previous query on line 84 (the variable $r). The argument it takes is required where it specifies the MySQL connection to use which in this case it is the variable $dbc created from the file mysqli_connect.php. For the returned value, an integer greater than 0 indicates the number of rows affected; 0 indicates that no records were affected; and -1 indicates that the query returned an error. If the function does not pass this if-statement by equaling to 1, then an error would occur which would be generated that the user would see on their browsers:
            if (mysqli_affected_rows($dbc) == 1) {

                // Sending the email to the registered user. This is done by first making the variable $body that contains the body string statement on line 90. Then, it is appended on line 91 where the user would be able to click on the activation link with BASE_URL created in the file config.inc.php, the file activate.php which would contain PHP code on removing the activation code, and with the query string. The query string contains a separator '?' from the URL path, and the query parameters are separated by the ampersand '&' which acts as a delimiter. The query parameters have key-value pairs where the key 'x' has a value of the user's email address where it is encoded from the function urlencode() so that it is safe to have in the URL, and the key 'y' has a value of the activation code stored in the variable $a. This link on line 91 would be used in the file activate.php as a GET method:
                $body = "Thank you for registering at the Film eCommerce website! To activate your account, please click on this link:\n\n";
                $body .= BASE_URL . 'activate.php?x=' . urlencode($e) . "&y=$a";

                // The function mail() contains the registered user's email address as the first argument, a subject title for the second argument, the message from the variable $body as the third argument, and a header as the fourth argument which is a 'From' from the admin's email address (in this case, it is mine. It could be the other admin created for the 'filmecommerce' database by the name of frank as stated in the file mysqli_connect.php):
                mail($trimmed['email'], 'Registration Confirmation', $body, 'From: gutierrezelias1991@gmail.com');

                // Finishing the page:
                echo '<h3>Thank you for registering! A confirmation email has been sent to your address. Please click on the link in that email in order to activate your account.</h3>';
                include('includes/footer.html'); // Including the HTML footer.
                exit(); // This function terminates the current script with no message.

            } else { // If the user could not be registered in the system.
                echo '<p class="error">You could not be registered due to a system error. We apologize for any inconvenience.</p>';
            }

        } else { // If an email address already exists in the system.
            echo '<p class="error">That email address has already been registered. If you have forgotten your password, please change it by clicking on Forgot Password when signing in.</p>';
        }

    } else { // If one of the variables failed when registering.
        echo '<p class="error">Please try again.</p>';
    }

    // Closing the database connection where for Procedural Programming the argument requires the link identifier returned by mysqli_connect() (in this case it is the variable $dbc):
    mysqli_close($dbc);

} // End of the main Submit conditional.*/
?>

<!-- Making the registration form as a POST method: -->
<form action="register_page2.php" method="post" id="registerUserCard1">
    <fieldset class="register-card">
        <div class="register-title">
            <h2>Create Account</h2>
        </div>
        <div class="register-name">
            <div class="first-name--register">
                <label for="registerFirstName">First Name</label>
                <input type="text" id="registerFirstName" class="user-first-name--new" name="first_name" maxlength="20" value="<?php if (isset($_SESSION['fn'])) echo $_SESSION['fn']; unset($_SESSION['fn']); ?>">
            </div>
            <div class="last-name--register">
                <label for="registerLastName">Last Name</label>
                <input type="text" id="registerLastName" class="user-last-name--new" name="last_name" maxlength="40" value="<?php if (isset($_SESSION['ln'])) echo $_SESSION['ln']; unset($_SESSION['ln']); ?>">
            </div>
        </div>
        <?php

        if (isset($_SESSION['fnErr'])) {
            echo '<div class="name-error"><p>' . $_SESSION['fnErr'] . '</p></div>';
            unset($_SESSION['fnErr']);
        }
        
        if (isset($_SESSION['lnErr'])) {
            echo '<div class="name-error"><p>' . $_SESSION['lnErr'] . '</p></div>';
            unset($_SESSION['lnErr']);
        }

        ?>
        <div class="register-email">
            <label for="registerEmail">Email</label>
            <input type="email" id="registerEmail" class="user-email--register" name="email" maxlength="80" value="<?php if (isset($_SESSION['email'])) echo $_SESSION['email']; unset($_SESSION['email']); ?>">
        </div>
        <?php if (isset($_SESSION['emailErr'])) echo '<div class="email-error"><p>' . $_SESSION['emailErr'] . '</p></div>';
        unset($_SESSION['emailErr']); ?>
        <div class="register-new-password">
            <label for="registerPassword">Password <span class="register-password-info">(at least 10 characters long)</span></label>
            <input type="password" id="registerPassword" class="user-new-pass--register" name="password1" maxlength="255">
        </div>
        <?php if (isset($_SESSION['passErr1'])) echo '<div class="pass-error"><p>' . $_SESSION['passErr1'] . '</p></div>';
        unset($_SESSION['passErr1']); ?>
        <div class="register-confirm-password">
            <label for="registerConfirmPassword">Confirm Password</label>
            <input type="password" id="registerConfirmPassword" class="user-confirm-pass--register" name="password2" maxlength="255">
        </div>
        <?php if (isset($_SESSION['passErr2'])) echo '<div class="pass-error"><p>' . $_SESSION['passErr2'] . '</p></div>';
        unset($_SESSION['passErr2']); ?>
        <div class="register-continue">
            <input type="submit" class="register-continue-button" name="continue" value="CONTINUE">
        </div>
        <?php if (isset($_SESSION['systemErr1'])) echo '<div class="system-error"><p>' . $_SESSION['systemErr1'] . '</p></div>';
        unset($_SESSION['systemErr1']);
        /*if (isset($_SESSION['systemErr2'])) echo '<p>' . $_SESSION['systemErr2'] . '</p></div>';
        unset($_SESSION['systemErr2']);*/ ?>
        <div class="register-sign-in-option">
            <p>Already have an account? <a href="/FilmIndustry/eCommerce/login.php">Sign in</a></p>
        </div>
        <div class="register-seller-option">
            <p>Want to sell your films? Register <a href="/FilmIndustry/eCommerce/suppliers/register.php">here</a></p>
        </div>
    </fieldset>
</form>
<?php include('includes/footer.html'); // Include the footer. ?>