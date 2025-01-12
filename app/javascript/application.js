
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

import Rails from "@rails/ujs";
Rails.start();

import "@hotwired/turbo-rails";
import { Application } from "@hotwired/stimulus";
import { definitionsFromContext } from "@hotwired/stimulus-webpack-helpers";

const application = Application.start();

const context = require.context("./controllers", true, /\.js$/);
application.load(definitionsFromContext(context));

import DarkModeController from "./controllers/dark_mode_controller";
application.register("dark-mode", DarkModeController);

import AppointmentController from "./controllers/appointment_controller";
application.register("appointment", AppointmentController);