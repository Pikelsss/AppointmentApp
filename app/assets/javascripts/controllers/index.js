import { application } from "./application";

// Import all Stimulus controllers and register them
import controllers from "./**/*_controller.js";
controllers.forEach((controller) => {
  application.register(controller.name, controller.module.default);
});
