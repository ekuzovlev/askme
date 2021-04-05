require("@rails/ujs").start()

import '../styles/application'
const images = require.context('../images', true)

$(function(){
    $('#ask-button').click(function(){
        $('#ask-form').slideToggle(300);
        return false;
    });
});