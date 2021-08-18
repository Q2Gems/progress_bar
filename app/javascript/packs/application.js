// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

//import 'jquery'
//require("bootstrap")
import 'bootstrap'
import '../stylesheets/application'
import '../stylesheets/progress'

Rails.start()
Turbolinks.start()
ActiveStorage.start()


$(function(){
    console.log("It works on each visit!")
    $('input').on('click', function(){
        var valeur = 0;
        $('input:checked').each(function(){
           if ( $(this).attr('value') > valeur )
           {
               valeur =  $(this).attr('value');
           }
        });
        
        $('.progress-bar').css('width', valeur+'%').attr('aria-valuenow', valeur);

        
    });

});
