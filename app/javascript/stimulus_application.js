import { Application } from "@hotwired/stimulus"

const application = Application.start()

const context = require.context("./controllers", true, /\.js$/)
application.load(definitionsFromContext(context))

function definitionsFromContext(context) {
  return context.keys().map(context)
}

export { application }
