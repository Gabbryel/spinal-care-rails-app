// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import { vh, vhOnResize} from "../helpers/vh"
import Rails from "@rails/ujs"
// import Turbolinks from "turbolinks"
import "@hotwired/turbo-rails"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "controllers"
import "bootstrap"

vh()
vhOnResize()

Rails.start()
// Turbolinks.start()
ActiveStorage.start()

require("trix")
require("@rails/actiontext")