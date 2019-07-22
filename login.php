<?php

# login.php.
# Created on May 1, 2019.
# Created by Elias Gutierrez.

// This file is the login page for the user to login if registered.

// Include the configuration file which would be used to call some of the variables and the error management:
require('includes/config.inc.php');

// Add the proper page title:
$page_title = 'Login';

// Include the header file:
include('includes/header.html');

// The main Submit Conditional using the POST method:
if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    require(MYSQL); // DB connection. Variable defined in config.inc.php.

    // Validating the user's email. If the user's input for the email field in the HTML code section is not empty, then it is stored in a variable $e where it has a function mysqli_real_escape_string() by removing any special characters for security purposes. If it fails the if-conditional, then the variable $e is set to a boolean value of FALSE and creating an error message:
    if (!empty($_POST['email'])) {
        $e = mysqli_real_escape_string($dbc, $_POST['email']);
    } else {
        $e = FALSE;
        echo '<p class="error">You forgot to enter your email address!</p>';
    }

    // Validating the user's password. The logic is the same explanation as in line 23, but the difference is that the use of the function trim() on line 33 which removes any white spaces or other characters from the beginning and end of a string:
    if (!empty($_POST['pass'])) {
        $p = trim($_POST['pass']);
    } else {
        $p = FALSE;
        echo '<p class="error">You forgot to enter your password!</p>';
    }

    // This first if-statement inside the main Submit Conditional checks to see if both the email and password are TRUE, or if it is OK without any errors. If it does not pass this first conditional, then an error would show the user:
    if ($e && $p) {

        // Store the selected query in a variable $q, and store the result of the query statement in a variable $r and if this is not successful then trigger an error. On line 43, the column 'verify_code' in the table 'users' has to be NULL which means the user needs to activate their email after registering in order to set it to NULL:
        $q = "SELECT id, first_name, pass FROM users WHERE email='$e' AND verify_code IS NULL";
        $r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));

        // For this second if-statement, it checks to see if the previous selected query exists inside the system. If not, then an error is shown to the user telling them that either their email and password has not match in the system, or if they need to activate their account. The variable $r is stored in the function mysqli_num_rows where it returns the number of rows in a result set. If it equals to 0, then that user does not exist leading to an error. If it equals to 1, then the user does exist with a NULL activation code and it proceeds with the conditional. The symbol '@' suppresses error messages where any error messages that might be generated by that expression will be ignored. This is useful to not show the user any potential errors:
        if (@mysqli_num_rows($r) == 1) {

            // This code matches the database values into local variables $user_id, $first_name, and $pass. This is done by first using the function list() which assigns the local variables as if they were an array. The function mysqli_fetch_array() fetches a result row (for Procedural Programming) as a numeric array where the result row is the variable $r, and the numeric array is the value MYSQLI_NUM (using MYSQLI_NUM gives you numbered indices). It then returns an array that corresponds the fetched row and moves the internal data pointer ahead. Combing the two gives the result: $user_id[0] = id, $first_name[1] = first_name, and $pass[2] = pass:
            list($user_id, $first_name, $pass) = mysqli_fetch_array($r, MYSQLI_NUM);

            // Freeing the resulted memory of the query. This is for security purposes since it is no longer needed. For Procedural Programming, the inner argument is used:
            mysqli_free_result($r);

            // For this third if-statement, the conditional checks the user's input password matches the stored password in the database. Since the stored password was hashed based on the function password_hash() on line 60 in the file register.php when the user was registering, the function password_verify() knows the random salt that was chosen by password_hash(). In technicality, it combines the algorithm parameteres, random salt, and hash output into an output string that can be parsed to recover them individually. If this conditional does not pass, then an error message is shown to the attempted login user:
            if (password_verify($p, $pass)) {

                // Once the user has succeeded on the three conditionals, then the user is officially logged in by storing their info in sessions. Once this is done is where the database connection is closed since it is no longer needed:
                $_SESSION['id'] = $user_id;
                $_SESSION['first_name'] = $first_name;
                mysqli_close($dbc);

                // Redirecting the user to the homepage after logging in:
                $url = BASE_URL . 'index.php';
                ob_end_clean();
                header("Location: $url");
                exit();

            } else {

                echo '<p class="error">Either the email address and password entered do not match those on file, or you have not yet activated your account.</p>';

            }

        } else { // No match was made in the system.

            echo '<p class="error">Either the email address and password entered do not match those on file, or you have not yet activated your account.</p>';

        }

    } else { // If everything was not OK.
        echo '<p class="error">Please try again</p>';
    }

    mysqli_close($dbc); // Closing the database connection.

} // End of Submit Conditional.
?>

<!--

    Making the login form as a POST method.

    For this HTML form, the user is shown that they need to accept cookies in order to access logged-in user pages.

    In the fieldset of inputting the email address and password, it is not made sticky. That is why there is no 'value' attribute.

-->
<p>Your browser must allow cookies in order to log in.</p>
<form action="login.php" method="post">
    <fieldset>
        <div class="sign-in-title">
            <h2>Sign In</h2>
        </div>
        <div class="sign-in-email">
            <label>Email address</label>
            <input type="email" name="email" maxlength="80">
        </div>
        <div class="sign-in-pass">
            <label>Password</label>
            <input type="password" name="pass" maxlength="255">
        </div>
        <div class="sign-in-submit">
            <input type="submit" name="submit" value="SIGN IN">
        </div>
    </fieldset>
    <p><small>Seller? Sign in <a href="suppliers/login.php">here</a>.</small></p>
</form>

<?php include('includes/footer.html'); // Include the footer file. ?>