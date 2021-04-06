var jQuery = require('jquery')

global.$ = global.jQuery = jQuery;
window.$ = window.jQuery = jQuery;

$(function(){
    $('#ask-button').click(function(){
        $('#ask-form').slideToggle(300);
        return false;
    });
});
