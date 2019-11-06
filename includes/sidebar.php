<?php

# sidebar.php (File to show the Sidebar on Desktop or Mobile Responsive).
# Created on November 6, 2019.
# Created by Elias Gutierrez.

// ************************************************ //
// ************ DEPARTMENT NAME CHANGE ************ //

function departmentNameChange($department) {
    $name_change = '';
    if ($department === 'films') {
        $name_change = 'Movies';
    } else {
        $name_change = 'TV';
    }
    return $name_change;
}

// ************ DEPARTMENT NAME CHANGE ************ //
// ************************************************ //


// ***************************************** //
// ************ DESKTOP SIDEBAR ************ //



// ************ DESKTOP SIDEBAR ************ //
// ***************************************** //


// **************************************** //
// ************ MOBILE SIDEBAR ************ //



// ************ MOBILE SIDEBAR ************ //
// **************************************** //

?>