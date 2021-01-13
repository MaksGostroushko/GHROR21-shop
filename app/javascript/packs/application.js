

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import 'bootstrap'
import "jquery"
import 'popper.js'
import JQuery from 'jquery';
window.$ = window.JQuery = JQuery;
import "@rails/actiontext"

Rails.start()
Turbolinks.start()
ActiveStorage.start()
require("trix")
require("@rails/actiontext")