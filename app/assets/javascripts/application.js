// app/assets/javascripts/application.js
//= require rails-ujs
//= require_tree .

import Rails from "@rails/ujs";
Rails.start();
import "@hotwired/turbo-rails";
import "controllers";
import "./controllers/dropdown_controller"
import DarkModeController from "./controllers/dark_mode_controller"

const application = Application.start()
application.register("dark-mode", DarkModeController)