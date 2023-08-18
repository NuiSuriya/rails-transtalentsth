import { Application } from "@hotwired/stimulus"
import Swal from 'sweetalert2'

const application = Application.start()
// application.load(definitionsFromContext(context))

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application
window.Swal = Swal


export { application }
