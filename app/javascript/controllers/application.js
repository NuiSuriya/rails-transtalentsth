import { Application } from "@hotwired/stimulus"


const application = Application.start()
// application.load(definitionsFromContext(context))

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
