// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import { vh, vhOnResize} from "../helpers/vh"
// import { previewImageOnFileSelect, displayPreview } from "../helpers/previewImage"
import { minicardsAnimation } from "../helpers/minicardsAnimation"
import { featurettesAnimation } from "../helpers/featurettesAnimation"
import { starRating } from "../plugins/starRating"
import { reviewToggle } from "../helpers/homepageModal"

vh()
vhOnResize()
starRating()
reviewToggle()
minicardsAnimation();
featurettesAnimation();
Rails.start()
Turbolinks.start()
ActiveStorage.start()


import "controllers"
import "bootstrap"
