<?php

# index.php (Users/Customers Shop for Films page).
# Created by Elias Gutierrez.
# Created on July 6, 2019.

// *************************************** //
// ************ DOCUMENTATION ************ //

/*

*/

// ************ DOCUMENTATION ************ //
// *************************************** //

require($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/config.inc.php');

$page_title = 'Films';

include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/header.html');

require(MYSQL);

?>
<div class="container">
    <div class="sidebar-a"></div>
    <div class="main-product"></div>
    <div class="sidebar-b"></div>
</div>
<?php include($_SERVER['DOCUMENT_ROOT'].'/FilmIndustry/eCommerce/includes/footer.html'); ?>