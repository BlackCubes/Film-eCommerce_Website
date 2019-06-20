// Datalist with multiple selection (for add_products.php).
// Created by Elias Gutierrez.
// Created on June 20, 2019.

// *************************************** //
// ************ DOCUMENTATION ************ //

/*

*/

// ************ DOCUMENTATION ************ //
// *************************************** //

$(document).ready(function() {

    var datalist = $('datalist');
    var options = $('datalist option');
    var optionsarray = $().map(options, function(option) {
        return option.value;
    });
    var input = $('input[list]');
    var inputcommas = (input.val().match(/,/g)||[]).length;
    var separator = ',';

    function filldatalist(prefix) {
        if (input.val().indexOf(separator) > -1 && options.length > 0) {
            datalist.empty();
            for (i = 0; i < optionsarray.length; i++) {
                if (prefix.indexOf(optionsarray[i]) < 0) {
                    datalist.append('<option value="' + prefix + optionsarray[i] + '">');
                }
            }
        }
    }

    input.bind("change paste keyup", function() {
        var inputtrim = input.val().replace(/^\s+|\s+$/g, "");
        var currentcomas = (input.val().match(/,/g)||[]).length;
        if (inputtrim != input.val()) {
            if (inputcommas != currentcomas) {
                var lsIndex = inputtrim.lastIndexOf(separator);
                var str = (lsIndex != -1) ? inputtrim.substr(0, lsIndex) + ", " : "";
                filldatalist(str);
                inputcommas = currentcomas;
            }
            input.val(inputtrim);
        }
    });

});