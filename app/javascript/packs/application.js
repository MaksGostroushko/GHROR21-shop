

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import 'bootstrap'
import "jquery"
import 'popper.js'
import "easy-autocomplete"
import JQuery from 'jquery';
window.$ = window.JQuery = JQuery;
import "@rails/actiontext"

Rails.start()

document.addEventListener("turbolinks:load", function() {
    $(function () {
        $('[data-toggle="tooltip"]').tooltip()
        $('[data-toggle="popover"]').popover()
    })
})
Turbolinks.start()
ActiveStorage.start()
require("trix")
require("@rails/actiontext")

document.addEventListener("turbolinks:load", function() {

    var options = {
        url: function(phrase) {
            return "/products";
        },
        getValue: "name",
    };

    $('*[data-behavior="autocomplete"]').easyAutocomplete(options);
});